<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<t:pageTemplate pageTitle="addUser">
  <h1>Add User</h1>
  <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser">
    <div class="row form-group">
      <div class="col-md-6 mb-3">
        <label for="username">Username</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="" value="" required>
        <div class="invalid-feedback">
          Username is required.
        </div>
      </div>
    </div>
    <div class="row form-group">
      <div class="col-md-6 mb-3">
        <label for="email">Email</label>
        <input type="text" class="form-control" id="email" name="email" placeholder="" value="" required>
        <div class="invalid-feedback">
          Email is required.
        </div>
      </div>
    </div>
    <div class="row form-group">
      <div class="col-md-6 mb-3">
        <label for="password">Password</label>
        <input type="text" class="form-control" id="password" name="password" placeholder="" value="" required>
        <div class="invalid-feedback">
          Password is required.
        </div>
      </div>
    </div>

    <div class="row form-group">
      <div class="col-md-6 mb-3">
        <label for="user_groups">Groups</label>
        <select class="custom-select d-block w-100" id="user_groups" name="user_groups" multiple>
          <c:forEach var="user_groups" items="${userGroups}" varStatus="status">
            <option value="${user_groups}">${user_groups}</option>
          </c:forEach>
        </select>
      </div>
    </div>
    <hr>
    <button type="submit" class="btn btn-primary">Submit</button></div>
  </form>
</t:pageTemplate>