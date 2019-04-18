<?php

namespace App\Http\Controllers\StaticPages;

use App\Http\Controllers\AppBaseController;
use App\Models\Category;
use Illuminate\Support\Facades\DB;

class HomeController extends AppBaseController
{

    public function create()
    {
        $all = Category::all();
        return view('staticpages.home')->with('catinfo',$all);
    }
}
