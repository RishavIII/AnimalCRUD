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
    <title>Elephant List</title>
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
    <a href="/elephants/createForm" class="btn btn-outline-primary" style="float:right;">
      Create New Elephant
    </a>

    <form action="/elephants/name">
        <input 
          type="text" 
          name="key" 
          placeholder="Search By Name 🔍" 
          class="form-control mb-3" 
          style="max-width: 300px;">
    </form>

    <!-- Elephants Table -->
    <table class="table table-striped rounded-3 overflow-hidden">
        <thead class="table-dark">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Age</th>
          </tr>
        </thead>
        <tbody>
        <#list elephants as elephant>
          <tr>
            <td>
              <a 
                href="/elephants/${elephant.elephantId?c}" 
                style="color:#000000">
                ${elephant.elephantId?c}
              </a>
            </td>
            <td>${elephant.name!''}</td>
            <td>
              <a 
                href="/elephants/gender/${elephant.gender!''}" 
                style="color:#000000">
                ${elephant.gender!''}
              </a>
            </td>
            <td>${elephant.age!0?c}</td>
          </tr>
        </#list>
        </tbody>
    </table>

</div>
</body>
</html>
