<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Create a Lesson</title>
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet" >
    <script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
    <section class="container" style="max-width: 80%;">
        <div>
            <h1>Add New Lesson to ${name} List</h1>
        </div>
        <hr>
        <div class="container">
            <h3>Enter New Lesson</h3>
            <form:form method="POST" modelAttribute="lesson">
                <div class="mb-3">
                    <label for="lessonTitle" class="form-label">Title:</label>
                    <form:input type="text" class="form-control" path="lessonTitle" name="lessonTitle" required="required" />
                    <div class="is-invalid" style="color: red;">
                        <form:errors path="lessonTitle" />
                    </div>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description:</label>
                    <form:textarea class="form-control" path="description" name="description" rows="5" required="required"></form:textarea>
                    <div class="is-invalid" style="color: red;">
                        <form:errors path="description" />
                    </div>
                </div>

                <form:input type="hidden" path="id" />
                <form:input type="hidden" path="done" />

                <div class="btn-group">
                    <a class="btn btn-outline-warning" href="/lessons" role="button">Back</a>
                    <button type="submit" class="btn btn-outline-success">Create</button>
                </div>
            </form:form>
        </div>
    </section>
</body>
</html>