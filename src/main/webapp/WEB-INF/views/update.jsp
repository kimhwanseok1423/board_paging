<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update.jsp</title>
</head>
<body>
    <form action="/board/update" method="post" name="updateForm">
        <input type="hidden" name="id" value="${board.id}" readonly>
        <input type="text" name="boardWriter" value="${board.boardWriter}" readonly>
        <input type="text" name="boardPass" id="boardPass" placeholder="비밀번호">
        <input type="text" name="boardTitle" value="${board.boardTitle}">
        <textarea name="boardContents" cols="30" rows="10">${board.boardContents}</textarea>
        <input type="button" value="수정" onclick="updateReqFn()">
    </form>
    <!--readonly 수정불가하게 만들기   textarea는 value를 안쓰고 저런식으로 쓴다고함 -->
</div>
</body>
<script>
    const updateReqFn = () => {
        const passInput = document.getElementById("boardPass").value;  <!--사용자가 입력한 boardPass를 가져왔다. -->
        const passDB = '${board.boardPass}';
        if (passInput == passDB) {
            document.updateForm.submit();   <!--form action에 있는 name값인 updateForm이 적용된 요소가있으면 submit을 하겠다 -->
        } else {
            alert("비밀번호가 일치하지 않습니다!!");
        }
    }
</script>
</html>