<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="student.StudentRecord , org.hibernate.Session , org.hibernate.SessionFactory , org.hibernate.cfg.Configuration"%>
<%
int roll_no=Integer.parseInt(request.getParameter("rollno"));
Configuration cfg=new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory sf=cfg.buildSessionFactory();
Session session2=sf.openSession();
StudentRecord st=(StudentRecord)session2.get(StudentRecord.class, roll_no);
if(st==null)
{
out.print("invalid email.....");	
}

%>
<h2>Your Record:</h2>
<table>
  <tr>
    <th>Name</th>
    <th>Email</th>
    <th>Physics</th>
    <th>Mathematics</th>
    <th>Chemistry</th>
    <th>Total</th>
    <th>Grade</th>
  </tr>
  <tr>
    <td><input type="text" value="<%=st.getName()%>"></td>
    <td><input type="text" value="<%=st.getEmail()%>"></td>
    <td><input type="text" value="<%=st.getPhy()%>"></td>
    <td><input type="text" value="<%=st.getMaths()%>"></td>
    <td><input type="text" value="<%=st.getChem()%>"></td>
    <td><input type="text" value="<%=st.getTotal()%>"></td>
    <td><input type="text" value="<%=st.getGrade()%>"></td>
  </tr>
</table>

<body align="center">
<br>
<br>
<br><a align="center" href="index.html">Go back </a>
</body>


