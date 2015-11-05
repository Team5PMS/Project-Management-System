<jsp:include page="header.jsp"/>
<!-- Wrapper -->


<div class="wrapper clearfix">

    <!-- Breadcrumb -->
    <section class="metainfo">
        <div class="container">
            <div class="row">
                <div class="col-md-4"><h1>Contact Us</h1></div>

            </div>
        </div>
    </section>
    <!-- /Breadcrumb -->

    <section class="page-wrapper">

        <!-- Contact Details -->

        <!-- /Contact Details -->

        <!-- Contact Form -->
        <div class="contact-forms padding paddv-80 remove-padding paddb">
            <div class="container border-line-bottom add-padding paddb-80">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Login Here</h1>
                        <h2>Mea aliquip dolorem lorem affert verterem oratio everti iudicabit</h2>

                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa
                            Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum
                        <p>Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris.</p>
                        <p>consequat vitae, orci. Fusce id felis. Vivamus sollicitudin metus eget eros. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus Morbi ut mi.</p>

                    </div>
                    <div>
                        <div class="col-md-6">
                            <%
                                if((String)session.getAttribute("error")!=null){
                                    out.println((String)session.getAttribute("error"));
                                    session.setAttribute("error",null);
                                }
                            %>
                            <div style="text-decoration: none;display:none;" class="alert alert-danger" role="alert" id="msg">
                                All Fields are required<button style='float:right;text-decoration:none;' id='clse' type='button' class='btn-link'>x</button>
                            </div>
                            <form id="logForm" method="post" class="form-horizontal contact-form" action="process/login.jsp">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Username *</label>
                                            <input name="uname" id="uname" type="text" class="form-control input-lg" placeholder="Enter Username">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Password *</label>
                                            <input name="pass" id="pass" type="password" class="form-control input-lg" placeholder="Enter Password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Login Type *</label>
                                            <select name="typ" id="typ" class="form-control input-lg">
                                                <option value="">Select Type</option>
                                                <option value="admin">Admin</option>
                                                <option value="manager">Project Manager</option>
                                                <option value="leader">Team Leader</option>
                                                <option value="member">Team Member</option>
                                            </select>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group contact-submit">
                                        <div class="col-sm-12">
                                            <button class="btn btn-info btn-lg" type="submit"><span>Login</span></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Contact Form -->

    </section>
    <jsp:include page="footer.jsp"/>