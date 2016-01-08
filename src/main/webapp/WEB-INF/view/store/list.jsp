<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>

</head>
<body class="container">

<div class="table-responsive">
	<ul class="pagination">
		<li><a href="" data-ng-click="prevClick(paging.firstPage - 1)">Prev</a></li>
		<li data-ng-repeat="city in citys">
			<a href="" data-ng-click="pageClick(paging.firstPage + $index)">{{paging.firstPage + $index}}</a>
		</li>
		<li><a href="" data-ng-click="prevClick(paging.lastPage + 1)">Next</a></li>
	</ul>
	
	<table class="table table-striped table-hover">
		<thead>
			<tr><td><a href="#/append" class="btn btn-primary">Append</a></td></tr>
			<tr><th colspan="8">
				<div data-uib-pagination 
					 data-total-items="paging.totalItem" style="width:800px;" 
					 data-ng-model="pageNo"
					 data-max-size="10"
					 data-ng-change="selectPage()"
					 data-boundary-links="true">
				</div>
				</th>
			</tr>
			<tr>
				<th>No</th>
				<th>ID</th>
				<th>name</th>
				<th>restype</th>
				<th>district</th>
				<th>hitcount</th>
				<th>email</th>
				<th>password</th>
				<th>lat</th>
				<th>lng</th>				
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr data-ng-repeat="store in stores">
				<td>{{$index + 1}}</td>
				<td><a href="#/detail/{{store.id}}">{{store.id}}</a></td>
				<td>{{store.name}}</td>
				<td>{{store.restype}}</td>
				<td>{{store.district}}</td>
				<td>{{store.hitcount}}</td>
				<td>{{store.email}}</td>
				<td>{{store.password}}</td>
				<td>{{store.lat}}</td>
				<td>{{store.lng}}</td>
			
				<td><a href="#/modify/{{store.id}}" class="btn btn-success">Edit...</a></td>
				<td><a href="#/delete/{{store.id}}" class="btn btn-info">Delete...</a></td>
			</tr>
		</tbody>
		
		 <div class="col" data-ng-repeat="store in stores">            
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h4>id: <small>{{store.id}}</small></h4>
                <h4>name: <small>{{store.name}}</small></h4>
                <h4>restype: <small>{{store.restype}}</small></h4>
                <h4>district: <small>{{store.district}}</small></h4>
                <h4>hitcount: <small>{{store.hitcount}}</small></h4>
                <h4>email: <small>{{store.email}}</small></h4>  
                <h4>password: <small>{{store.password}}</small></h4>
                <h4>lat: <small>{{store.lat}}</small></h4>
                <h4>lng: <small>{{store.lng}}</small></h4>              
            </div>
        </div>
        
	</table>
</div>

<hr>	
<div class="form-group">
<textarea rows="20" class="form-control">
	{{stores}}
	{{paging}}
</textarea>
</div>

</body>
</html>




