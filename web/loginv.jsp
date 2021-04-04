
<%
    
  
    String username = request.getParameter("uname");
    String password = request.getParameter("password");
    
if(username.equals("evans")){
    if(password.equals("1234")){
        
        String redirect = "home.jsp";
        response.sendRedirect(redirect);
        
        }else{
        String redirect = "wrong_pass.jsp";
        response.sendRedirect(redirect);
        }  
}else{    
    String redirect = "wrong_user.jsp";
    response.sendRedirect(redirect);
    //out.println("Username and password do not match");
}



    
              
   

 
//out.println("Username and password do not match");
%>