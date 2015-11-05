<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.ProjectBeans"%>
<%
    if (session.getAttribute("id") != null && session.getAttribute("type").equals("admin")) {

%>
<jsp:include page="header.jsp"/>
<ul class="breadcrumb">
    <li>
        Home
        <span class="divider">/</span>
    </li>
    <li>
        Project Section
        <span class="divider">/</span>
    </li>
    <li class="active">
        Project List
    </li>

</ul>
<!-- END PAGE TITLE & BREADCRUMB-->
</div>
</div>
<div class="row-fluid">
    <div class="span12">
        <!-- BEGIN EXAMPLE TABLE widget-->
        <%
            if ((String) session.getAttribute("success") != null) {
                out.println((String) session.getAttribute("success"));
                session.setAttribute("success", null);
            }
        %>
        <div class="widget purple">
            <div class="widget-title">
                <h4><i class="icon-reorder"></i> Project List</h4>
            </div>
            <div class="widget-body">
                <div>
                    <div class="space15"></div>
                    <div role="grid" class="dataTables_wrapper form-inline" id="editable-sample_wrapper">
                        <div class="table-responsive">
                            <table id="editable-sample" class="table table-striped table-hover table-bordered table-condensed ">
                                <thead>
                                    <tr role="row">
                                        <th class="sorting">#</th>
                                        <th class="sorting">Project Name</th>
                                        <th class="sorting">Technology Used</th>
                                        <th class="sorting">Month</th>
                                        <th class="sorting">Budget</th>
                                        <th class="sorting">Start Date</th>
                                        <th class="sorting">Status</th>
                                        <th class="sorting">Change Status</th>
                                    </tr>
                                </thead>

                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <%
                                        int count = 1;
                                        ProjectBeans pb = new ProjectBeans();
                                        ArrayList alist = pb.getProjectList();
                                        if (alist.size() > 0) {
                                            Iterator itr = alist.iterator();
                                            while (itr.hasNext()) {
                                                pb = (ProjectBeans) itr.next();
                                    %>
                                    <tr class="odd">
                                        <td><%=count%></td>
                                        <td class=""><a href="javascript:;" style="text-decoration: none;"><%=pb.getEname()%></a></td>
                                        <td class=""><%=pb.getTyp()%></td>
                                        <td class=""><%=pb.getDob()%></td>
                                        <td class=""><%=pb.getSalary()%></td>
                                        <%
                                            if (pb.getStatus().equals("1")) {
                                        %>
                                        <td class=""><p class="text-error">Not Started</p></td>
                                        <td class=""><p class="text-error">Not Started</p></td>
                                        <td class=""><a class="lLink" href="javascript:;" name="2/<%=pb.getId()%>" style="text-decoration: none">Start Project</a></td>
                                        <%} else if (pb.getStatus().equals("2")) {
                                        %>
                                        <td class=""><p class="text-success"><%=pb.getCity()%></p></td>
                                        <td class=""><p class="text-success">Running</p></td>
                                        <td class=""><a class="lLink" href="javascript:;" name="0/<%=pb.getId()%>" style="text-decoration: none">End Project</a></td>
                                        <%}
                                        %>
                                    </tr>
                                    <%
                                                count++;
                                            }
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END EXAMPLE TABLE widget-->
    </div>
</div>
<jsp:include page="footer.jsp"/>

<%    } else {
        response.sendRedirect("../login.jsp");
    }
%>