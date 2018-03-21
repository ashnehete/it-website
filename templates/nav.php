<nav id="nav" class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/"><?= $SITE_NAME ?></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <?php
                foreach ($NAV_ITEMS as $item) {
                    // To mark active class to current page
                    $classes = "nav-link";
                    if (isset($TITLE) && $TITLE === $item['title'])
                        $classes = $classes . ' active';
                    ?>
                    <li class="nav-item">
                        <a class="<?= $classes ?>" href="<?= $item['href'] ?>"><?= $item['title'] ?></a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</nav>