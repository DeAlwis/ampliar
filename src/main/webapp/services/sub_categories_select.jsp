
<%@page import="org.w3c.dom.*, javax.xml.parsers.*" %>
<%
    String category_select = request.getParameter("category_select");
    DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
    DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
    Document doc = docBuilder.parse("http://localhost:8080/ampliar/core_module/config/sub_categories.xml");

    
    NodeList category = doc.getElementsByTagName("category");
    NodeList subcategory = doc.getElementsByTagName("subcategory");
    NodeList subcategoryname = doc.getElementsByTagName("subcategoryname");
%>



<select class="form-control" id="sub_category-select">
    <option value="">Select</option>
<%
        int i;
        for(i=0;i<=subcategory.getLength()-1;i++)
        {
            
            if(category.item(i).getFirstChild().getNodeValue().equals(category_select)){
                
            
%>
<option><%= subcategoryname.item(i).getFirstChild().getNodeValue()%></option>
<%
            }
       }
%>
</select>
