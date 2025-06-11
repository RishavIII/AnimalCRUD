<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">Animal Gallery</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="details.html">Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container mt-4">
        <h1 class="mb-4 text-center">The Animal Gallery</h1>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card h-100">
                    <img src="images/elephant.jpg" class="card-img-top" alt="African Elephant">
                    <div class="card-body">
                        <h5 class="card-title">African Elephant</h5>
                        <p class="card-text">The African elephant is the largest land mammal on Earth, known for its
                            intelligence and complex social structures.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100">
                    <img src="images/tiger.jpg" class="card-img-top" alt="Bengal Tiger">
                    <div class="card-body">
                        <h5 class="card-title">Bengal Tiger</h5>
                        <p class="card-text">The Bengal tiger is a powerful predator from India and Bangladesh,
                            recognized for its striking orange coat and black stripes.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100">
                    <img src="images/whale.jpg" class="card-img-top" alt="Blue Whale">
                    <div class="card-body">
                        <h5 class="card-title">Blue Whale</h5>
                        <p class="card-text">The blue whale is the largest animal ever known to have lived, reaching
                            lengths of up to 100 feet in the ocean.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100">
                    <img src="images/falcon.jpg" class="card-img-top" alt="Peregrine Falcon">
                    <div class="card-body">
                        <h5 class="card-title">Peregrine Falcon</h5>
                        <p class="card-text">The peregrine falcon is the fastest bird, capable of diving at speeds over
                            200 mph to catch its prey.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100">
                    <img src="images/panda.jpg" class="card-img-top" alt="Giant Panda">
                    <div class="card-body">
                        <h5 class="card-title">Giant Panda</h5>
                        <p class="card-text">The giant panda is a bear native to China, famous for its distinctive
                            black-and-white coat and bamboo diet.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>