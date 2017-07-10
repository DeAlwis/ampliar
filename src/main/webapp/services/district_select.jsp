<%@page import="org.w3c.dom.*, javax.xml.parsers.*" %>
<%

    DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
    DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
    Document doc = docBuilder.parse("http://localhost:8080/ampliar/core_module/config/districts.xml");

%>

<%!
    public boolean isTextNode(Node n) {
        return n.getNodeName().equals("#text");
    }
%>

<select class="form-control" id="district-select" onchange="loadLocalAreasSelect()">
    <option value="">Select</option>
    <%      
        Element element = doc.getDocumentElement();
        NodeList personNodes = element.getChildNodes();
        
        for (int i = 0; i < personNodes.getLength(); i++) {
            Node emp = personNodes.item(i);
            if (isTextNode(emp)) {
                continue;
            }
            
            NodeList NameDOBCity = emp.getChildNodes();
    %>
    <option>
        <%
            for (int j = 0; j < NameDOBCity.getLength(); j++) {
                Node node = NameDOBCity.item(j);
                if (isTextNode(node)) {
                    continue;
                }
        %>
        <%= node.getFirstChild().getNodeValue()%>
        <%
            }
        %>
    </option>
    <%
        }
    %>
</table>