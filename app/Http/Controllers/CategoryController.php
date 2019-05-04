<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{



    public function getCategories()
    {
        return response()->json(Category::select('name','icon')->get());
    }
}
