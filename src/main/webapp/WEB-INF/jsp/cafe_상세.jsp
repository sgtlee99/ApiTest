<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<h1 style="text-align: center; margin-top: 1%; font-family:BernhardFashion BT; font-weight: bold; font-size: 2.4rem;">Cafe_in</h1>
<div class="container1" style="position: absolute; border-bottom: 1px solid black; left: 25%; top: 10%; background-color: #EAEAEA; border: 3px solid #A0A0A0; border-radius: 20px;">
  <img src="https://icon-icons.com/icons2/510/PNG/128/coffee_icon-icons.com_50414.png" style="float: left; width: 7vw;" alt="이미지">
</div>
<div class="bar" style="width: 5vw;">
  <a href="메인화면">
    <img src="https://user-images.githubusercontent.com/102495801/167056604-ed2c2e9c-426d-455b-84f9-54bb4f82a0c2.png" alt="main_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
  </a>
  <a href="cafe_Board">
    <img src="https://user-images.githubusercontent.com/102495801/167056127-afdaad04-d13b-4a33-a4c0-9c2d8904ead8.png" alt="write_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
  </a>
  <a href="마이페이지 사용자">
    <img src="https://user-images.githubusercontent.com/102495801/167056576-0a2c3920-d8f8-47b2-bdcb-dd4d2a9cd205.png" alt="mypage_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
  </a>
</div>
<div class="container1" style="position: absolute; left: 35%; top: 10%; padding: 1%; width: 35vw; border: 3px solid #A0A0A0; border-radius: 20px; background-color: #FDF2E9;">
  <div style="border-bottom: 2px solid black; height: 6vh;">
    <img src="https://user-images.githubusercontent.com/102495751/167248594-2f214c14-5c6d-4156-816d-b796147e5c6c.png" alt="♡_img" style="float: right; width: 1.5vw;">
    <h2>홍길동의카페</h2>
  </div>
  <div class="col-auto" style="margin-top: 2%; height: 9vh;">
    <button type="button" class="btn btn-primary" style="float:left; width: 15vw; height: 7.5vh; color: white; background-color: orange; border: none; font-size: 2.4rem;" onclick="location.href='카페정보.html'";>정보</button>
    <button type="button" class="btn btn-primary" style="float:right; width: 15vw; height: 7.5vh; color: white; background-color: orange; border: none; font-size: 2.4rem;" onclick="location.href='cafe_Board'";>게시글</button>
  </div>
  <!--그룹별추천
  <div style="margin-top: 45px; margin-left: 10px; float: center;">
          <img src="" alt="(a)">5
          <img src="" alt="(b)">9
          <img src="" alt="(c)">1
          <img src="" alt="(d)">7
  </div>
  -->
  <div class="container1" style="width: 32.5vw; margin: 2% 0px;">
    <div class="container1" style="margin: 2% 0px; border: 1px solid black;">닉네임</div>
    <button type="submit" class="btn" style="float: left; margin-left: 4%; width: 2.5vw; height: 5vh; background-color: orange; border-radius: 50%;">A</button>
    <div class="container1" style="margin: 2% 0px; float: right; border: 1px solid black;">게시일</div>
  </div>
  <div class="container1" style="width: 32.5vw; margin: 2% 0px; border: 1px solid black;">
    <div class="container1" style="">제목</div>
  </div>
  <div class="container1" style="width: 32.5vw;">
    <div style="width: 8vw; border: 1px solid black; height: 16vh; float:left;"><!--카페사진-->
      <img src="" alt="이미지">
    </div>
    <div style="margin-left: 2%; width: 8vw; border: 1px solid black; height: 16vh; float:left;">
      <img src="" alt="이미지">
    </div>
    <div style="margin-left: 2%; width: 8vw; border: 1px solid black; height: 16vh; float:left;">
      <img src="" alt="이미지">
    </div>
  </div>
  <div class="container1" style="width: 32.5vw; height: 30vh; margin-top: 2%; border: 1px solid black;">내용</div>
  <button type="button" class="btn btn-primary" style="float:right; margin-top: 2%; color: white; background-color: orange; border: none; width: 4vw; height: 4vh;" onclick="location.href='cafe_Write'";>뒤로</button>
</div>
</body>
</html>