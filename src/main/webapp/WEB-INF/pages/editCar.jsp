<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<t:pageTemplate pageTitle="editCar">
  <h1>Edit Car</h1>
  <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">
    <div class="row form-group">
      <div class="col-md-6 mb-3">
        <label for="license_plate">License Plate</label>
        <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="" value="${car.licensePlate}" required>
        <div class="invalid-feedback">
          License Plate is required.
        </div>
      </div>
    </div>
    <div class="row form-group">
      <div class="col-md-6 mb-3">
        <label for="parking_spot">Parking Spot</label>
        <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="" value="${car.parkingSpot}" required>
        <div class="invalid-feedback">
          Parking Spot is required.
        </div>
      </div>
    </div>

    <div class="row form-group">
      <div class="col-md-6 mb-3">
        <label for="owner_id">Owner</label>
        <select class="custom-select d-block w-100" id="owner_id" name="owner_id" required>
          <option value="">Choose...</option>
          <c:forEach var="user" items="${users}" varStatus="status">
            <option value="${user.id}" ${car.ownerName eq user.email ? 'selected' : ''}>${user.email}</option>
          </c:forEach>

        </select>
        <div class="invalid-feedback">
          Owner is required.
        </div>
      </div>
    </div>
    <hr class="mb-4">
    <input type="hidden" name="car_id" value="${car.id}" />
    <button type="submit" class="btn btn-primary">Submit</button></div>
  </form>
</t:pageTemplate>