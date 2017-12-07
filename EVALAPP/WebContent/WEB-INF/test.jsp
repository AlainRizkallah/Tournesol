<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>page blanche ééé</p>
<% 
            String attribut = (String) request.getAttribute("test");
            out.println( attribut );
           
            String parametre = request.getParameter( "auteur" );
            out.println( parametre );
            %>
            
            <p>
            Récupération du bean :
            <%	
	    fr.isep.eval.beans.PremierBean notreBean = (fr.isep.eval.beans.PremierBean) request.getAttribute("alain");
	    out.println( notreBean.getPrenom() );
            out.println( notreBean.getNom() );
            %>
        </p>
        
</body>
</html>