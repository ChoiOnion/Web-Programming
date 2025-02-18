<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>GCD 프로그램</title>
	</head>
	<body>
		<%!
		int gcd(int num1, int num2){
			int temp, n;
			
			if(num1<num2){
				temp = num1;
				num1 = num2;
				num2 = temp;
			}
			
			while(num2!=0){
				n = num1%num2;
				num1 = num2;
				num2 = n;
			}
			return num1;
		}
		%>
		<%@ page import="java.util.Date" %>
		GCD 프로그램
		<hr>
		<%! int count=0; %>
		<% 
			int num1 = 15;
			int num2 = 5;
		%>
		<% out.print("NUM1 : "); %>
		<%= num1 %>
		<br>
		<% out.print("NUM2 : "); %>
		<%= num2 %>
		<br>
		<% out.print("GCD("+num1+", "+num2+") : "); %>

		<%out.print(gcd(num1,num2)); %>
		<hr>
		<% Date date = new Date();
  		int hours = date.getHours();
  		int minutes = date.getMinutes();
  		if(hours>12){
  			out.print("오후 "+(hours-12)+"시 "+minutes+"분 ");
  		}else{
  			out.print("오전 "+hours+"시 "+minutes+"분 ");
  		}
  		%>
		<%count=count+1; %>
		<%out.print("현재 "+count+"번 실행되었습니다."); %>
	</body>
</html>