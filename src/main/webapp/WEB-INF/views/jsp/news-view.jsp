<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="display:align-items-center">
  <a href="<c:url value="/news-list?sort=" />" >List News</a><br />
  <h1>${news.title} </h1>  
  <img src="https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/216969081_200992805298977_627777177495630541_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=TsgZOiIMuTgAX8zQFM0&_nc_ht=scontent.fhph1-2.fna&oh=a127806357522d5ba15885719256b9e0&oe=61AF6BF2" class="card-img-top" alt="...">
      <br/>
  ${news.content} <br/>
</div>