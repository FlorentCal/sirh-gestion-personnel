<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="script.jsp"></jsp:include>

<title>Statistiques</title>
</head>
<body>
	<div class="container-fluid">

		<h1>Statistiques</h1>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>Chemin</th>
					<th>Nombre de visites</th>
					<th>Min (ms)</th>
					<th>Max (ms)</th>
					<th>Moyenne (ms)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="frequentation" items="${frequentations}">
					<tr>
						<td>${frequentation.key}</td>
						<td>${frequentation.value.getCount()}</td>
						<td>${frequentation.value.getMin()}</td>
						<td>${frequentation.value.getMax()}</td>
						<td>${frequentation.value.getAverage()}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
