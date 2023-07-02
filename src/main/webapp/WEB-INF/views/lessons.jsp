<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet" >
    <script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.4/jquery.min.js"></script>
        <title>Lessons</title>
    </head>
	<body style="background-color: whitesmoke">
		<div class="container" style="max-width: 80%;">
			<h1>${name} Lessons</h1>
			<table class="table table-striped table-dark table-dark table-hover">
				<thead>
					<tr>
						<th>Lesson</th>
						<th>Description</th>
						<th>Target Date</th>
						<th>Is Done?</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${lessons}" var="lesson">
						<tr>
							<td>${lesson.lessonTitle}</td>
							<td>${lesson.description}</td>
							<td>${lesson.targetDate}</td>
							<td>${lesson.done ? "Yeah!" : "No"}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
            <div>
                <a class="btn btn-success" href="/welcome" role="button">Back</a>
            </div>
		</div>

	</body>
</html>