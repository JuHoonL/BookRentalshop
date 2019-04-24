<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${rootPath}/css/bootstrap.min.css" />
<style>
#join-body {
	margin: 5px auto;
	padding: 10px;
	width: 60%;
	background-color: #ccc;
}
</style>
<form method="POST" enctype="multipart/form-data">
  <fieldset id="join-body">
    <legend>회원가입</legend>
    <div class="form-group row">
      <div class="col-sm-10">
        <input type="hidden" class="form-control-plaintext" id="user_seq" name="user_seq" value="<c:out value='${VO.user_seq}' default='0' />"><br />
      </div>
    </div>
    
    <div class="form-group row">
      <label for="user_id" class="col-sm-2 col-form-label">아이디</label>
      <input type="text" class="form-control-plaintext" id="user_id" name="user_id" value="${VO.user_id}"><br />
      <small id="user_id_error" class="form-text text-muted"></small>
    </div>
    
    <div class="form-group row">
      <label for="user_password" class="col-sm-2 col-form-label">비밀번호</label>
        <input type="text" class="form-control-plaintext" id="user_password" name="user_password" value="${VO.user_id}" ><br />
        <small id="user_password_error" class="form-text text-muted"></small>
    </div>
    
    <div class="form-group row">
      <label for="user_re_password" class="col-sm-2 col-form-label">비밀번호확인</label>
        <input type="text" class="form-control-plaintext" id="user_re_password" name="user_re_password" value="${VO.user_id}" ><br />
        <small id="user_re_password_error" class="form-text text-muted"></small>
    </div>
    
    <div class="form-group">
      <label for="user_role">관리권한</label>
      <div>
      <select class="form-control" id="user_role" name="user_role">
        <option value="user" <c:if test="${VO.user_role == 'user'}">selected="selected"</c:if>>일반유저</option>
        <option value="manager" <c:if test="${VO.user_role == 'manager'}">selected="selected"</c:if>>관리자</option>
      </select>
      </div>
    </div>
    
    <div class="form-group row">
      <label for="user_name" class="col-sm-2 col-form-label">이름</label>
        <input type="text" class="form-control-plaintext" id="user_name" name="user_name" value="${VO.user_id}" ><br />
        <small id="user_name_error" class="form-text text-muted"></small>
    </div>
    
    <div class="form-group row">
      <label for="user_birth" class="col-sm-2 col-form-label">생년월일</label>
        <input type="date" class="form-control-plaintext" id="user_birth" name="user_birth" value="${VO.user_id}" ><br />
        <small id="user_birth_error" class="form-text text-muted"></small>
    </div>
    
    <div class="form-group">
      <label for="user_sex">성별</label>
      <div>
      <select class="form-control" id="user_sex" name="user_sex">
        <option value="M" <c:if test="${VO.user_sex == 'M'}">selected="selected"</c:if>>남</option>
        <option value="F" <c:if test="${VO.user_sex == 'F'}">selected="selected"</c:if>>여</option>
      </select>
      </div>
    </div>
    
    <div class="form-group row">
      <label for="user_phone" class="col-sm-2 col-form-label">전화번호</label>
        <input type="text" class="form-control-plaintext" id="user_phone" name="user_phone" value="${VO.user_id}" ><br />
        <small id="user_phone_error" class="form-text text-muted"></small>
    </div>
    
    <div class="form-group row">
      <label for="user_mail" class="col-sm-2 col-form-label">Email</label>
        <input type="email" class="form-control-plaintext" id="user_mail" name="user_mail" value="${VO.user_id}" ><br />
        <small id="user_mail_error" class="form-text text-muted"></small>
    </div>
    
    <div class="form-group">
      <label for="user_out_yn">탈퇴여부</label>
      <div>
      <select class="form-control" id="user_out_yn" name="user_out_yn">
        <option value="N" <c:if test="${VO.user_out_yn == 'N'}">selected="selected"</c:if>>가입유저</option>
        <option value="Y" <c:if test="${VO.user_out_yn == 'Y'}">selected="selected"</c:if>>탈퇴유저</option>
      </select>
      </div>
    </div>
    
    <div class="form-group row">
      <label for="user_mail" class="col-sm-2 col-form-label">컨트롤러에서 가입일 탈퇴일 구입포인트 총대여회수 총대여금액 입력</label>
        <input type="email" class="form-control-plaintext" id="user_mail" name="user_mail" value="${VO.user_id}" ><br />
        <small id="user_mail_error" class="form-text text-muted"></small>
    </div>
    
    <div class="form-group">
      <label for="user_image">회원사진</label>
      <input type="file" class="form-control-file" id="user_image" name="user_image" aria-describedby="fileHelp">
      <small id="fileHelp" class="form-text text-muted"></small>
    </div>
    
    <button type="button" class="btn btn-primary" id="btn-save">회원정보 저장</button>
  </fieldset>
</form>