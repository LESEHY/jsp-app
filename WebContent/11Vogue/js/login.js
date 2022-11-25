// 보그 PJ 로그인 페이지 JS - login.js

//////// 제이쿼리 코드블럭 //////////////////
$(() => {

    console.log("로딩완료!");

    // 대상1 : 아이디 입력요소
    let mid = $('#mid');
    // 대상2 : 비밀번호 입력요소
    let mpw = $('#mpw');

    // 로그인 버튼 클릭시
    $('#sbtn').click(e => {
        // 1. 기본이동막기(submit버튼의 기본기능)
        e.preventDefault();

        // 2. 아이디/비번 빈값 여부확인
        // val() 입력된 값 읽어오기
        // trim() 앞뒤공백제거
        if (mid.val().trim() === "" ||
            mpw.val().trim() === "") {
                alert('아이디와 비밀번호 모두 입력해주세요!');
                mid.val('').focus();// 아이디 지우고 포커스감
                mpw.val('');//비번 지우기
        } ////////// if /////////////
        else{
            // 서브밋 하기 : action 지정 process/loginSet.jsp로 전송
            $(".logF").submit();


            // alert('로그인에 성공하였습니다!');
            // 실제 서버에서는 아이디/비번 확인후
            // 아이디가 없으면 '없는 아이디입니다'
            // 아이디가 있으나 비번이 틀리면 '비밀번호를 확인해주세요'
            // 일치하면 성공 메시지를 첫페이지로 리로드해준다!
            // Ajax 코딩이 여기에 필요함!!!
        } ///////// else ////////////



    }); //////////// click ///////////////

}); //////////// jQB /////////////////////////