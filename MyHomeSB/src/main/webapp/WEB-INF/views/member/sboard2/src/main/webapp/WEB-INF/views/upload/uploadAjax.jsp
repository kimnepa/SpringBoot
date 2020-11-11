<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- views/upload/uploadAjax.jsp -->
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<%@ include file="../include/header.jsp" %>
<style>
.fileDrop {
	width: 100%;
	height: 200px;
	border: 1px dotted blue;
}
small {
	margin-left:3px;
	font-weight: bold;
	color: gray;
}
</style>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %><br><br>

<div class="container">

	<h2>Ajax File Upload</h2>
	<!-- 파일을 업로드할 영역 -->
	<div class="fileDrop"></div>
	<!-- 업로드된 파일 목록을 출력할 영역 -->
	<div class="uploadedList"></div>

</div>

<%@ include file="../include/footer.jsp" %>

<script>
$(function(){
	//드래그 기본 효과를 막음
	//기본효과를 막지 않으면 드래그된 곳에 이미지가 보인다.
	//preventDefault() <== 기본적으로 표시된 효과를 막는다.
	$(".fileDrop").on("dragenter dragover", function(event){
		event.preventDefault();
	});
	$(".fileDrop").on("drop",function(event){
		//drop이 될 때 기본 효과를 막음
		event.preventDefault();
		
		//첨부파일 배열 : 드래그된 파일 정보
		//Ctrl+클릭으로 여러개를 동시에 올릴 수도 있다.
		var files=event.originalEvent.dataTransfer.files;
		
		var file=files[0]; //첫번째 첨부파일

		//파일정보가 콘솔에 올라간다.
		//웹 브라우저에서 F12 키를 누르면 어떤 파일인지 알 수 있다.
		console.log(file); 

		//Ajax로 전달 할 때는 폼이 별도로 존재하지 않기 때문에 폼 객체를 만들어 주어야 한다.
		var formData=new FormData(); //폼 객체
		
		formData.append("file", file); //폼에 file 변수 추가
		//서버에 파일 업로드(백그라운드에서 실행됨)
		// contentType: false => multipart/form-data로 처리됨
		$.ajax({
			type: "post",
			url: "${path}/upload/uploadAjax",
			data: formData,
			dataType: "text",
			processData: false,
			contentType: false,
			success: function(data,status,req){
				console.log("data:"+data); //업로드된 파일 이름
				console.log("status:"+status); //성공,실패 여부
				console.log("req:"+req.status);//요청코드값
				var str="";
				if(checkImageType(data)){ //이미지 파일
					str="<div><a href='${path}/upload/displayFile?fileName="
						+getImageLink(data)+"'>";
					str+="<img src='${path}/upload/displayFile?fileName="
						+data+"'></a>"; 
				}else{ //이미지가 아닌 경우
					str="<div>";
					str+="<a href='${path}/upload/displayFile?fileName="
						+data+"'>"+getOriginalName(data)+"</a>";
				}
				str+="<span data-src="+data+">[삭제]</span></div>";
				$(".uploadedList").append(str);
			}
		});
	}); //fileDrop 함수
	//첨부파일 삭제 함수
	$(".uploadedList").on("click","span",function(event){
		//현재 클릭한 태그
		var that=$(this);
		//data: "fileName="+$(this).attr("data-src"),		
		$.ajax({
			url: "${path}/upload/deleteFile",
			type: "post",
			data: "fileName="+$(this).attr("data-src"),		
			//data: {
			//	fileName: $(this).attr("data-src")
			//},
			dataType: "text",
			success: function(result){
				if(result=="deleted"){
					that.parent("div").remove();
				}
			},

			error : function(error) {
		        alert("Error!");
		    },
		    complete : function() {
		        alert("complete!");    
		    }




		
		});
	});
	
	function getOriginalName(fileName){
		if(checkImageType(fileName)){ //이미지 파일이면 skip
			return;
		}
		var idx=fileName.indexOf("_")+1; //uuid를 제외한 파일이름
		return fileName.substr(idx);
	}
	function getImageLink(fileName){
		if(!checkImageType(fileName)){//이미지 파일이 아니면 skip
			return; //함수종료
		}
		//이미지 파일이면
		// /2019/07/11/s_6c2010df-1bff-4240-945c-ea9f503726fd_book01.jpg
		var front=fileName.substr(0,12);//연월일 경로
		var end=fileName.substr(14);// s_ 제거
		console.log(front);
		console.log(end);
		return front+end;
	}
	// i : ignore case()
	function checkImageType(fileName){
		var pattern=/jpg|png|jpeg/i; //정규표현식(대소문자 무시)
		return fileName.match(pattern); //규칙에 맞으면 true
	}
});


















