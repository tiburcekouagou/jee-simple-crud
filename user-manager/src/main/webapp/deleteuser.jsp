<%@ page import="bj.highfive.usermanagement.dao.UserDAO"%>
<jsp:useBean id="u" class="bj.highfive.usermanagement.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%

UserDAO.delete(u);
response.sendRedirect("viewusers.jsp");

%>