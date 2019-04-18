<?php

namespace App\Http\Controllers\StaticPages;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Faq;

class InformationController extends Controller
{

    public function sendMail(Type $var = null)
    {
        # code...
    }


    public function createAbout()
    {
        return view('staticpages.about')->with('catinfo',Category::all());
    }
    public function createContacts()
    {
        return view('staticpages.contacts')->with('catinfo',Category::all());
    }
    public function sendContacts()
    {
        return request()->all();
    }
    public function createTerms()
    {
        return view('staticpages.terms')->with('catinfo',Category::all());
    }
    public function createFaq()
    {
        return view('staticpages.faq')->with('catinfo',Category::all())->with('faqInfo',Faq::all());
    }
    public function create404()
    {
        return view('staticpages.404')->with('catinfo',Category::all());
    }
}
