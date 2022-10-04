<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Đăng ký</title>
</head>
<body>
	<div class="row">
		<div class="span4">
			<div class="well">
				<h5>Đăng ký tài khoản</h5>
				<br />
				<form:form action="dang-ky" method="POST" modelAttribute="user">
					<div class="control-group">
						<label class="control-label" for="inputEmail">Email
							address</label>
						<div class="controls">
							<form:input type="email" class="span3"
								placeholder="Nhập địa chỉ email" path="user" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputEmail">Mật khẩu</label>
						<div class="controls">
							<form:input type="password" class="span3"
								placeholder="Nhập mật khẩu" path="password" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputEmail">Họ và tên</label>
						<div class="controls">
							<form:input type="text" class="span3"
								placeholder="Nhập họ và tên" path="display_name" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputEmail">Địa chỉ</label>
						<div class="controls">
							<form:input type="text" class="span3" placeholder="Nhập địa chỉ"
								path="address" />
						</div>
					</div>
					<div class="controls">
						<button type="submit" class="btn block">Đăng ký tài khoản</button>
					</div>
				</form:form>
			</div>
		</div>
		<div class="span1">&nbsp;</div>
		<div class="span4">
			<div class="well">
				<h5>Đăng nhập</h5>
				<form:form action="dang-nhap" method="POST" modelAttribute="user">
					<div class="control-group">
						<label class="control-label" for="inputEmail">Tài khoản -
							Email</label>
						<div class="controls">
							<form:input type="email" class="span3"
								placeholder="Nhập tài khoản - email" path="user" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword">Mật khẩu</label>
						<div class="controls">
							<form:input type="password" class="span3"
								placeholder="Nhập mật khẩu" path="password" />
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="defaultBtn">Đăng nhập</button>
							<a href="#">Quên mật khẩu ?</a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
