<?php

namespace App\Http\Controllers\StaticPages;

use App\Http\Controllers\AppBaseController;
use App\Models\Category;
use Illuminate\Support\Facades\DB;
use App\Models\Member;
use Illuminate\Support\Facades\Auth;

class HomeController extends AppBaseController
{

    public function create()
    {
        return view('pages.staticpages.home');
    }
}
