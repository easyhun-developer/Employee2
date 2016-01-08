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
			<pre>{{store}}</pre>
		<div class="panel-body">
		<form name="memberForm" novalidate="novalidate" data-ng-submit="submit()">
		
			<!-- Name -->
			<div class="form-group">
				<label for="name">Name : </label>
				<input id="name"
					   name="name"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="store.name"
					   data-ng-maxlength="35"
					   />
				<div>storeForm.name.$invalid = {{storeForm.name.$invalid}}</div>
				<div>storeForm.name.$error.required = {{storeForm.name.$error.required}}</div>
				<div>storeForm.name.$error.maxlength = {{storeForm.name.$error.maxlength}}</div>
				<div data-ng-show="storeForm.name.$dirty">
					<div class="alert alert-warning" data-ng-show="storeForm.name.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="storeForm.name.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
			
			<!-- restype -->
			<div class="form-group">
				<label for="restype">restype : </label>
				<input id="restype"
					   name="restype"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="store.restype"
					   data-ng-maxlength="35"
					   />
				<div>storeForm.restype.$invalid = {{storeForm.restype.$invalid}}</div>
				<div>storeForm.restype.$error.required = {{storeForm.restype.$error.required}}</div>
				<div>storeForm.restype.$error.maxlength = {{storeForm.restype.$error.maxlength}}</div>
				<div data-ng-show="storeForm.restype.$dirty">
					<div class="alert alert-warning" data-ng-show="storeForm.restype.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="storeForm.restype.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
			
			<!-- district -->
			<div class="form-group">
				<label for="district">district : </label>
				<input id="district"
					   name="district"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="store.district"
					   data-ng-maxlength="35"
					   />
				<div>storeForm.district.$invalid = {{storeForm.district.$invalid}}</div>
				<div>storeForm.district.$error.required = {{storeForm.district.$error.required}}</div>
				<div>storeForm.district.$error.maxlength = {{storeForm.district.$error.maxlength}}</div>
				<div data-ng-show="storeForm.district.$dirty">
					<div class="alert alert-warning" data-ng-show="storeForm.district.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="storeForm.district.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
		
		<!-- hitcount -->
			<div class="form-group">
				<label for="hitcount">hitcount : </label>
				<input id="hitcount"
					   name="hitcount"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="store.hitcount"
					   data-ng-maxlength="35"
					   />
				<div>storeForm.hitcount.$invalid = {{storeForm.hitcount.$invalid}}</div>
				<div>storeForm.hitcount.$error.required = {{storeForm.hitcount.$error.required}}</div>
				<div>storeForm.hitcount.$error.maxlength = {{storeForm.hitcount.$error.maxlength}}</div>
				<div data-ng-show="storeForm.hitcount.$dirty">
					<div class="alert alert-warning" data-ng-show="storeForm.hitcount.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="storeForm.hitcount.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
		
		<!-- email -->
			<div class="form-group">
				<label for="email">Email : </label>
				<input id="email"
					   name="email"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="store.email"
					   data-ng-maxlength="35"
					   />
				<div>storeForm.email.$invalid = {{storeForm.email.$invalid}}</div>
				<div>storeForm.email.$error.required = {{storeForm.email.$error.required}}</div>
				<div>storeForm.email.$error.maxlength = {{storeForm.email.$error.maxlength}}</div>
				<div data-ng-show="storeForm.email.$dirty">
					<div class="alert alert-warning" data-ng-show="storeForm.email.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="storeForm.email.$error.maxlength">35자리까지 입력가능합니다.</div>
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
					   data-ng-model="store.password"
					   data-ng-maxlength="7"
					   data-ng-minlength="7"
					   />
				<div>storeForm.password.$invalid = {{storeForm.password.$invalid}}</div>
				<div>storeForm.password.$error.required = {{storeForm.password.$error.required}}</div>
				<div>storeForm.password.$error.maxlength = {{storeForm.password.$error.maxlength}}</div>
				<div>storeForm.password.$error.minlength = {{storeForm.password.$error.minlength}}</div>
				<div data-ng-show="storeForm.password.$dirty">
					<div class="alert alert-warning" data-ng-show="storeForm.password.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="storeForm.password.$error.maxlength || cityForm.countryCode.$error.minlength">3자리만 입력가능합니다.</div>
				</div>	   
			</div>
			
			<!-- lat -->
			<div class="form-group">
				<label for="lat">lat : </label>
				<input id="lat"
					   name="lat"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="store.lat"
					   data-ng-maxlength="35"
					   />
				<div>storeForm.lat.$invalid = {{storeForm.lat.$invalid}}</div>
				<div>storeForm.lat.$error.required = {{storeForm.lat.$error.required}}</div>
				<div>storeForm.lat.$error.maxlength = {{storeForm.lat.$error.maxlength}}</div>
				<div data-ng-show="storeForm.lat.$dirty">
					<div class="alert alert-warning" data-ng-show="storeForm.lat.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="storeForm.lat.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>
			
			<!-- lng -->
			<div class="form-group">
				<label for="lng">lng : </label>
				<input id="lng"
					   name="lng"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="store.lng"
					   data-ng-maxlength="35"
					   />
				<div>storeForm.lng.$invalid = {{storeForm.lng.$invalid}}</div>
				<div>storeForm.lng.$error.required = {{storeForm.lng.$error.required}}</div>
				<div>storeForm.lng.$error.maxlength = {{storeForm.lng.$error.maxlength}}</div>
				<div data-ng-show="storeForm.lng.$dirty">
					<div class="alert alert-warning" data-ng-show="storeForm.lng.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="storeForm.lng.$error.maxlength">35자리까지 입력가능합니다.</div>
				</div>
			</div>

			
			<!-- Submit -->
			<div class="form-group">
			<input type="submit" 
				   value="확인"
				   class="btn btn-primary"
				   data-ng-disabled="storeForm.$invalid"
				   
				   />
			<div>storeForm.$invalid = {{storeForm.$invalid}}</div>	   
			</div>
	
			
		</form>
		</div>
	</div>
</div>
</div>

</body>
</html>




