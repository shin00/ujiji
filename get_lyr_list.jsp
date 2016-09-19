<%@page import="geomex.kras.KrasConn"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="
javax.xml.bind.JAXBContext,
javax.xml.bind.JAXBException,
javax.xml.bind.Unmarshaller,

org.apache.commons.io.IOUtils,
org.apache.commons.lang3.StringUtils,

java.net.URLEncoder,

java.net.URL,
java.net.HttpURLConnection,

java.io.BufferedReader,
java.io.InputStreamReader,

geomex.kras.gmx.vo.*
"
%>
<%
String svcId = "KRAS000038";
String pnu = StringUtils.trimToEmpty(request.getParameter("pnu"));

String data = "";

KrasConn krasConn = new KrasConn();
HttpURLConnection httpConn = null;
try{
	data = krasConn.getData(svcId, pnu);
	
} catch (Exception e) {
	
}

out.println(data);
%>
