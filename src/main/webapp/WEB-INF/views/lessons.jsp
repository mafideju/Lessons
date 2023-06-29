<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<body>
		<div>
			<h1>Your Lessons</h1>
			<table class="table">
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
							<td>${lesson.done}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

	</body>
</html>