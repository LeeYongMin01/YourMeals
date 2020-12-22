package com.oijoa.web;

import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.oijoa.domain.Product;
import com.oijoa.service.ProductService;
import net.coobird.thumbnailator.ThumbnailParameter;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
import net.coobird.thumbnailator.name.Rename;

@Controller
@RequestMapping("/product")
public class ProductController {

  @Autowired
  ProductService productService;

  @Autowired
  ServletContext servletContext;

  @RequestMapping("list")
  public ModelAndView list(HttpServletRequest request, HttpServletResponse response)
      throws Exception {

    ModelAndView mv = new ModelAndView();
    List<Product> list = productService.list(null);
    mv.addObject("list", list);
    mv.setViewName("/product/list.jsp");
    return mv;
  }

  @RequestMapping("add")
  public String add(String title, String content, int price, int stock, int discount,
      Part photoFile) throws Exception {
    Product product = new Product();
    product.setTitle(title);
    product.setContent(content);
    product.setDiscount(discount);
    product.setPrice(price);
    product.setStock(stock);


    String filename = UUID.randomUUID().toString();
    String saveFilePath = servletContext.getRealPath("/upload/" + filename);
    photoFile.write(saveFilePath);

    product.setPhoto(filename);
    generatePhotoThumbnail(saveFilePath);


    productService.add(product);
    return "redirect:list";
  }

  @RequestMapping("form")
  public ModelAndView form() throws Exception {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("/product/form.jsp");
    return mv;
  }

  private void generatePhotoThumbnail(String saveFilePath) {
    try {
      Thumbnails.of(saveFilePath).size(30, 30).outputFormat("jpg").crop(Positions.CENTER)
          .toFiles(new Rename() {
            @Override
            public String apply(String name, ThumbnailParameter param) {
              return name + "_30x30";
            }
          });

      Thumbnails.of(saveFilePath).size(200, 200).outputFormat("jpg").crop(Positions.CENTER)
          .toFiles(new Rename() {
            @Override
            public String apply(String name, ThumbnailParameter param) {
              return name + "_200x200";
            }
          });
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

}
