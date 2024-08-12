<%@ page import="java.sql.*, javax.naming.*, javax.sql.*" %>
<%
    InitialContext initCtx = new InitialContext();
    Context envContext = (Context) initCtx.lookup("java:/comp/env");
    DataSource ds = (DataSource) envContext.lookup("jdbc/userchat");
    Connection conn = ds.getConnection();
    Statement stmt = conn.createStatement();
    ResultSet rset = stmt.executeQuery("SELECT VERSION();");

    while (rset.next()) {
    	out.println("MYSQL Version:" + rset.getString("version()"));
    }

    rset.close();
    stmt.close();
    conn.close();
%>