<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 공통패키지 -->
<%@page import="drama.ListController"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>한국 최신 드라마 리스트</title>
<link rel="stylesheet" href="css/drama.css">
</head>
<body>
	<!-- 한국 최신 드라마 리스트 -->
	<table class="tbl" id="drama">
		<!-- 
           테이블 기본 사이간극은
           border="1" 속성을 넣고 확인해 본다!
           없애려면 CSS에서
           border-collapse:collapse 설정함!
        -->
		<!-- 1.테이블제목 -->
		<caption>한국 최신 드라마 리스트</caption>
		<!-- 2.테이블 머릿부분 -->
		<thead>
			<tr>
				<th>번호</th>
				<th>드라마명</th>
				<th>주연</th>
				<th>제작사</th>
				<th>구분</th>
				<th>방영시간</th>
				<th>방영횟수</th>
			</tr>
		</thead>

		<%
			/////// 동적 데이터 바인딩 영역 //////////

		// POST 방식의 한글처리
		request.setCharacterEncoding("UTF-8");
		
		// 페이지번호 파라미터 받기(만약없으면 null이므로 "1"할당!)
		String pgNum = request.getParameter("pgnum");
		if(pgNum==null) pgNum="1";
		
		// 리스트 컨트롤러 생성하기 
		ListController listcon = new ListController();

		/////////////////////////////////////////////////
		%>

		<!-- 3.테이블 메인부분 -->
		<tbody>
			<%=listcon.setList(pgNum)%>
		</tbody>

		<!-- 4.테이블 하단부분-->
		<tfoot>
			<tr>
				<td colspan="7">◀ <%=listcon.setPaging()%> ▶</td>
			</tr>
		</tfoot>
	</table>

	<!-- 입력페이지 이동버튼 -->
	<div class="gubun" onclick="location.href='insert.jsp'"
		style="text-align: right; margin-bottom: 50px;">
		<button style="font-size: 24px;">입력하기</button>
	</div>

	<!-- 구분테이블 박스 -->
	<div class="gubun">
		<table class="tbl" id="gubun">
			<tr>
				<td rowspan="4">구분</td>
				<td>월화:월화드라마</td>
				<!-- 
                        rowspan 속성은 위아래 행을 합치는 속성
                        여기서는 4줄을 합치므로 값을 4로 설정함
                        아래쪽 행에서는 첫번째 td를 모두 쓰지 않는다!
                        row는 "행/줄"의 뜻
                     -->
			</tr>
			<tr>
				<td>수목:수목드라마</td>
			</tr>
			<tr>
				<td>금토:금토드라마</td>
			</tr>
			<tr>
				<td>토일:토일드라마</td>
			</tr>
		</table>
	</div>

	<!-- 
            [ 가장 복잡한 그룹요소인 테이블!!! ]
            1. table : 테이블 전체 부모요소
            2. tr : 테이블 레코드행 (table row)
            3. td : 테이블 데이터요소 (table data)
            4. th : 테이블 머릿부분에 사용될 경우 
            td대신 th를 사용할 수 있다.
            (기본디자인-중앙정렬+두꺼운글자)
            ________________________________  
            (테이블 구조를 위한 추가요소들)
            5. caption : 테이블 제목
            6. thead : 테이블 머릿부분
            7. tbody : 테이블 중앙 내용부분
            8. tfoot : 테이블 하단부분

            ※tbody는 일반적으로 table tr td 로 구성하는
            테이블일 경우 자동으로 생성되어 표시된다!

         -->


</body>
</html>