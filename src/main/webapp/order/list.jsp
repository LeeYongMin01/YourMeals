<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><title>OrderList</title></head>
<body><h1>�ֹ��׸���</h1>
�ֹ��׸� ���
<table border='1'>
<thead><tr><th>�ֹ��׸�</th><th>��ǰ��</th><th>����</th><th>������</th><th>�����</th></tr></thead>
<tbody>
<c:forEach items="${list}" var="o">
<tr>
<td>${o.orderListNo}</td>
<td>${o.orderProduct.content}</td>
<td>${o.price}</td>
<td>${o.discount}</td>
<td>${o.orderNo.userNo.name}</td></tr>
</c:forEach>
</tbody>
</table>
</body>
</html>