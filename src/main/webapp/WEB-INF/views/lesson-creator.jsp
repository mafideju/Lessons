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
            <form method="POST">
                <div class="mb-3">
                    <label for="title" class="form-label">Title:</label>
                    <input type="text" class="form-control" id="title" name="title" required>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description:</label>
                    <textarea class="form-control" id="description" name="description" rows="5" required></textarea>
                </div>
                <div class="btn-group">
                    <a class="btn btn-outline-warning" href="/lessons" role="button">Back</a>
                    <button type="submit" class="btn btn-outline-success">Create</button>
                </div>
            </form>
        </div>
    </section>
</body>
</html>