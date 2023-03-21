<%@ page import="bj.highfive.usermanagement.dao.UserDAO"%>
<jsp:useBean id="u" class="bj.highfive.usermanagement.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%

int i = UserDAO.update(u);
response.sendRedirect("viewusers.jsp");

%>