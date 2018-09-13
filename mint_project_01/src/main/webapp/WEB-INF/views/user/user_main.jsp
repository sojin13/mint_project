<%@page import="com.mint.project.dtos.MovieDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);
var useq = $("#forchartseq").val();
function drawChart() {
	var data = google.visualization.arrayToDataTable([	
	['장르', '비중'],
	
	['액션', ${tdto.taction} ],
	['코미디', ${tdto.tcomedy} ],
	['범죄',  ${tdto.tcrime} ],
	['드라마', ${tdto.tdrama} ],
	['가족', ${tdto.tfamily}],
	['스릴러', ${tdto.tthriller} ],
	['판타지', ${tdto.tfantasy} ],
	['느와르', ${tdto.tnoir}],	
	['호러', ${tdto.thorror}],
	['뮤지컬', ${tdto.tmusical}],
	['로맨스', ${tdto.tromance}],
	['SF', ${tdto.tsf}],
	['스포츠', ${tdto.tsports}],
	['전쟁', ${tdto.twar}],
	['애니메이션', ${tdto.tanimation}],
	['역사', ${tdto.thistory}],
	['로코', ${tdto.troco}],
	['하이틴', ${tdto.thighteen}]
	
	]);
		
	var options = {
	title: '선호하는 영화장르',
	pieHole: 0.4
	};
	
	var chart = new google.visualization.PieChart(document.getElementById('piechart'));
	
	chart.draw(data, options);

}
</script>

<style type="text/css">
@font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }
	button{
		width: 110px;
		float:left;
		left: 20px;
		border-radius:20px 20px 20px 20px;
		font-family:"mint_catefont"; 
		  background:#595959;
		  color:#96ffd4;
		  border:none;
		  position:relative;
		  height:50px;
		  font-size:25px;
		  cursor:pointer;
		  transition:800ms ease all;
		  outline:none;
		}
	button:hover{
		  background:#96ffd4 ;
		  color:#595959;
		}
	button:before, button:after{
		  content:'';
		  position:absolute;
		  top:0;
		  right:0;
		  height:2px;
		  width:0; 
		  background: #1AAB8A;
		  transition:400ms ease all;
		}
	button:after{
		  right:inherit;
		  top:inherit;
		  left:0;
		  bottom:0;
		}
	button:hover:before,button:hover:after{
		  width:100%;
		  transition:800ms ease all;
		      }
	#reviewtext{
		width:600px; height:50px; overflow:hidden; text-overflow: ellipsis; white-space:nowrap;
		list-style: none;
		}
		
	#reviewtag{
		 color: #96ffd4;
		}
		
	#reviewdiv{
		font-size:30px;
		border: 1px solid red;
		margin: auto;
		width: 700px;
		}

	h1{
	 	font-size: 90px;
		}
		
	.mimg li{
		text-align: center;
		list-style: none;
		float: left;
		margin-right: 20px;
		left: auto; 
		font-size: 22px;
	
		}
	#img{
		 float: left; margin-left: 20px;
		 border:1px solid red; width: 200px; height: 300px;
	}
	
	
	
	#piechart{
	 	margin: auto;
	}
	
	 .배경div{
	       font-family:mint_catefont;
	       position:relative;
	       width: 1600px;
	       height:auto;
	       margin-left:auto;
	       margin-right:auto;
	       text-align: center;
	       margin-bottom: auto;
	       padding-top: 80px;
	       font-size: 20px;
	      }
	       
	       .배경div:after{
	              content: "";
	              background-color:#595959;
	              display: block;
	              width: 1600px;
	              height: 100%;
	              position: absolute;
	              left: 0px;
	              top:0px;
	              opacity:0.7;
	              z-index: -1;
	       }

	#aaa{
		margin-top: 250px;
	
	}
	
	.grade{
			padding-bottom: 100px;
	}
	
	#title{
		width:200px; height:30px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;
		list-style: none;float: left;margin-left: 30px;
		}


</style>

</head>

<body>
<%@include file="../header.jsp"%>
<div class="배경div">
<br/><br/><br/>
<div>
<table style="margin-left: 30px;">
   <tr>
  <td style="border: 1px solid red; height: 70px; width: 70px;"><img src="resources/img/${ldto.uimg}" alt="profile"></td>
     <td>
       <button style="margin-right:25px;" onclick="location.href='userinfo_user.do'">내 정보 관리</button>
       <button  onclick="location.href='userfavoriteMovie.do?useq=${ldto.useq}'">즐겨찾기 목록</button>
     </td>
   </tr>
</table>
</div>


  <h1 style="margin-top: 50px;">${ldto.unick}님의 선호영화</h1>
<br/><br/><br/><br/><br/>
<table>
   <tr>
     <td>
         <ul class="mimg">
         <li><a href="#"><img id="img" src="${ldto.mdto.mimg}" alt="포스터"/></a></li> 
          <li><a href="#"><img id="img" src="${ldto.mdto.mimg}" alt="포스터"/></a></li> 
         <li><a href="#"><img id="img" src="${ldto.mdto.mimg}" alt="포스터"/></a></li> 
         <li><a href="#"><img id="img" src="${ldto.mdto.mimg}" alt="포스터"/></a></li> 
           <li><a href="#"><img id="img" src="${ldto.mdto.mimg}" alt="포스터"/></a></li>          
           <li><a href="#"><img id="img" src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         </ul>
     </td>
   </tr>
</table>




<div id="aaa">
 <h1>${ldto.unick}님의 한줄평</h1>
<br/><br/><br/><br/><br/>
<!-- <table  onclick="location.href='userreview.do'"> -->
<div  onclick="location.href='userreview.do?useq=${ldto.useq}'"  id="reviewdiv">
<table  border="1">
      <c:choose>
         <c:when test="${empty lists}">
         </c:when>
         <c:otherwise>
            <c:forEach var = "ldto" items="${lists}">
             <ul style=" list-style: none;" id="reviewtext">
        	 <li>● <a id="reviewtag">${ldto.mdto.mtitle}</a> - ${ldto.rdto.rcontent}</li>
     		 </ul>
     		 <br/>
            </c:forEach>            
         </c:otherwise>
      </c:choose>
</table>
</div>
</div>

<!-- 여기서 부터 소진코드 -->
<% 
List<MovieDto> tmlist=(List<MovieDto>)request.getAttribute("tmlist");
String keyw =(String)request.getAttribute("keyw");

%>
<div id="aaa" class="chart">
  <h1>${ldto.unick}님의 영화 통계</h1>
  <br/><br/><br/><br/><br/>
  <div id="piechart" style="width: 900px; height: 500px;"></div>
  <input type="hidden" id="forchartseq" value="${ldto.useq}" /> 
</div>


<div id="aaa" class="grade">
  <h1  onclick="location.href='usergrade.do?useq=${ldto.useq}'">${ldto.unick}님께 추천해드리는 영화</h1>  

   <h3>키워드 추천: 선호도가 높게나온 <%=keyw%>장르의 영화입니다!</h3>
   <br/><br/><br/><br/><br/>
   <table>
   <tr>
     <td>
         <ul class="mimg">
<%
   
   for(int i=0;i<tmlist.size();i++){
	      MovieDto mdto=tmlist.get(i);
	   if(i<6){
		   
		  %>		 
			<li>
				<a href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=${ldto.useq}"><img id="img" src="<%=mdto.getMimg()%>" id="recmovie"></a><br/>
				<a id="title" href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=${ldto.useq}"><%=mdto.getMtitle()%></a>
			</li>				
		 <%		   
	   	}		   				   
	   }
%>
		</ul>
     </td>
   </tr>
</table>
</div>  
</div>
<br/><br/>
<%@include file="../footer.jsp"%>
</body>
</html>