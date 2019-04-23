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
        return view('pages.staticpages.about')->with('catinfo',Category::all());
    }
    public function createContacts()
    {
        return view('pages.staticpages.contacts')->with('catinfo',Category::all());
    }
    public function sendContacts(Request $request)
    {
        return $request->all();
    }
    public function createTerms()
    {
        return view('pages.staticpages.terms')->with('catinfo',Category::all());
    }
    public function createFaq()
    {
        return view('pages.staticpages.faq')->with('catinfo',Category::all())->with('faqInfo',Faq::all());
    }
    public function create404()
    {
        return view('pages.staticpages.404')->with('catinfo',Category::all());
    }
}
