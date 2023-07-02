<html>
<head>
    <title>Login Page</title>
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet" >
    <script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
    <section>
        <div class="container" style="max-width: 500px;">
              <c:if test="${errorMessage}">
                <div style="background-color: whitesmoke;">
                  <p style="color: red;">${errorMessage}</p>
                </div>
              </c:if>
            <form method="POST">
              <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" name="name" aria-describedby="name">
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" name="password">
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </section>
</body>
</html>