<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
		.html { <!--이렇게 하면 10px=1rem이라는데... 반응형으로 텍스트...음 -->
			fond-size: 62.5%;
		}
		.container1 {
			float: left;
			text-align: center;

		}
		.bar {
			background-color: #D9D9D9;
			position: fixed;
			top: 0px;
			bottom: 0px;
			right: 0px;
		}
		.circle {
			width : 1.5vw;
			height : 3vh;
			border-radius: 50%;
			float: left;
			margin-right: 10px;
		}
		<!--가로 스크롤 바
		.wrap-vertical{
			width: 275px;
			padding: 20px;
			overflow: scroll;
			color: #112031;
			background: #F0D9FF;
			border: 1px solid #000;
			overflow: auto;
			white-space: nowrap;
		}
		.wrap-vertical::-webkit-scrollbar{
			display: none; 
		}
		-->
	</style>
	<script>
        $.ajaxSetup({
            dataType : "json",
            contentType: 'application/json; charset=utf-8',
			success:function(result){
				alert(result);
			},
			error: function (jqXHR) {
                alert("jqXHR status code:"+jqXHR.status+" message:"+jqXHR.responseText);
            }
		});//ajaxSetup
        function showList() {
            var num = $("#num").val();
            $.ajax({
                type: "GET",
                url: "/cafePost/info/",
                success: function(data) {
                    var htmls ="";
                        if(data.length < 1) {
                            htmls.push("게시물이 없습니다");
                        } else {
                            $(data).each(function(){
                                htmls += '<div class="container1" style="width: 15.6vw; height: 50vh; border: 3px solid black; margin-bottom: 1%; background-color: white;">';
                        		htmls +=	'<div style="margin-left: 4%; margin-top: 3%; float: left; width: 14.3vw;">';<!--작성자-->
                        		htmls +=		'<input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem;" name="id" value="' + this.id + '" disabled/>';
                        		htmls +=	'</div>';
                        		htmls +=	'<div style="margin: 4%; margin-top: 20%; margin-bottom: 0%; width: 14.2vw; border: none; height: 24vh;">';<!--카페사진-->
                        		htmls +=		'<img src="resources/img/coffee.png" id="post_img" name="post_img" alt="이미지" style= "width: 100%; height: 100%;">';
                        		htmls +=	'</div>';
                        		htmls +=	'<div style="margin-left: 4%; float: left;">';<!--카페이름 내용 태그-->
                        		htmls +=		'<input style="display: inline-block; background-color:transparent; border:none; font-size:2.2rem; float: left;" name="post_title" value="' + this.post_title + '" disabled/>';
                        		htmls +=		'<input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;" name="post_text" value="' + this.post_text + '" disabled/>';
                        		htmls +=		'<input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;" name="post_tag" value="' + this.post_tag + '" disabled/>';
                        		htmls +=	'</div>';
                        		htmls += '</div>';
                            });
                        }
                    $("#list").html(htmls);
                }
            });
        }
	</script>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<h1 style="text-align: center; margin-top: 1%; font-family:BernhardFashion BT; font-weight: bold; font-size: 2.4rem;">Cafe_in</h1>
	<div class="container1" style="position: absolute; height: 15vh; width: 18.4vw; left: 25%; top: 10%; background-color: #EAEAEA; border: 3px solid #A0A0A0; border-radius: 20px;">
		<img src="resources/img/coffee.png" style="float: left; margin: 1% 1%;" alt="이미지">
		<input type="text" class="form-control" id="exampleFormControlInput1" style="position: absolute; bottom: 10%; right: 5%; width: 10vw; height: 5vh;" placeholder="검색란">
	</div>
	<div class="container1" style="position: absolute; width: 18.4vw; height: 9vh; left: 25%; top: 27%; background-color: #EAEAEA; border: 3px solid #A0A0A0; border-radius: 20px;">
		<button type="submit" class="btn" style="width: 2.5vw; height: 5vh; background-color: orange; border-radius: 50%; float: left; margin: 4.5% 0px 0px 9%;">a</button>
		<button type="submit" class="btn" style="width: 2.5vw; height: 5vh; background-color: orange; border-radius: 50%; float: left; margin: 4.5% 0px 0px 9%;">b</button>
		<button type="submit" class="btn" style="width: 2.5vw; height: 5vh; background-color: orange; border-radius: 50%; float: left; margin: 4.5% 0px 0px 9%;">c</button>
		<button type="submit" class="btn" style="width: 2.5vw; height: 5vh; background-color: orange; border-radius: 50%; float: left; margin: 4.5% 0px 0px 9%;">d</button>
		<!--나중에 버튼을 동물이미지로 변경?-->
	</div>
	<div class="container1" style="position: absolute; width: 18.4vw; left: 25%; top: 39%; background-color: #EAEAEA;  border: 3px solid #A0A0A0; border-radius: 20px;">
		<button type="button" class="btn btn-outline-warning" style="margin: 7% 3%; width: 3.5vw; height: 4.5vh;">#~~~</button>
		<button type="button" class="btn btn-outline-warning" style="margin: 7% 3%; width: 3.5vw; height: 4.5vh;">#~~~</button>
		<button type="button" class="btn btn-outline-warning" style="margin: 7% 3%; width: 3.5vw; height: 4.5vh;">#~~~</button>
		<button type="button" class="btn btn-outline-warning" style="margin: 7% 3%; width: 3.5vw; height: 4.5vh;">#~~~</button>
		<button type="button" class="btn btn-outline-warning" style="margin: 7% 3%; width: 3.5vw; height: 4.5vh;">#~~~</button>
		<button type="button" class="btn btn-outline-warning" style="margin: 7% 3%; width: 3.5vw; height: 4.5vh;">#~~~</button>
		<button type="button" class="btn btn-outline-warning" style="margin: 7% 3%; width: 3.5vw; height: 4.5vh;">#~~~</button>
		<button type="button" class="btn btn-outline-warning" style="margin: 7% 3%; width: 3.5vw; height: 4.5vh;">#~~~</button>
		<button type="button" class="btn btn-outline-warning" style="margin: 7% 3%; width: 3.5vw; height: 4.5vh;">#~~~</button>
	</div>
	<div class="container1" style="position: absolute; left: 47%; top: 10%; padding: 1%; background-color: #EAEAEA; width: 35vw; border: 3px solid #A0A0A0; border-radius: 20px;">
        <div class="container1" style="width: 15.6vw; height: 50vh; border: 3px solid black; margin-bottom: 1%; background-color: white;">
            <div style="margin-left: 4%; margin-top: 3%; float: left; width: 14.3vw;"><!--작성자-->
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem;" name="id" value="길동" disabled/>
            </div>
            <div style="margin: 4%; margin-top: 20%; margin-bottom: 0%; width: 14.2vw; border: none; height: 24vh;"><!--카페사진-->
                <img src="resources/img/1.png" id="post_img" name="post_img" alt="이미지" style= "width: 100%; height: 100%;">
            </div>
            <div style="margin-left: 4%; float: left;"><!--카페이름 내용 태그-->
                <input style="display: inline-block; background-color:transparent; border:none; font-size:2.2rem; float: left;" name="post_title" value="I❤Coffee" disabled/>
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;text-overflow: ellipsis;" name="post_text" value="동해 번쩍, 서해 번쩍하는 맛입니다." disabled/>
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;" name="post_tag" value="#드립커피 #로스터리" disabled/>
            </div>
        </div>
        <div class="container1" style="width: 15.6vw; height: 50vh; border: 3px solid black; margin-bottom: 1%; background-color: white;">
            <div style="margin-left: 4%; margin-top: 3%; float: left; width: 14.3vw;"><!--작성자-->
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem;" name="id" value="민수" disabled/>
            </div>
            <div style="margin: 4%; margin-top: 20%; margin-bottom: 0%; width: 14.2vw; border: none; height: 24vh;"><!--카페사진-->
                <img src="resources/img/2.png" id="post_img" name="post_img" alt="이미지" style= "width: 100%; height: 100%;">
            </div>
            <div style="margin-left: 4%; float: left;"><!--카페이름 내용 태그-->
                <input style="display: inline-block; background-color:transparent; border:none; font-size:2.2rem; float: left;" name="post_title" value="Lee's 베이커리" disabled/>
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;" name="post_text" value="★신메뉴 출시★" disabled/>
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;" name="post_tag" value="#크루아상 #베이커리" disabled/>
            </div>
        </div>
        <div class="container1" style="width: 15.6vw; height: 50vh; border: 3px solid black; margin-bottom: 1%; background-color: white;">
            <div style="margin-left: 4%; margin-top: 3%; float: left; width: 14.3vw;"><!--작성자-->
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem;" name="id" value="철수" disabled/>
            </div>
            <div style="margin: 4%; margin-top: 20%; margin-bottom: 0%; width: 14.2vw; border: none; height: 24vh;"><!--카페사진-->
                <img src="resources/img/3.png" id="post_img" name="post_img" alt="이미지" style= "width: 100%; height: 100%;">
            </div>
            <div style="margin-left: 4%; float: left;"><!--카페이름 내용 태그-->
                <input style="display: inline-block; background-color:transparent; border:none; font-size:2.2rem; float: left;" name="post_title" value="RE : Cafe" disabled/>
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;text-overflow: ellipsis;" name="post_text" value="리모델링 후 새로 오픈합니다." disabled/>
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;" name="post_tag" value="#인테리어 #DIY" disabled/>
            </div>
        </div>
        <div class="container1" style="width: 15.6vw; height: 50vh; border: 3px solid black; margin-bottom: 1%; background-color: white;">
            <div style="margin-left: 4%; margin-top: 3%; float: left; width: 14.3vw;"><!--작성자-->
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem;" name="id" value="영희" disabled/>
            </div>
            <div style="margin: 4%; margin-top: 20%; margin-bottom: 0%; width: 14.2vw; border: none; height: 24vh;"><!--카페사진-->
                <img src="resources/img/4.png" id="post_img" name="post_img" alt="이미지" style= "width: 100%; height: 100%;">
            </div>
            <div style="margin-left: 4%; float: left;"><!--카페이름 내용 태그-->
                <input style="display: inline-block; background-color:transparent; border:none; font-size:2.2rem; float: left;" name="post_title" value="영진카페" disabled/>
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;" name="post_text" value="아침 8시 ~ 저녁 8시" disabled/>
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem; float: left;" name="post_tag" value="#복현동 #아메리카노" disabled/>
            </div>
        </div>
        <div class="container1" style="width: 15.6vw; height: 50vh; border: 3px solid black; margin-bottom: 1%; background-color: white;">
            <div style="margin-left: 4%; margin-top: 3%; float: left; width: 14.3vw;"><!--작성자-->
                <input style="display: inline-block; background-color:transparent; border:none; font-size:1.1rem;" name="id" value="와이거" disabled/>
            </div>
            <div style="margin: 4%; margin-top: 20%; margin-bottom: 0%; width: 14.2vw; border: none; height: 24vh;"><!--카페사진-->
                <img src="resources/img/whitetiger.png" id="post_img" name="post_img" alt="이미지" style= "width: 100%; height: 100%;">
            </div>
            <div style="margin-left: 4%; float: left;"><!--카페이름 내용 태그-->
                <input style=" background-color:transparent; border:none; font-size:2.2rem; float: left;" name="post_title" value="백호카페" disabled/>
                <input style="background-color:transparent; border:none; font-size:1.1rem; float: left;text-overflow: ellipsis;" name="post_text" value="방학기간 학교#카페는 휴가입니다" disabled/>
                <input style=" background-color:transparent; border:none; font-size:1.1rem; float: left;" name="post_tag" value="#영진전문대 #카페" disabled/>
            </div>
        </div>
        <div id="list">
        </div>
	</div>
	<div class="bar" style="width: 5vw;">
		<a href="메인화면">
			<img src="https://user-images.githubusercontent.com/102495801/167056604-ed2c2e9c-426d-455b-84f9-54bb4f82a0c2.png" alt="main_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
		</a>
		<a href="카페글쓰기">
			<img src="https://user-images.githubusercontent.com/102495801/167056127-afdaad04-d13b-4a33-a4c0-9c2d8904ead8.png" alt="write_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
		</a>
		<a href="사용자마이페이지">
			<img src="https://user-images.githubusercontent.com/102495801/167056576-0a2c3920-d8f8-47b2-bdcb-dd4d2a9cd205.png" alt="mypage_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
		</a>
	</div>
	<script>
        showList('list');
    </script>
</body>
</html>