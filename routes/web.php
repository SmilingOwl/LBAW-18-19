<?php
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Static pages

Route::get('/', 'StaticPages\HomeController@create')->name('UI04');
Route::get('/home', 'StaticPages\HomeController@create');
Route::get('/about', 'StaticPages\InformationController@createAbout')->name('UI05');
Route::get('/contacts', 'StaticPages\InformationController@createContacts')->name('UI08');
Route::post('/contacts', 'StaticPages\InformationController@sendContacts');
Route::get('/terms', 'StaticPages\InformationController@createTerms')->name('UI06');
Route::get('/faq', 'StaticPages\InformationController@createFaq')->name('UI07');
Route::get('/404', 'StaticPages\InformationController@create404')->name('UI22');


// Profile

Route::get('profile/{username}', 'Profile\ProfileController@show');
Route::get('profile/{username}/edit', 'Profile\ProfileController@edit')->name('profile.edit');
Route::put('profile/{username}/edit', 'Profile\ProfileController@update')->name('profile.update');
Route::get('profile/{username}/settings', 'Profile\ProfileController@settings');
Route::get('profile/{username}/admin', 'Profile\ProfileController@admin');
Route::get('profile/{username}/moderator', 'Profile\ProfileController@moderator');
Route::delete('profile/{username}/delete', 'Profile\ProfileController@destroy');



// Question
Route::get('question/add', 'Question\QuestionController@create')->name('UI18');
Route::get('question/{id_question}/edit', 'Question\QuestionController@edit');
Route::put('question/{id_question}/edit', 'Question\QuestionController@update');
Route::get('topic/{category}', 'Question\QuestionController@topic')->name('UI18');
Route::delete('question/{id_question}/delete', 'Question\QuestionController@destroy');


// Authentication

Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login');
Route::get('logout', 'Auth\LoginController@logout')->name('logout');
Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('register', 'Auth\RegisterController@register');

//Search

Route::get('search','Question\SearchController@search')->name('search');


//Aux
Route::get('/auth/info', 'Profile\ProfileController@getType');
Route::get('/category/all', 'CategoryController@getCategories');




