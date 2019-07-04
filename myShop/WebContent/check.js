/**
 * 
 */


	function check(){
		var Ctitle = document.forms['insertForm']['title'].value;
		if(Ctitle == null || Ctitle.length <2){
			alert("상품명을 2자 이상 입력하세요");
		}
		else{
			alert("적합한 상품명 입니다.");
		}
	}
