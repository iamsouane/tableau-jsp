<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Random" %>

<%!
			int tab[] = new int[25];
			Random nombreAleatoire = new Random();
			
			public String genererTableau() {
				String str="";
				str += "<table border='1'><tr>";
				for(int i = 0; i < 25; i++) {
					str += "<td>"+ tab[i]+"</td>";
				}
				str += "</tr></table>";
				return str;
			}
			
			public String colorierTableau() {
				String str="";
				str += "<table border='1'><tr>";
				for(int i = 0; i < 25; i++) {
					if(tab[i] % 2 == 0) {
						str += "<td bgcolor='red'>"+ tab[i]+"</td>";	
					} else {
						str += "<td>"+ tab[i]+"</td>";
					}
				}
				str += "</tr></table>";
				return str;
			}
			
			public String genererMatrice() {
				String str="";
				int k = -1;
				str += "<table border='1'><tr>";
				for(int i = 0; i < 5; i++) {
					str += "<tr>";
					for(int j = 0; j < 5; j++) {
						k++;
						str += "<td>"+ tab[k]+"</td>";
					}
					str += "</tr>";
				}
				str += "</tr></table>";
				return str;
			}
%>

<%
	for(int i = 0; i < 25; i++) {
		tab[i] = nombreAleatoire.nextInt(100);
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Tableau aléatoire de 25 entiers</title>
	</head>
	<body>
		<p> <%= genererTableau()%> </p>
		<p> <%= colorierTableau()%> </p>
		<p> <%= genererMatrice()%> </p>
	</body>
</html>