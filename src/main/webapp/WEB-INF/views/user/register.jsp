<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../include/meta.jsp" %>
<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <a href="${path}/">
            <b>TEST</b>&nbsp BOARD
        </a>
    </div>

    <div class="register-box-body">
        <p class="login-box-msg">Register</p>

        <form action="${path}/user/register" method="post">
            <div class="form-group has-feedback">
                <input type="text" name="userId" class="form-control" placeholder="아아디">
                <span class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" name="userName" class="form-control" placeholder="이름">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="email" name="userEmail" class="form-control" placeholder="이메일">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="userPw" class="form-control" placeholder="비밀번호">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="비밀번호 확인">
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> TEST <a href="#">test</a>
                        </label>
                    </div>
                </div>
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">register</button>
                </div>
            </div>
        </form>


        <a href="${path}/user/login" class="text-center">Login</a>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->

<%@ include file="../include/script.jsp" %>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>
</html>