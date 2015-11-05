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
        Register Employee
    </li>

</ul>
<!-- END PAGE TITLE & BREADCRUMB-->
</div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row-fluid">
    <div class="span12">
       <%
            if ((String) session.getAttribute("success") != null) {
                out.println((String) session.getAttribute("success"));
                session.setAttribute("success", null);
            }
        %>
        <div id="m" style="display: none;">
            <button style='float:right;text-decoration:none;' onclick="$('#msg').slideUp('slow');" id='clse' type='button' class='btn-link'>x</button>
        </div>
        <div style="display:none;" class="alert alert-danger" role="alert" id="msg">
        </div>
        
        <!-- BEGIN SAMPLE FORMPORTLET-->
        <div class="widget green">
            <div class="widget-title">
                <h4><i class="icon-reorder"></i> Employee Register </h4>

            </div>
            <div class="widget-body">
                <!-- BEGIN FORM-->
                <form action="../process/register.jsp" id="regForm" method="post" class="form-horizontal">
                    <div class="control-group">
                        <label class="control-label">Employee Name</label>
                        <div class="controls">
                            <input type="text" name="ename" id="ename" placeholder="Enter Employee Name" class="span6 " />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Email</label>
                        <div class="controls">
                            <div class="input-icon left">
                                <i class="icon-envelope"></i>
                                <input type="text" name="email" id="email" placeholder="Enter Email" class="span6 " />
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Designation</label>
                        <div class="controls">
                            <select class="span6 chzn-select" name="typ" id="typ">
                                <option value="">Select Designation</option>
                                <option value="manager">Project Manager</option>
                                <option value="leader">Team Leader</option>
                                <option value="member">Team Member</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Username</label>
                        <div class="controls">
                            <input type="text" name="uname" id="uname" placeholder="Self Generated" readonly="true" class="span6 " />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Phone</label>
                        <div class="controls">
                            <input type="text"  name="phone" id="phone" placeholder="Enter Phone" class="span6 " />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">DOB</label>
                        <div class="controls">
                            <input type="text"  name="dob" id="dob" placeholder="Enter Date Of Birth" class="span6 " />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Gender</label>
                        <div class="controls">
                            <select class="span6 chzn-select" name="gender" id="gender">
                                <option value="">Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">State</label>
                        <div class="controls">
                            <input type="text" name="state" id="state" placeholder="Enter State" class="span6 " />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">City</label>
                        <div class="controls">
                            <input type="text" name="city" id="city" placeholder="Enter City" class="span6 " />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Salary</label>
                        <div class="controls">
                            <input type="text" name="sal" id="sal" placeholder="Enter Salary" class="span6 " />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label">Address</label>
                        <div class="controls">
                            <textarea name="addr" id="addr" class="span6" style="resize: none;" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" id="sub" class="btn btn-success">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>

<%    } else {
        response.sendRedirect("../login.jsp");
    }
%>