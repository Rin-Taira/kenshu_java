<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
    request.setCharacterEncoding("UTF-8");
    String inputName = request.getParameter("name");
    int inputAge;
    if (request.getParameter("age").equals("")) {
    	inputAge = 0;                  //ageの入力がない場合
    } else {
    	inputAge = Integer.parseInt(request.getParameter("age"));
    }
	String inputBloodType = request.getParameter("bloodType");
    // ロボットからの返信用メッセージ作成

%>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <title>Java基礎_演習問題3</title>
    </head>
    <body>
        <h1>Java基礎 - 演習問題3</h1>
        <h2>ロボットからの返信</h2>
        <div>
            <!-- 必要に応じて処理を変更してください  -->
            <%
            out.println("<p>こんにちは、");
            if (inputName == "") {
                out.println("名無し");
            } else {
                out.println(inputName);
            }
            out.println("さん！");
            if (inputName.equals("ロボット")) {
                out.println("私と同じ名前ですね！");
            }
            out.println("</p>");
            if (inputAge == 20) {
                out.println("<p>私と同い年なんですね！</p>");
            } else if (inputAge > 20) {
                out.println("<p>私よりも" + (inputAge - 20) + "歳年上ですね。</p>");
            } else {
                out.println("<p>私よりも" + (20 - inputAge) + "歳年下ですね。</p>");
            }
            switch(inputBloodType) {
            case "typeA":
                out.println("<p>私もA型です！</p>");
                break;
            case "typeB":
                out.println("<p>B型の人と話すのは初めてです。</p>");
                break;
            case "typeAB":
                out.println("<p>私の母がAB型です。</p>");
                break;
            case "typeO":
                out.println("<p>私の父がO型です。</p>");
                break;
            }
            %>
        </div>
        <a href="javaBasic3_input.jsp">戻る</a>
    </body>
</html>