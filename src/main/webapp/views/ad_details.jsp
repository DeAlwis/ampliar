
<%@include file='layout/header.jsp'%>

<!-- Start Site Header --><!-- Start Site Header -->
<%@include file='layout/site_header_wrapper.jsp'%>
<!-- END Site Header -->

<%@page import="javax.servlet.ServletInputStream,javax.servlet.http.HttpServletRequest"%>
<%@page import="java.io.BufferedReader,java.io.InputStreamReader"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    response.setContentType("text/html; charset=utf-8");

    if (request.getMethod() == "GET") {

        String ad_id = request.getParameter("ad_id");
        
        try {
            
        
            ResultSet resultSet = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amplier", "root", "");
            Statement st = con.createStatement();
            resultSet = st.executeQuery("select * from ads where id = '" + ad_id + "'");
         while (resultSet.next()) {

%>


<div class="spacer-100"></div>
<div class="spacer-100"></div>


<!-- Start Body Content -->
<div class="main" role="main">
    	<div id="content" class="content full">
        	<div class="container">
            	<!-- Vehicle Details -->
                <article class="single-vehicle-details">
                    <div class="single-vehicle-title">
                        <h2 class="post-title"><%=resultSet.getString("ad_name")%></h2>
                    </div>
                    <div class="single-listing-actions">
                        <div class="btn btn-info price">$88000</div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="single-listing-images">
                                <div class="featured-image format-image">
                                    <a href="http://placehold.it/890x600&amp;text=IMAGE+PLACEHOLDER" data-rel="prettyPhoto[gallery]" class="media-box"><img src="http://placehold.it/890x600&amp;text=IMAGE+PLACEHOLDER" alt=""></a>
                                </div>
                            </div>
                      	</div>
                        <div class="col-md-4 vehicle-details-sidebar sidebar">
                        
                            <!-- Vehicle Enquiry -->
                            <div class="sidebar-widget widget seller-contact-widget">
                              	<h4 class="widgettitle">Send enquiry</h4>
                                <div class="vehicle-enquiry-in">
                                    <form>
                                        <input type="text" placeholder="Name*" class="form-control" required>
                                        <input type="email" placeholder="Email address*" class="form-control" required>
                                        <div class="row">
                                            <div class="col-md-7"><input type="text" placeholder="Phone no.*" class="form-control" required></div>
                                            <div class="col-md-5"><input type="text" placeholder="Zip*" class="form-control" required></div>
                                        </div>
                                        <textarea name="comments" class="form-control" placeholder="Your comments"></textarea>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" id="inlineCheckbox1" value="option1"> Subscribe To <strong>AutoStars Newsletter</strong>
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" id="inlineCheckbox2" value="option2"> Remember my details
                                        </label>
                                        <input type="submit" class="btn btn-primary" value="Submit">
                                    </form>
                                </div>
                            </div>
                            
                        </div>
                   	</div>
                 	<div class="spacer-50"></div>
                    <div class="row">
                    	<div class="col-md-8">
                            <div class="tabs vehicle-details-tabs">
                                <ul class="nav nav-tabs">
                                    <li class="active"> <a data-toggle="tab" href="#vehicle-description">Description</a></li>
                                    <li> <a data-toggle="tab" href="#vehicle-location">Location</a> </li>
                                </ul>
                                <div class="tab-content">
                                    <div id="vehicle-description" class="tab-pane fade in active">
                                        <p><%=resultSet.getString("description")%></p>
                                    </div>
                                     <div id="vehicle-location" class="tab-pane fade in ">
                                        <p>District : <%=resultSet.getString("district")%></p>
                                        <p>Town / City : <%=resultSet.getString("district_local_area")%></p>
                                    </div>
                                </div>
                    		</div>
                       	</div>
                    </div>
                </article>
                <div class="clearfix"></div>
            </div>
        </div>
   	</div>

    <%@include file='layout/footer.jsp'%>
    
<%
          }
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }

    }

%>