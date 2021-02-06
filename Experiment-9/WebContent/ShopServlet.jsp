<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%! 
String television,ac,laptop,mobile,televisioncost,accost,mobilecost,laptopcost;
int televisionamt=0,acamt=0,laptopamt=0,mobileamt=0;%>
<% 
//remove all jsp
television = request.getParameter("television"); 
ac = request.getParameter("ac") ;
laptop = request.getParameter("laptop"); 
mobile = request.getParameter("mobile");
televisioncost = request.getParameter("televisioncost");
accost = request.getParameter("accost");
laptopcost = request.getParameter("laptopcost"); 
mobilecost = request.getParameter("mobilecost"); 
%>
<body>

<%
if(television != null && !television.equals("")){
	televisionamt = Integer.parseInt(television)*Integer.parseInt(televisioncost);
	if(session.getAttribute("pencilamt") != null){
		televisionamt += Integer.parseInt(session.getAttribute("televisionamt").toString());
	}
	session.setAttribute("televisionamt", televisionamt + "");
}
if(ac != null && !ac.equals("")) {
	acamt = Integer.parseInt(ac) * Integer.parseInt(accost);
	if(session.getAttribute("bookamt") != null) {
		acamt = acamt + Integer.parseInt(session.getAttribute("acamt").toString());
	}
	session.setAttribute("acamt", acamt + ""); // when you add empty string to int it gets converted into string.
}
if(laptop != null && !laptop.equals("")) {
	laptopamt = Integer.parseInt(laptop) * Integer.parseInt(laptopcost);
	if(session.getAttribute("laptopamt") != null) {
		laptopamt = laptopamt + Integer.parseInt(session.getAttribute("laptopamt").toString());
	}
	session.setAttribute("laptopamt", laptopamt + "");
}
if(mobile != null && !mobile.equals("")) {
	mobileamt = Integer.parseInt(mobile) * Integer.parseInt(mobilecost);
	if(session.getAttribute("mobileamt") != null) {
		mobileamt = mobileamt + Integer.parseInt(session.getAttribute("mobileamt").toString());
	}
	session.setAttribute("mobileamt", mobileamt + "");
}
response.sendRedirect("./additem.html");
%>
</body>
</html>