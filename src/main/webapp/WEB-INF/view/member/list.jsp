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
				<th>email</th>
				<th>name</th>
				<th>password</th>
				<th>address</th>
				<th>phone</th>				
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr data-ng-repeat="member in members">
				<td>{{$index + 1}}</td>
				<td><a href="#/detail/{{member.id}}">{{member.id}}</a></td>
				<td>{{member.email}}</td>
				<td>{{member.name}}</td>
				<td>{{member.password}}</td>
				<td>{{member.address}}</td>
				<td>{{member.phone}}</td>
			
				<td><a href="#/modify/{{member.id}}" class="btn btn-success">Edit...</a></td>
				<td><a href="#/delete/{{member.id}}" class="btn btn-info">Delete...</a></td>
			</tr>
		</tbody>
		
		 <div class="col" data-ng-repeat="member in members">            
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h4>id: <small>{{member.id}}</small></h4>
                <h4>email: <small>{{member.email}}</small></h4>
                <h4>name: <small>{{member.name}}</small></h4>
                <h4>password: <small>{{member.password}}</small></h4>
                <h4>address: <small>{{member.address}}</small></h4>
                <h4>phone: <small>{{member.phone}}</small></h4>                
            </div>
        </div>
        
	</table>
</div>

<hr>	
<div class="form-group">
<textarea rows="20" class="form-control">
	{{members}}
	{{paging}}
</textarea>
</div>

</body>
</html>




