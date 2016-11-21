<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.archive.wayback.core.UIResults" %>
<%@ page import="org.archive.wayback.util.StringFormatter" %>
<jsp:include page="/WEB-INF/template/UI-header.jsp" flush="true" />
<%
UIResults results = UIResults.getGeneric(request);
StringFormatter fmt = results.getWbRequest().getFormatter();
Object names = request.getAttribute("AccessPointNames");
if(names != null) {
	if(names instanceof ArrayList) {
		ArrayList<String> accessPoints = (ArrayList<String>) names;
		if(accessPoints.size() > 0) {
			%>
                            <%= fmt.format("UIGlobal.wrongAccesspoint") %>
			<%
		}
		for(String accessPoint : accessPoints) {
			%>
			 <a href="<%= request.getContextPath() + "/" + accessPoint %>/"><%= accessPoint %></a><br></br>
			<%
		}
	}
}
%>
<p>
	<%= fmt.format("UIGlobal.indexPage") %>
</p>
<div style="padding: 20px;">
<h2>Collections</h2>
  <ul>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://library.yorku.ca/">York University Libraries</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://yfile.news.yorku.ca">YFile</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://calendars.registrar.yorku.ca/"</a>Academic Calendars</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://archives.library.yorku.ca/">York University Libraries | Clara Thomas Archives & Special Collections online exhibits</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.yorku.ca/yulearn/">York University - YU Learning Commons</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.library.yorku.ca/FacultyNews/">YULibraryNews for York U faculty</a></li>
  <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.library.yorku.ca/cms/steacie/about-the-library/hackfest/">The Steacie Library Dungeon Hackfest 2013</a></li>
<li><a href="https://digital.library.yorku.ca/wayback/*/http://www.library.yorku.ca/steaciehackfest/">Steacie Library Dungeon Hackfest 2014</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.yorku.ca/embleton/research/romanian">Romanian Online Dialect Atlas : An experimental presentation of linguistic information</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www-dev.library.yorku.ca/roadmap/">RESEARCH ROADMAP</a></li>
  <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.yorku.ca/tutorial/">Online Tutorials for Students</a></li>
<li><a href="https://digital.library.yorku.ca/wayback/*/http://www.justlabour.yorku.ca/">Just Labour : A Canadian Journal of Work and Society</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://archives.library.yorku.ca/iain_baxterand_raisonne/">IAINBAXTER&raisonnE</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.yorku.ca/yul/gazette/">Gazette Archives</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.library.yorku.ca/cms/faculty/facultynewsletterpastissues/">Faculty Newsletter Past Issues</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.yorku.ca/yul/etig/blog/">ETIG : YUL Emerging Tech Group</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://cbern.ca/">Canadian Business Ethics Research Network</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.yorku.ca/acadinte/index.htm">Academic Integrity at York</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.yorku.ca/yul/reno/blog/">1st Floor Renovation Central : Keeping YUL Staff in the Loop</a></li>
    <li><a href="https://digital.library.yorku.ca/wayback/*/http://www.yorku.ca/web/profiles/">Profiles Archives</a></li>
  </ul>
</div>
<jsp:include page="/WEB-INF/template/UI-footer.jsp" flush="true" />
