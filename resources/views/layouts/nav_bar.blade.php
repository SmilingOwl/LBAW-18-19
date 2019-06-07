<nav class="navbar navbar-expand-lg  navbar-ligh sticky-top form-bar">
    <div class="grid-bar">
        <div class="logo">
            <a href="/"><img src="/images/logo.png" alt="logo" class="logo-image"></a>
        </div>
        <div class="ask-search-bar">
            <form class="search-bar-form" method="GET" action={{route('search')}}>
                <div class="form-control form-control-lg search-container">
                    <div class="search-container2">
                        <input class="category-choice" type="hidden" name="category" alt="all">
                        <div class="search-bar-cat">
                            <img src="/images/logo.png" class="mx-auto d-block img-fluid rounded-circle cat-icon"
                                width="33" alt="logo">
                        </div>
                        <div class="search-bar-div">
                            <input type="text" class="fluid search-bar" placeholder="Let us know your doubts">
                        </div>
                        <div class="search-icon-div">
                            <i class="fas fa-search search-icon"></i>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="btn-group info-user">
        </div>
    </div>
    <div class="mobile-search-field" style="display:none">
        <div class="ask-search-bar">
            <form class="form-inline" method="GET" action={{route('search')}}>
                <div class="form-control form-control-lg search-container">
                    <div class="search-container2">
                        <div class="search-bar-cat dropdown"><button type="button"
                                class="btn dropdown-toggle dropdown-bar-cat" data-toggle="dropdown"><img
                                    src="/images/icon-14.svg" class="drop-menu-cat" alt="all"></button>
                            <div class="dropdown-menu"><a class="dropdown-item drop-cat"><img src="/images/icon-14.svg"
                                        class="rounded dropdown-image-cat" alt="All"> All</a></div>
                        </div>
                        <div class="search-bar-div"><input type="text" class="fluid search-bar"
                                placeholder="Want to learn something?" name="search"></div>
                        <div class="search-icon-div"><button type="submit"
                                class="btn btn-outline-light a-search-icon"><i
                                    class="fas fa-search search-icon"></i></button></div>
                    </div>
                </div>
            </form>
        </div>
        <button type="button" class="btn btn-dark back-button"><i class="fas fa-angle-left"></i></button>
    </div>
</nav>