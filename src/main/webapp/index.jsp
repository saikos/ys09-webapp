<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="gr.uoa.di.ys09.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="static/css/bootstrap.min.css">  
        <title>App Home</title>
    </head>

    <body>

    	<div>
    		<img src="static/img/logo.png">
    	</div>

    	<h1>
        	Καλώς ήλθατε!
        </h1>

        <h2>
        	Configuration
    	</h2>
    	<div>
    		<%
    		Properties props = Configuration.getInstance().getProperties();
    		for(String key : props.stringPropertyNames()) { 
    		%>
    			<div>
    				<%= key %> : <%= props.getProperty(key) %>
				</div>
    		<% } %>
    	</div>


    	<h2>
    		Calculation
    	</h2>

        <div>
        	<form method="get">
        		<input type="text" name="numbers" size="48" placeholder="Εισάγετε ακεραίους χωρισμένους με κόμμα">
        		<button type="submit">Υπολογισμός</button>
    		</form>
    	</div>

    	<%
    	String inputNumbers = request.getParameter("numbers");
    	if (inputNumbers != null) {    	
    		Numbers numbers = Numbers.parse(inputNumbers);
    	%>
	    	<hr>
	    	<div>
	    	Πληθάριθμος: <%= numbers.count() %>
	    	</div>

	    	<div>
	    	Άθροισμα: <%= numbers.sum() %>
	    	</div>

    	<%
    	}
    	%>

    </body>
</html>
