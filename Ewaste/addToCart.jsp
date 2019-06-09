<html>
<body>
<%! String[] id; %>
<centre>Your Total price is:
<%
id=request.getParameterValues("id");
if(id !=null){
for(int i=0;i<id.length;i++){
int sum=id[i]+1;
}
out.println(sum);
}
else{
out.print( " You have not seleced anything");
}
</body>
</html>
