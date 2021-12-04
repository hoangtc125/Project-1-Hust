<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="display:align-items-center">
  <a href="<c:url value="/mail-list/${pageContext.request.userPrincipal.name}" />" >List Mail</a><br />
  <h1>View Mail:</h1>  
  Title: ${mail.title} <br/>
  Sender: ${mail.sender} <br/>
  Receiver: ${mail.receiver} <br/>
  content: ${mail.content} <br/>
</div>