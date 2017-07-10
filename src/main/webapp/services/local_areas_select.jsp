
<%@page import="org.w3c.dom.*, javax.xml.parsers.*" %>
<%
    String district_select = request.getParameter("district_select");
    DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
    DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
    Document doc = docBuilder.parse("http://localhost:8080/ampliar/core_module/config/local_areas.xml");

    
    NodeList city = doc.getElementsByTagName("city");
    NodeList districtname = doc.getElementsByTagName("districtname");
    NodeList name = doc.getElementsByTagName("name");
%>



<select class="form-control" id="local-areas-select">
    <option value="">Select</option>
<%
        int i;
        for(i=0;i<=city.getLength()-1;i++)
        {
            
            if(districtname.item(i).getFirstChild().getNodeValue().equals(district_select)){
                
            
%>
<option><%= name.item(i).getFirstChild().getNodeValue()%></option>
<%
            }
       }
%>
</select>
