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
  <a href="메인화면.html">
    <img src="https://user-images.githubusercontent.com/102495801/167056604-ed2c2e9c-426d-455b-84f9-54bb4f82a0c2.png" alt="main_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
  </a>
  <a href="카페글쓰기.html">
    <img src="https://user-images.githubusercontent.com/102495801/167056127-afdaad04-d13b-4a33-a4c0-9c2d8904ead8.png" alt="write_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
  </a>
  <a href="마이페이지 사용자.html">
    <img src="https://user-images.githubusercontent.com/102495801/167056576-0a2c3920-d8f8-47b2-bdcb-dd4d2a9cd205.png" alt="mypage_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
  </a>
</div>
<div class="container1" style="position: absolute; left: 35%; top: 10%; padding: 1%; width: 35vw; border: 3px solid #A0A0A0; border-radius: 20px;">
  <form name="" action="" method="get"><!--form태그를 넣어봤는데 추후에 서버에 실적용이 되는지 모르겠다-->
    <div style="border-bottom: 2px solid black; height: 6vh;">
      <h2>카페 글쓰기</h2>
    </div>
    <textarea placeholder="카페이름" style="resize: none; width: 32.5vw; height: 3.5vh; margin-top: 2%;"></textarea>
    <textarea placeholder="홍보내용" style="resize: none; width: 32.5vw; height: 30vh; margin-top: 2%;"></textarea>
    <div style="float: left; margin-top: 2%;">파일첨부</div>
    <div class="col-auto" style="float: right;">
      <button type="button" class="btn btn-primary" style="color: white; background-color: orange; border: none; width: 4vw; height: 4vh;">변환</button>
      <!--홍보내용만 submit할수있는 방법이 없을까..?-->
    </div>

    <div class="container1" style="width: 32.5vw; padding: 2%;">
      <div style="width: 8vw; border: 1px solid black; height: 16.5vh; float:left;"><!--카페사진-->
        <img src="" alt="이미지">
      </div>
      <div style="margin-left: 2%; width: 8vw; border: 1px solid black; height: 16.5vh; float:left;">
        <img src="" alt="이미지">
      </div>
      <input type="file" accept="image/*," multiple required style="float: left; margin-top: 2%;"/>
    </div>
    <textarea placeholder="태그입력" style="resize: none; width: 32.5vw; height: 3.5vh; margin-top: 2%;"></textarea>
    <div class="container1" style="border: 1px solid black; width: 32.5vw; margin: 2% 0px;">자동태그</div>
    <div class="col-auto" style="float: right;">
      <button type="submit" class="btn btn-primary" style="color: white; background-color: orange; border: none; width: 4vw; height: 4vh;" onclick="location.href='메인화면.html'">완료</button>
    </div>
  </form>
</div>
</body>
</html>