package common;

public class PagingDTO {
	
	// ***** 페이징 변수 ****** 
	// 1.시작 레코드번호 : LIMIT의 시작값
	private int startNum;
	// 2.페이지당 레코드개수 : LIMIT의 개수
	private int onePageCnt = 3;
	// 3.전체 레코드수
	private int totalCnt = 0;
	// 4.리스트 그룹수 : 전체개수 ÷ 페이지당개수
	private int listGroup = 0;
	// 5.남은 레코드수 : 리스트 그룹에서 남은 레코드수
	private int etcRecord = 0;
	// 6.페이징링크 코드 저장변수
	private String pgCode = "";
	// 파라미터 형변환 변수(현재 페이지번호)
	private int pageSeq = 1; // 기본값 1(파라미터가 없으면 1들어감!)
	// 한계수 체크: 나머지가 있고 없고에 따라 1개차이남
	private int limit; 

}
