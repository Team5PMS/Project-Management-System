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
        Employee Section
        <span class="divider">/</span>
    </li>
    <li class="active">
        Team Member
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
                <h4><i class="icon-reorder"></i> Team Member List</h4>
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
                                        <th class="sorting">Username</th>
                                        <th class="sorting">Employee Name</th>
                                        <th class="sorting">Phone</th>
                                        <th class="sorting">Email</th>
                                        <th class="sorting">Gender</th>
                                        <th class="sorting">Edit</th>
                                        <th class="sorting">ID Status</th>
                                        <th class="sorting">Change Status</th>
                                    </tr>
                                </thead>

                                <tbody role="alert" aria-live="polite" aria-relevant="all">

                                <thead>
                                    <tr role="row">
                                        <th class="sorting">#</th>
                                        <th class="sorting">Username</th>
                                        <th class="sorting">Employee Name</th>
                                        <th class="sorting">Phone</th>
                                        <th class="sorting">Email</th>
                                        <th class="sorting">Gender</th>
                                        <th class="sorting">Edit</th>
                                        <th class="sorting">ID Status</th>
                                        <th class="sorting">Change Status</th>
                                    </tr>
                                </thead>

                                <tbody role="alert" aria-live="polite" aria-relevant="all">

                                    <tr class="odd">
                                        <td>1</td>
                                        <td class=""><a style="text-decoration: none;" href="javascript:;" >M2391</a></td>
                                        <td class="">Akash</td>
                                        <td class="">9988776655</td>
                                        <td class="">aksah@gmail.com</td>
                                        <td class="">Male</td>
                                        <td class=""><a style="text-decoration: none;" href="javascript:;" class="edit"><i class="icon-edit"></i></a></td>

                                        <td class=""><p class="text-success">Activated</p></td>
                                        <td class=""><a class="dLink" style="text-decoration: none;" href="javascript:;"><i class="icon-remove"></a></td>
                                    </tr>
                                    <tr class="odd">
                                        <td>2</td>
                                        <td class=""><a style="text-decoration: none;" href="javascript:;" >M2392</a></td>
                                        <td class="">Amit</td>
                                        <td class="">9988776644</td>
                                        <td class="">amit@gmail.com</td>
                                        <td class="">Male</td>
                                        <td class=""><a style="text-decoration: none;" href="javascript:;" class="edit"><i class="icon-edit"></i></a></td>
                                        <td class=""><p class="text-error">Deactivated</p></td>
                                        <td class=""><a class="aLink" style="text-decoration: none;" href="javascript:;" ><i class="icon-ok"></i></a></td>
                                    </tr>
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