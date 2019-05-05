<nav class="navbar navbar-expand-lg  navbar-ligh sticky-top form-bar">
        <div class="grid-bar">
            <div class="logo">
                <a href="/"><img src="../images/logo.png" alt="logo" class="logo-image"></a>
            </div>
            <div class="ask-search-bar">
                <form class="search-bar-form" method="GET" action={{route('search')}}>
                    {{ csrf_field() }}
                    <div class="form-control form-control-lg search-container">
                        <div class="search-container2">
                            <div class="search-bar-cat">
                                <img src="../images/logo.png" class="mx-auto d-block img-fluid rounded-circle cat-icon"
                                    width="33" alt="logo">
                            </div>
                            <div class="search-bar-div">
                                <input type="text" class="fluid search-bar" placeholder="Let us know your doubts">
                            </div>
                            <div class="search-icon-div">
                                <a href="../pages/search.html" class="a-search-icon">
                                    <i class="fas fa-search search-icon"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="btn-group info-user">
                <button type="button" class="btn btn btn-dark">Ask a Question</button>
                <button type="button" class="btn btn-outline-primary">
                    <i class="fa fa-fw fa-user"></i> Sign in
                </button>
                <button type="button" class="btn btn-primary">
                    <i class="fa fa-fw fa-user"></i> Register
                </button>
            </div>
        </div>
        <div class="mobile-search-field" style="display:none">
            <div class="ask-search-bar">
                <form class="form-inline" action="/action_page.php">
                    <div class="form-control form-control-lg search-container">
                        <div class="search-container2">
                            <div class="search-bar-cat">
                                <img src="../images/logo.png" class="mx-auto d-block img-fluid rounded-circle cat-icon"
                                    width="33" alt="logo">
                            </div>
                            <div class="search-bar-div">
                                <input type="text" class="fluid search-bar" placeholder="Let us know your doubts">
                            </div>
                            <div class="search-icon-div">
                                <a href="../pages/search.html" class="a-search-icon">
                                    <i class="fas fa-search search-icon"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <button type="button" class="btn btn-dark back-button"><i class="fas fa-angle-left"></i></button>
        </div>
    </nav>