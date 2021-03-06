<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/common/mainInclude.jsp">
	<jsp:param value="멤버쉽 구매" name="pageTitle"/>
</jsp:include>
<script>
$(function(){
    $(".price").on('click',function(e){
	
		$(".price").css("background-color","white")
        .css("color","#2756a6")
	
	
        $(e.target).css("background-color","#2756a6")
                .css("color","white");
        
    });
    
    $(".addbtn").on('click', function(){
    	$(".membership-third").css("display","block");
    	
    });

    
})
</script>
 <section>
   <article class="membership-first">
       <div class="title-container font-kor">
           <p class="p-title bold">멤버십 구매</p>
           <p class="p-content" style="color:#606060;">멤버십 구매해서 ifwe를 더욱 풍부하게 즐겨보세요!</p>
       </div>
   </article>
   <article class="membership-second">
       <div class="grade" id="primieum">
           <div class="grade-icon"><i class="fas fa-crown" style="color:#c332f1;"></i></div>
           <div class="grade-content">
               <p class="p-grade-ko font-kor">프리미엄</p>
               <p class="p-grade-en bold">PRIMIEUM</p>
               <ul>
                       <p> <li class="font-kor" ><i class="fas fa-circle" style="color:#2756a6;font-size:0.5em; margin-right:10px;"></i>소모임 인원 추가</li></p>
                       <p> <li class="font-kor"><i class="fas fa-circle" style="color:#2756a6;font-size:0.5em; margin-right:10px;"></i>게시판 개수 추가</li></p>
               </ul>
           </div>
           <div class="grade-price" id="primieumbtn">
               <button class="price font-kor" >
                   9,900원 / 90일
               </button>
           </div>
       </div>
       <div class="choice-container">
               <div class="choice">
                   <div class="choice-title bold" >적용할 소모임 선택</div>
                   <div class="choice-checkbox font-kor">
                       <input type="checkbox" name="membership-club1" id="membership-club1" value="윙스터디 모임"><label for="membership-club1" >윙스터디 모임</label>
                   </div>

                   <div class="choice-checkbox font-kor">
                   <input type="checkbox" name="membership-club2" id="membership-club2" value="윙스터디 모임" ><label for="membership-club2" >윙스터디 모임</label>
                   </div>
                  
               </div>
               <div class="add">
                   <button class="addbtn font-kor">담기</button>
               </div>
           </div>
       <div class="grade" id="gold">
           <div class="grade-icon"><i class="fas fa-crown" style="color:#ffc863;" ></i></div>
           <div class="grade-content" >
               <p class="p-grade-ko font-kor">골드</p>
               <p class="p-grade-en bold">GOLD</p>
               <ul >
                       <p><li class="font-kor" ><i class="fas fa-circle" style="color:#2756a6;font-size:0.5em; margin-right:10px;"></i>소모임 인원 추가</li></p>
                       <p> <li class="font-kor"><i class="fas fa-circle" style="color:#2756a6;font-size:0.5em; margin-right:10px;"></i>게시판 개수 추가</li></p>
               </ul>
           </div>
           <div class="grade-price font-kor">
               <button class="price font-kor" id="goldbtn" >
                    5,900원 / 60일
               </button>
           </div>
       </div>
       <div class="grade" id="silver">
           <div class="grade-icon"><i class="fas fa-crown" style="color:#c7c7c7;"></i></div>
           <div class="grade-content" >
               <p class="p-grade-ko font-kor">실버</p>
               <p class="p-grade-en bold">SILVER</p>
               <ul>
                   <p><li class="font-kor" ><i class="fas fa-circle" style="color:#2756a6;font-size:0.5em; margin-right:10px;"></i>소모임 인원 추가</li></p>
                   <p> <li class="font-kor"><i class="fas fa-circle" style="color:#2756a6;font-size:0.5em; margin-right:10px;"></i>게시판 개수 추가</li></p>
                </ul>
            </div>
            <div class="grade-price font-kor">
                <button class="price font-kor" id="siverbtn" >
                     3,900원 / 30일
                </button>
            </div>
        </div>
      
    </article>
    <article class="membership-third" style="display:none;">
        <div class="payment-container" >
            <div class="list-container">
                <div class="payment-title font-kor">
                    <div class="membership-name"><p>멤버십 명</p></div>
                    <div class="club-name "><p>소모임 명</p></div>
                    <div class="duration "><p>기간</p></div>
                    <div class="payment-price"><p>가격</p></div>
                </div>
                <div class="payment-lists">
                <div class="payment-list font-kor">
                    <div class="name-checkbox bold">
                        <input type="checkbox" name="membership-name1" id="membership-name1"><label for="membership-name1" >프리미엄 PRIMIEUM</label>
                    </div>
                    <div class="list-club bold" ><p>윙스터디 모임</p></div>
                    <div class="list-duration "><p >90일 사용</p></div>
                    <div class="list-price bold" ><p>9900원</p></div>
                </div>
                <div class="payment-list font-kor">
                        <div class="name-checkbox bold">
                            <input type="checkbox" name="membership-name2" id="membership-name2"><label for="membership-name2" >프리미엄 PRIMIEUM</label>
                        </div>
                        <div class="list-club bold"><p >윙스터디 모임</p></div>
                        <div class="list-duration "><p>90일 사용</p></div>
                        <div class="list-price bold"><p >9900원</p></div>
                    </div>
               
                   
                </div>
                <div class="result-container">
                    <div class="payment-border"><hr></div>
                        <div class="payment-result">
                            <p class="result-name font-kor"  >프리미엄 PRIMIEUM / 2개</p><p class="result-price bold" >19800 원</p>
                        </div>
                </div>
        
         	</div>  
        </div>
         		<div class="payment">
            <button class="paymentbtn font-kor">결제하기</button>
        		</div>
    </article>
</section>






</body>
</html>