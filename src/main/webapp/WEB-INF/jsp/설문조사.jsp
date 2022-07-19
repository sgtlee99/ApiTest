<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script>
	function doOpenCheck1(chk){
		var obj = document.getElementsByName("aaa");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	}
	function doOpenCheck2(chk){
		var obj = document.getElementsByName("bbb");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	}
	function doOpenCheck3(chk){
		var obj = document.getElementsByName("ccc");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	}
	function doOpenCheck4(chk){
		var obj = document.getElementsByName("ddd");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	}
    function doOpenCheck5(chk){
		var obj = document.getElementsByName("eee");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	}
    function doOpenCheck6(chk){
		var obj = document.getElementsByName("fff");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	}
	</script>
	<style>
		.container {
			float: center;
			width: 25vw;
			text-align: left;
			margin: 1% auto;
			border: 5px solid gray;
			border-radius: 20px;
		}
		.s1 {
			width: 95%;
			margin: 10px auto;
		}
	</style>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<h2 style="text-align: center; margin-top: 8%; font-family:BernhardFashion BT; font-weight: bold;;">Cafe_in</h2>
	<div class="container">
		<h5 style="margin-top: 3%;">카페사용목적1</h5>
		<div class="s1">
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="aaa" onclick="doOpenCheck1(this);">
				<label class="form-check-label" for="flexCheckDefault">
					커피
				</label>
			</div>
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="2" id="flexCheckDefault" name="aaa" onclick="doOpenCheck1(this);">
				<label class="form-check-label" for="flexCheckDefault">
					디저트
				</label>
			</div>
		</div>
		<h5 style="">카페사용목적2</h5>
				<div class="s1">
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="bbb" onclick="doOpenCheck2(this);">
				<label class="form-check-label" for="flexCheckDefault">
					데이트
				</label>
			</div>
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="2" id="flexCheckDefault" name="bbb" onclick="doOpenCheck2(this);">
				<label class="form-check-label" for="flexCheckDefault">
					공부
				</label>
			</div>
		</div>
		<h5 style="">선호하는커피종류</h5>
				<div class="s1">
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="ccc" onclick="doOpenCheck3(this);">
				<label class="form-check-label" for="flexCheckDefault">
					아메리카노
				</label>
			</div>
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="2" id="flexCheckDefault" name="ccc" onclick="doOpenCheck3(this);">
				<label class="form-check-label" for="flexCheckDefault">
					라떼
				</label>
			</div>
		</div>
		<h5 style="">선호하는디저트종류(디저트를 체크한 사람만)</h5>
				<div class="s1">
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="ddd" onclick="doOpenCheck4(this);">
				<label class="form-check-label" for="flexCheckDefault">
					마카롱
				</label>
			</div>
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="2" id="flexCheckDefault" name="ddd" onclick="doOpenCheck4(this);">
				<label class="form-check-label" for="flexCheckDefault">
					케이크
				</label>
			</div>
		</div>
		<h5 style="">카페정보를 찾을때 사용하는 sns</h5>
				<div class="s1">
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="eee" onclick="doOpenCheck5(this);">
				<label class="form-check-label" for="flexCheckDefault">
					인스타
				</label>
			</div>
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="2" id="flexCheckDefault" name="eee" onclick="doOpenCheck5(this);">
				<label class="form-check-label" for="flexCheckDefault">
					블로그
				</label>
			</div>
		</div>
		<h5 style="">좋아하는 카페 분위기</h5>
				<div class="s1">
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="fff" onclick="doOpenCheck6(this);">
				<label class="form-check-label" for="flexCheckDefault">
					조용한개인카페
				</label>
			</div>
			<div class="form-check" style="">
				<input class="form-check-input" type="checkbox" value="2" id="flexCheckDefault" name="fff" onclick="doOpenCheck6(this);">
				<label class="form-check-label" for="flexCheckDefault">
					화려한대형카페
				</label>
			</div>
		</div>
		<div class="col-auto">
			<button type="submit" class="btn btn-primary" style="width: 99%; color: white; background-color: red; margin: 3% auto; border: none;" onclick="location.href='설문조사후그룹'">다음</button>
		</div>
	</div>
</body>
</html>