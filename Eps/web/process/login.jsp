<%@page import="beans.ProjectBeans"%>
<%

    ProjectBeans pb = new ProjectBeans();
    pb.setUname(request.getParameter("uname"));
    pb.setPass(request.getParameter("pass"));
    pb.setTyp(request.getParameter("typ"));
    String status = pb.getLogin(pb);
    String lStatus[] = status.split("/");
    if (lStatus[0].equals("fail")) {
        session.setAttribute("error", "<div style='text-decoration: none;' class='alert alert-danger' role='alert' id='msg'>Username or Password must be wrong..<button style='float:right;text-decoration:none;' id='clse' type='button' class='btn-link'>x</button></div>");
        response.sendRedirect("../login.jsp");
    } else if (lStatus[0].equals("done")) {
        if (lStatus[1].equals("admin")) {
            session.setAttribute("type", lStatus[1]);
            session.setAttribute("id", lStatus[2]);
            session.setAttribute("name", lStatus[3]);
            response.sendRedirect("../admin/");
        }
    }

%>