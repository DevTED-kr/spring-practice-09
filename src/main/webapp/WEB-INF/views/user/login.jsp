<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../include/meta.jsp" %>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="${path}/">
            <b>TEST</b>&nbsp
        </a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Login page</p>

        <form action="${path}/user/loginPost" method="post">
            <div class="form-group has-feedback">
                <input type="text" name="userId" class="form-control" placeholder="id">
                <span class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="userPw" class="form-control" placeholder="password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" name="useCookie"> keep login
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">
                        <i class="fa fa-sign-in"></i> login
                    </button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <!-- /.social-auth-links -->

        <a href="#">password find</a><br>
        <a href="${path}/user/register" class="text-center">registration</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<%@ include file="../include/script.jsp" %>
<script>

    var msg = "${msg}";
    if (msg === "REGISTERED") {
        alert("success registration");
    } else if (msg == "FAILURE") {
        alert("Please check login id/pw");
    }

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