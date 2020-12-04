package com.oijoa.service;

import java.util.List;

import com.oijoa.dao.CommentDao;
import com.oijoa.domain.Comment;

public class DefaultCommentService implements CommentService {

  CommentDao commentDao;

  public DefaultCommentService(CommentDao commentDao) {
    this.commentDao = commentDao;
  }

    @Override
    public int deleteByRecipeNo(int recipeNo) throws Exception {
      return commentDao.deleteByRecipeNo(recipeNo);
    }
  
    @Override
    public int add(Comment comment) throws Exception {
      return commentDao.insert(comment);
    }
  
  @Override
  public List<Comment> list() throws Exception {
    return commentDao.findAll(null);
  }

  //  @Override
  //  public List<Order> list(String keyword) throws Exception {
  //    return orderDao.findAll(keyword);
  //  }
  //
  //  @Override
  //  public Board get(int no) throws Exception {
  //    Board board = boardDao.findByNo(no);
  //    if (board != null) {
  //      boardDao.updateViewCount(no);
  //    }
  //    return board;
  //  }
  //
  //  @Override
  //  public int update(Board board) throws Exception {
  //    return boardDao.update(board);
  //  }

}
