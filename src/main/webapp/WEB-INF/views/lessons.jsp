<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet" >
    <script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.4/jquery.min.js"></script>
        <title>Lessons</title>
    <style>
        .blurred {
            filter: blur(5px);
            transition: filter 0.3s ease;
        }
        .blurred:hover {
            filter: blur(0);
        }
        .centralized {

        }
    </style>
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
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${lessons}" var="lesson">
						<tr class="centralized">
							<td class="align-middle">${lesson.lessonTitle}</td>
							<td class="align-middle">${lesson.description}</td>
							<td class="align-middle">${lesson.targetDate}</td>
							<td class="align-middle">${lesson.done ? "Yeah!" : "No"}</td>
							<td><a href="delete-lesson?id=${lesson.id}" class="btn btn-dark btn-sm blurred">X</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
            <div class="btn btn-group">
                <a class="btn btn-outline-warning" href="/welcome" role="button">Back</a>
                <a class="btn btn-outline-success" href="/lesson-creator" role="button">Create</a>
            </div>
		</div>

	</body>
</html>