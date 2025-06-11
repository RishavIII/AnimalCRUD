<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <link 
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
    crossorigin="anonymous">
  <script 
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
  <title>Elephant Details</title>
  <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>

<body>

  <!-- Begin Nav Bar -->
  <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #808080;">
    <a class="navbar-brand" href="/elephants" style="margin: 10px;">
      <img src="/logo.jpg" alt="Logo" width="80" height="60">
    </a>
    <ul class="nav justify-content-end">
      <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="/elephants">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/elephants/about">About</a>
      </li>
    </ul>
  </nav>
  <!-- End Nav Bar -->

  <div class="container" style="margin-top: 15px;">
    <h1>${title}</h1>
    <div class="card">
      <h5 class="card-header">${elephant.name}</h5>
      <div class="card-body">
        <span style="float:right">
          <a 
            href="/elephants/updateForm/${elephant.elephantId?c}" 
            class="btn btn-primary">
            Edit Elephant
          </a>
        </span>
        <h5 class="card-title">ID: ${elephant.elephantId?c}</h5>
        <p class="card-text">Description: ${elephant.description!''}</p>
        <p class="card-text">Gender: ${elephant.gender!''}</p>
        <p class="card-text">Age: ${elephant.age!0}</p>
        <a 
          href="/elephants/delete/${elephant.elephantId?c}" 
          class="btn btn-danger">
          Delete Elephant
        </a>
        <a 
          href="/elephants" 
          class="btn btn-primary ms-2">
          Go back
        </a>
      </div>
    </div>
  </div>
</body>

</html>
