
<%@page import="javax.servlet.ServletInputStream,javax.servlet.http.HttpServletRequest"%>
<%@page import="java.io.BufferedReader,java.io.InputStreamReader"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    response.setContentType("text/html; charset=utf-8");

    if (request.getMethod() == "GET") {

        String where_condition = "";
        String category_select = request.getParameter("category_select");
        String district_select = request.getParameter("district_select");
        String local_areas_select = request.getParameter("local_areas_select");
        String sub_category_select = request.getParameter("sub_category_select");

        String min_price = request.getParameter("min_price");
        String max_price = request.getParameter("max_price");

        if (category_select == "" && district_select == "" && local_areas_select == "" && sub_category_select == "" && min_price == "" && max_price == "") {
            where_condition = "";
        } else {
            where_condition = "where ";
        }

        int count = 0;

        if (category_select != "") {
            where_condition += " category = '" + category_select + "' ";
            count = 1;
        }

        if (district_select != "") {

            if (count == 0) {
                where_condition += " district = '" + district_select + "' ";
            } else {
                where_condition += " and district = '" + district_select + "' ";
            }
            count = 1;
        }

        if (local_areas_select != "") {
            if (count == 0) {
                where_condition += " district_local_area = '" + local_areas_select + "' ";
            } else {
                where_condition += " and district_local_area = '" + local_areas_select + "' ";
            }
            count = 1;

        }

        if (sub_category_select != "") {
            if (count == 0) {
                where_condition += " sub_category = '" + sub_category_select + "' ";
            } else {
                where_condition += " and sub_category = '" + sub_category_select + "' ";
            }
            count = 1;
        }
        
        if (min_price != "" && max_price != "") {
            if (count == 0) {
                where_condition += " ad_price >= " + min_price + " and ad_price <=  " + max_price + " ";
            } else {
                where_condition += " and ad_price >= " + min_price + " and ad_price <=  " + max_price + " ";
            }
            count = 1;
        }
        
        try {
            ResultSet resultSet = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amplier", "root", "");
            Statement st = con.createStatement();
            resultSet = st.executeQuery("select * from ads " + where_condition);
            while (resultSet.next()) {
%>


<div class="result-item format-standard">
    <div class="result-item-image">
        <a href="vehicle-details.html" class="media-box"><img src="../resources/core/images/patterns/pt17.png" alt=""></a>
        <div class="result-item-view-buttons">
            <a href="ad_details.jsp?ad_id=<%=resultSet.getString("id")%>"><i class="fa fa-plus"></i> View details</a>
        </div>
    </div>
    <div class="result-item-in">
        <h4 class="result-item-title"><a href="vehicle-details.html"><%=resultSet.getString("ad_name")%></a></h4>
        <div class="result-item-cont">
            <div class="result-item-block col1">
                <p><%=resultSet.getString("description")%></p>
            </div>
            <div class="result-item-block col2">
                <div class="result-item-pricing">
                    <div class="price">LKR <%=resultSet.getString("ad_price")%></div>
                </div>
            </div>
        </div>
        <div class="result-item-features">
            <ul class="inline">
                <li>Category : <%=resultSet.getString("category")%></li>
                <li>Sub Category : <%=resultSet.getString("sub_category")%></li>
                <li>District : <%=resultSet.getString("district")%></li>
                <li>Town / City: <%=resultSet.getString("district_local_area")%></li>
            </ul>
        </div>
    </div>
</div>

<%
            }
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }

    }

%>


