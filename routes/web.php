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

// Cards
Route::get('cards', 'CardController@list');
Route::get('cards/{id}', 'CardController@show');

// API
Route::put('api/cards', 'CardController@create');
Route::delete('api/cards/{card_id}', 'CardController@delete');
Route::put('api/cards/{card_id}/', 'ItemController@create');
Route::post('api/item/{id}', 'ItemController@update');
Route::delete('api/item/{id}', 'ItemController@delete');

// Authentication

Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login');
Route::get('logout', 'Auth\LoginController@logout')->name('logout');
Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('register', 'Auth\RegisterController@register');