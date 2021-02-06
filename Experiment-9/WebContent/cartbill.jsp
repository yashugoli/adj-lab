<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%!
int total;

Enumeration en;
String televisionamt,laptopamt,acamt,mobileamt,name,value;
%>
<body>
<% 
total = 0; 

en = session.getAttributeNames();
televisionamt = ""; 
laptopamt = "" ;
acamt = "" ;
mobileamt = "" ;

while(en.hasMoreElements()){
	name = en.nextElement().toString();
	value = session.getAttribute(name).toString();
	total += Integer.parseInt(value);
}
if(session.getAttribute("televisionamt")!= null){
	televisionamt = session.getAttribute("televisionamt").toString();
}
if(session.getAttribute("acamt") != null) {
	acamt = session.getAttribute("acamt").toString();
}
if(session.getAttribute("laptopamt") != null) {
	laptopamt = session.getAttribute("laptopamt").toString();
}
if(session.getAttribute("mobileamt") != null) {
	mobileamt = session.getAttribute("mobileamt").toString();
}
session.invalidate(); 
%>
<table>
<tr><td>Television:</td><td><%=televisionamt %></td></tr>
<tr><td>AirConditioner:</td><td><%=acamt %></td></tr>
<tr><td>Laptop:</td><td><%=laptopamt %> </td></tr>
<tr><td>Mobile:</td><td><%=mobileamt %></td></tr>
<tr><td>Total amount:</td><td><%=total %></td></tr>
</table>
</body>
</html>