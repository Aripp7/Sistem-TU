<nav class="main-header navbar navbar-expand navbar-white navbar-light">

    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>

    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <!-- Navbar profile -->
        <li class="dropdown">
            <img src="/public/img/icons8-user-80.png" alt="">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Admin<span class="caret"></span> <i class="fas fa-user"></i></a>

            <ul class="dropdown-menu">

                <li>
                    <a href="profile" class="btn btn-link navbar-btn navbar-link">Profile</a>
                </li>
                <li>
                    <form action="/logout" method="post"><button type="submit" class="btn btn-link navbar-btn navbar-link">Log Out</button></form>
                </li>

            </ul>
        </li>


    </ul>



</nav>