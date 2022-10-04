<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Thanh toán</title>
</head>
<body>
	<div class="row">
		<div class="span9">
			<div class="well">
				<br />
				<form:form action="checkout" method="POST" modelAttribute="bills" class="form-horizontal">
					<h3>Thanh toán đơn hàng</h3>
					<div class="control-group">
						<label class="control-label">Họ tên <sup>*</sup></label>
						<div class="controls">
							<form:input type="text"
								placeholder="Nhập họ tên" path="display_name" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Email <sup>*</sup></label>
						<div class="controls">
							<form:input type="text"
								placeholder="Nhập họ tên" path="user" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Liên hệ <sup>*</sup></label>
						<div class="controls">
							<form:input type="text"
								placeholder="Nhập họ tên" path="phone" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Địa chỉ <sup>*</sup></label>
						<div class="controls">
							<form:textarea path="address" rows="5" cols="30"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Ghi chú <sup>*</sup></label>
						<div class="controls">
							<form:textarea path="note" rows="5" cols="30"/>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="submit" name="submitAccount" value="Thanh toán"
								class="shopBtn exclusive">
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<div class="span1">&nbsp;</div>

	</div>
</body>
