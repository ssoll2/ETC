<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 이름 - 회원가입 </title>
    <style>
      * {margin: 0; padding: 0;}
      body {background: #ddd;}
      a {text-decoration: none;}
    .blind { position:absolute; top: 0; left: 0;  text-indent:-999999999px; width: 0;height: 0; font-size: 0;}  
    /* 회원가입 입력창 */
    #wrap #join {width: 1000px; height: 800px; margin: 0 auto;
    padding-top: 100px; background: #fff;
    }

    #wrap #join h1 {color: #999; font-size: 25px; margin: 20px 0 30px 100px;}
    #wrap #join form.basic_info {
        width: 800px; border:1px solid #dfdfdf; margin-left: 100px;
    }
    form.basic_info h2 {width: 760px; font-size: 18px; font-weight: bold;
    padding: 15px 0 10px 0;
    margin-left: 20px; color: #333; border-bottom: 1px solid #dfdfdf;
    }
    form.basic_info h2 span {font-size: 13px; margin-left: 7px; font-weight: normal;
    color: #aaa9a9;
    }
    form.basic_info h2 span strong {color: #da526d;}

    form.basic_info table {margin-top: 25px; font-size: 12px;}
    tr, th, td {height: 40px; line-height: 40px;}
    form.basic_info table p {line-height: 1.5; margin-bottom: 5px; color: #aaa9a9;}
    form.basic_info table p.info {padding: 15px 0 20px 0;}
    form.basic_info table p.info em{font-weight: bold; color: #aaa9a9;}
    form.basic_info table tr span{color: #da526d;}
    form.basic_info table tr th{float:left; padding: 0 0 0 25px; vertical-align: middle;}
    form.basic_info table tr td{ padding: 0 0 0 50px; }
    form.basic_info table tr input{height: 20px; margin: 0 3px 0 3px;
    border:1px solid #d4d4d4; background: #e9e9e9; color: #333; 
    vertical-align: middle;
    }
    form.basic_info table tr td.mobile input {margin-top: 0;
         margin-bottom: 0; height: 18px; vertical-align: middle;}

         form.basic_info table tr td.mobile select {
            margin-left: 3px;
         }
         form.basic_info table tr td span {margin: 0 0 10px 0; height: 15px;
        color: #da526d; padding-left: 5px;
        }

        form.basic_info table tr td select {vertical-align: middle;
            border:1px solid #d4d4d4; background: #e9e9e9; height: 20px; color: #333;
        }





   </style>
</head>
<body>
    <!-- #wrap>#join>h1{회원가입}+form.basic_info -->
    <div id="wrap">
        <div id="join">
            <h1>회원가입</h1>
            <form class="basic_info" method="post">
                <legend class="blind">기본정보입력</legend>
                <!-- h2>span>strong -->
                <h2>기본정보입력화면<span>입력 항목 중<strong>*</strong>표시된 항목은
                필수 입력 항목 </span>                
                </h2>
                <!-- 입력양식 -->
                <!-- table>caption.blind{기본정보입력화면} -->
                <table>
                    <caption class="blind">기본정보입력화면</caption>

                  <!-- tbody>tr>th>label>img       -->
                  <tbody>
                    <!-- id -->
                    <tr>
                        <th><label for="useId"><img src="./images/id.gif" alt="아이디/필수"></label></th>
                        <!-- td>input>span -->
                        <td><input type="text" id="useId" maxlength="12">
                            <span>영문으로 시작하는 6~12자리 영문, 숫자, 특수문자만 가능합니다.</span>
                        </td>
                    </tr>
                    <!-- pw -->
                    <tr>
                        <th><label for="usePw"><img src="./images/pw.gif" alt="비밀번호/필수"></label></th>
                        <!-- td>input>span -->
                        <td><input type="password" id="usePw" maxlength="12">
                            <span>비밀번호를 입력하여주시기 바랍니다.</span>
                        </td>
                    </tr>

                    <!-- pw2 -->
                    <tr>
                        <th><label for="usePwch"><img src="./images/pw_ok.gif" alt="비밀번호확인/필수"></label></th>
                        <!-- td>input>span -->
                        <td><input type="password" id="usePwch" maxlength="12">
                            <span>비밀번호를 다시 입력하여주시기 바랍니다.</span>
                        </td>
                    </tr>

                    <!-- name -->
                    <tr>
                        <th><label for="useName"><img src="./images/name.gif" alt="이름/필수"></label></th>
                        <!-- td>input>span -->
                        <td><input type="text" id="useName" maxlength="12"></td>
                    </tr>
                    
                    <!-- birthday -->
                    <tr>
                        <th><label for="birthday"><img src="./images/birthday.gif" alt="생년월일/필수"></label></th>
                        <!-- td>input>span -->
                        <td>
                            <input type="text" id="birthday" size="4" title="년도" /> 년
                            <input type="text" id="birthday2" size="3" title="월"/> 월
                            <input type="text" id="birthday3" size="3" title="일"/> 일

                            <!-- 양력/음력 채크 -->
                            <input type="radio" id="solar_calendar" name="calendar" checked="checked" />
                            <label for="solar_calendar">양력</label>

                            <input type="radio" id="solar_calendar2" name="calendar" />
                            <label for="solar_calendar2">음력</label>
                        </td>
                    </tr>
                    <!-- 이메일 입력 -->
                    <tr>
                        <th><label for="useEmail"><img src="./images/email_ok.gif" alt="이메일/필수"></label></th>
                        <td>
                            <input type="text" title="이메일 아이디 입력" id="useEmail">
                            &#64;
                            <input type="text" title="이메일 서비스 회사 입력" id="useEmail2">
                            <!-- select>option*4 -->
                            <select>
                                <option value="#">도메인 선택</option>
                                <option value="#">naver.com</option>
                                <option value="#">daum.net</option>
                                <option value="#">gmail.com</option>
                            </select>
                            <!-- p.info>em+span -->
                            <p class="info"><em>보유하신 이메일</em>을 입력해주세요. <br />
                                <span>정확한 이메일 주소</span>를 입력해주시기 바랍니다.</p>
                        </td>
                    </tr>

                    <!-- 수신여부확인 -->
                    <!-- tr>th>label>img -->
                    <tr>
                        <th><label for="Email"><img src="./images/email.gif" alt="이메일수신여부/필수"></label></th>
                        <td>
                            <p>
                                <input type="radio" name="recive" id="agreement" checked="checked">
                                <label for="agreement">모두수신(공연,행사 알림 / 이벤트소식)</label>

                                <input type="radio" name="recive" id="agreement2">
                                <label for="agreement2">수신거부</label>                        
                            </p>
                        </td>
                    </tr>


                    <!-- 휴대폰 -->
                    <tr>
                        <th><label for="usePhone"><img src="./images/phone.gif" alt="휴대폰번호/필수"></label></th>
                        <!-- td.mobile>select>option*3 -->
                        <td class="mobile">
                            <!-- 통신사 -->
                            <select title="통신사">
                                <option value="#">SKT</option>
                                <option value="#">KT</option>
                                <option value="#">LGU</option>
                            </select>
                            <!-- 앞번호 -->
                            <select title="앞번호입력">
                                <option value="#">010</option>
                                <option value="#">011</option>
                                <option value="#">016</option>
                                <option value="#">017</option>
                                <option value="#">018</option>
                                <option value="#">019</option>
                            </select>
                            <!-- 뒷번호 -->
                            - 
                            <input type="text" id="usePhone" maxlength="4" size="8">
                            -
                            <input type="text" id="usePhone2" maxlength="4" size="8">

                        </td>
                    </tr>
                    <!-- SMS 문자수신여부 -->
                    <tr>
                        <th><img src="./images/sms.gif" alt="문자수신여부/필수"></th>
                        <td>
                            <p>
                                <input type="checkbox" id="allAgree" checked="checked">
                                <label for="allAgree">모두수신</label>
                            </p>
                        </td>
                    </tr>
                  </tbody> 
                </table>
            </form>
        </div>
    </div>
</body>
</html>
