<?php

namespace App\Http\Controllers\StaticPages;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Faq;
use Illuminate\Support\Facades\DB;

class InformationController extends Controller
{

    public function sendMail(Type $var = null)
    {
        # code...
    }


    public function createAbout()
    {
        return view('pages.staticpages.about');
    }
    public function createContacts()
    {
        return view('pages.staticpages.contacts');
    }
    public function sendContacts(Request $request)
    {
        return $request->all();
    }
    public function createTerms()
    {
        return view('pages.staticpages.terms');
    }
    public function createFaq()
    {
        return view('pages.staticpages.faq')->with('faqInfo',Faq::all());
    }
    public function create404()
    {
        return view('pages.staticpages.404');
    }
}
