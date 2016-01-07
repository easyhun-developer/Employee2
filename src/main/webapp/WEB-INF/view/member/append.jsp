<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>append.jsp</title>

</head>
<body class="container">
<a class="btn btn-primary" href="#/list">list...</a>
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
	<div class="panel panel-default">
		<div class="panel-heading">멤버 입력</div>
			<pre>{{member}}</pre>
		<div class="panel-body">
		<form name="memberForm" novalidate="novalidate" data-ng-submit="submit()">
		
		<!-- email -->
			<div class="form-group">
				<label for="email">Email : </label>
				<input id="email"
					   name="email"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.email"
					   data-ng-maxlength="35"
					   />
				<div>memberForm.email.$invalid = {{memberForm.email.$invalid}}</div>
				<div>memberForm.email.$error.required = {{memberForm.email.$error.required}}</div>
				<div>memberForm.email.$error.maxlength = {{memberForm.email.$error.maxlength}}</div>
				<div data-ng-show="memberForm.email.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.email.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.email.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
		
			<!-- Name -->
			<div class="form-group">
				<label for="name">Name : </label>
				<input id="name"
					   name="name"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.name"
					   data-ng-maxlength="35"
					   />
				<div>memberForm.name.$invalid = {{memberForm.name.$invalid}}</div>
				<div>memberForm.name.$error.required = {{memberForm.name.$error.required}}</div>
				<div>memberForm.name.$error.maxlength = {{memberForm.name.$error.maxlength}}</div>
				<div data-ng-show="memberForm.name.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.name.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.name.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
			<!-- password -->
			<div class="form-group">
				<label for="password">Password : </label>
				<input id="password"
					   name="password"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.password"
					   data-ng-maxlength="7"
					   data-ng-minlength="7"
					   />
				<div>memberForm.password.$invalid = {{memberForm.password.$invalid}}</div>
				<div>memberForm.password.$error.required = {{memberForm.password.$error.required}}</div>
				<div>memberForm.password.$error.maxlength = {{memberForm.password.$error.maxlength}}</div>
				<div>memberForm.password.$error.minlength = {{memberForm.password.$error.minlength}}</div>
				<div data-ng-show="memberForm.password.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.password.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.password.$error.maxlength || cityForm.countryCode.$error.minlength">3자리만 입력가능합니다.</div>
				</div>	   
			</div>
			
			<!-- address -->
			<div class="form-group">
				<label for="address">address : </label>
				<input id="address"
					   name="address"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.address"
					   data-ng-maxlength="100"
					   />
				<div>memberForm.address.$invalid = {{memberForm.address.$invalid}}</div>
				<div>memberForm.address.$error.required = {{memberForm.address.$error.required}}</div>
				<div>memberForm.address.$error.maxlength = {{memberForm.address.$error.maxlength}}</div>
				<div data-ng-show="memberForm.address.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.address.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.address.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
			
			<!-- Name -->
			<div class="form-group">
				<label for="phone">phone : </label>
				<input id="phone"
					   name="phone"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.phone"
					   data-ng-maxlength="35"
					   />
				<div>memberForm.phone.$invalid = {{memberForm.phone.$invalid}}</div>
				<div>memberForm.phone.$error.required = {{memberForm.phone.$error.required}}</div>
				<div>memberForm.phone.$error.maxlength = {{memberForm.phone.$error.maxlength}}</div>
				<div data-ng-show="memberForm.phone.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.phone.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.phone.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>

			
			<!-- Submit -->
			<div class="form-group">
			<input type="submit" 
				   value="확인"
				   class="btn btn-primary"
				   data-ng-disabled="memberForm.$invalid"
				   
				   />
			<div>memberForm.$invalid = {{memberForm.$invalid}}</div>	   
			</div>
	
			
		</form>
		</div>
	</div>
</div>
</div>

</body>
</html>




