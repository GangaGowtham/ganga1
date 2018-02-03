
<html>
<body>
<h2>Hello World!</h2>
<% 
if(request.getMethod()=="POST")
{
int a=Integer.parseInt(request.getParameter(("no1")));
int b=Integer.parseInt(request.getParameter(("no2")));
int c=a+b;
%> 

<input type="lable" value="<%=c%>"/>
<% }
%>


<form action="/sunil/index.jsp" method="post">
<input type="number" name="no1" />
<input type="number" name="no2" />
<input type="submit" value="sum"/>

</form>
</body>
</html>
