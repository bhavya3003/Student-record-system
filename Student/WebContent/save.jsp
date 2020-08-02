<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="org.hibernate.SessionFactory , org.hibernate.Transaction , org.hibernate.cfg.Configuration , org.hibernate.classic.Session , student.StudentRecord"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String grade=request.getParameter("grade");
int phy=Integer.parseInt(request.getParameter("phy"));
int chem=Integer.parseInt(request.getParameter("chem"));
int maths=Integer.parseInt(request.getParameter("maths"));
int total=Integer.parseInt(request.getParameter("total"));


Configuration cfg=new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory sf=cfg.buildSessionFactory();
Session session2=sf.openSession();
Transaction tx=session2.beginTransaction();

StudentRecord st=new StudentRecord();
st.setName(name);
st.setEmail(email);
st.setGrade(grade);
st.setPhy(phy);
st.setChem(chem);
st.setMaths(maths);
st.setTotal(total);

session2.persist(st);
tx.commit();
session2.close();


%>
<body align="center">
<p align="center" style="color: green;"><h2>Student Record Saved.....</h2></p>
<br>
<a align="center" href="index.html">Go back </a>
</body>