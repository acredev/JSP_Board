# 📌 Simple_Board
>경민대학교 융합소프트웨어과 2학년 A반 2학기<br>JSP기초 14주차 과제

## ⚙️ 개발환경
<a href="https://github.com/acredev/JSP_SimpleBoard"><img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=EclipseIDE&logoColor=white"/></a>
<a href="https://github.com/acredev/JSP_SimpleBoard"><img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white"/></a>
<a href="https://github.com/acredev/JSP_SimpleBoard"><img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=for-the-badge&logo=ApacheTomcat&logoColor=black"/></a><br>

<a href="https://github.com/acredev/JSP_SimpleBoard"><img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"/></a>
<a href="https://github.com/acredev"><img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/></a>
<a href="https://github.com/acredev"><img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/></a>

## 💾 ERD 설계도
![Untitled](https://user-images.githubusercontent.com/3482382/206259936-ec701170-a1c5-422c-be7e-494b2ee47eab.png)<br>

## 🌐 웹 페이지 구성
![image](https://user-images.githubusercontent.com/3482382/206260352-b18bea71-8852-488f-ac3b-5d06b2df0b02.png)<br>
  * `Apache Tomcat` 서버를 `localhost`에서 구동 후, `main.html` 파일을 `open` 합니다.
    * 서버 미구동시, `.jsp`파일을 작동시킬 수 없습니다.
    * `button`에 마우스 `hover`시 색이 진해집니다.<br><br><br>


![image](https://user-images.githubusercontent.com/3482382/206260431-3b5be235-98d6-4dbc-bacc-5f8e189a1450.png)<br>
  * 게시글 목록이 먼저 출력됩니다.
    * `신규 게시글 작성` : 신규 게시글 작성 (`post_new.jsp`)<br>
    * `수정` : 기존 게시글 수정 (`post_modify.jsp`)<br>
    * `삭제` : 기존 게시글 삭제 (`post_delete.jsp`)<br><br><br>


![image](https://user-images.githubusercontent.com/3482382/206260410-c30e20ea-38dd-439d-b9e6-8eefc92eca65.png)<br>
  * 신규 게시글 작성 화면입니다.
    * `저장` : 신규 게시글 저장 (`post_new_send.jsp`)<br>
    * `목록으로` : 게시글 목록으로 돌아가기 (`post_list.jsp`)<br>
    * `입력내용 초기화` : `textbox`의 내용을 `reset`<br><br><br>
 
![image](https://user-images.githubusercontent.com/3482382/206260456-1d4a3f35-7c27-45c6-a435-5307ebcd4b4a.png)<br>
  * 기존 게시글 상세 열람 화면입니다.
    * `신규 게시글 작성` : 신규 게시글 작성 (`post_new.jsp`)<br>
    * `돌아가기` : 게시글 목록으로 돌아가기 (`post_list.jsp`)<br><br><br>
  
![image](https://user-images.githubusercontent.com/3482382/206260490-83ae8feb-69bf-4593-9db4-6206ad59674d.png)<br>
  * 기존 게시글 수정 화면입니다.
    * `글 수정하기` : 기존 게시글의 수정한 내역을 저장 (`post_modify_send.jsp`)<br>
    * `내용 원상복귀` : `textbox`의 내용을 원래 있던 내용으로 `reset`<br>
    * `목록으로 돌아가기` : 게시글 목록으로 돌아가기 (`post_list.jsp`)
