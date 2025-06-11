<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
  <title>Student List</title>

  <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>

<body>

  <!-- Begin Nav Bar -->
  <nav class="navbar navbar-expand-lg  navbar-dark" style="background-color: #799351;">
    <a class="navbar-brand" href="/elephants" style="margin: 10px;">
      <img src="/logo.jpg" alt="" width="80" height="60">
    </a>
    <ul class="nav justify-content-end">
      <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="/elephants">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Second</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Third</a>
      </li>
    </ul>
  </nav>

  <div class="container" style="margin-top: 15px;">
    <h1>${title}</h1>
    <form id="new-elephant" action="/elephants/update/${elephant.elephantId}" method="post" enctype="multipart/form-data">
      <input type="text" id="elephantId" name="elephantId" value="${elephant.elephantId?c}" readonly />
      <input type="text" id="name" name="name" value="${elephant.name}" placeholder="Name" />
      <input type="text" id="description" name="description" value="${elephant.description}" placeholder="Description" />
      <input type="text" id="gender" name="gender" value="${elephant.gender}" placeholder="Gender" />
      <input type="number" id="age" name="age" step="1" value="${elephant.age}" placeholder="Age" /><br>
      <button type="submit" class="btn btn-primary">Save</button>
      <a href="/elephants/${elephant.elephantId}" class="btn btn-outline-danger">Cancel</a>
    </form>

  </div>
</body>

</html>