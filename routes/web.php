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
Route::get('question/add', 'Question\QuestionController@showCreate');
Route::put('questions/add', 'Question\QuestionController@create')->name('question.create');
Route::get('questions/{id_question}', 'Question\QuestionController@show')->name('questions.show');
Route::delete('questions/{id_question}/delete', 'Question\QuestionController@destroy');
Route::get('questions/{id_question}/edit', 'Question\QuestionController@edit');
Route::get('questions/{id_question}/upVote', 'VoteController@upVoteQuestion');
Route::get('questions/{id_question}/downVote', 'VoteController@downVoteQuestion');
Route::get('questions/{id_question}/nothingVote', 'VoteController@nothingVoteQuestion');
Route::get('answers/{id_answer}/upVote', 'VoteController@upVoteAnswer');
Route::get('answers/{id_answer}/downVote', 'VoteController@downVoteAnswer');
Route::get('answers/{id_answer}/nothingVote', 'VoteController@nothingVoteAnswer');
Route::put('answers/addToQuestion', 'Question\AnswerController@addToQuestion');
Route::put('answers/addToAnswer', 'Question\AnswerController@addToAnswer');
Route::put('questions/{id_question}/edit', 'Question\QuestionController@update')->name('question.update');
//Route::get('topic/{category}', 'Question\QuestionController@topic');
Route::get('answersToAnswer/{id}', 'Question\QuestionController@answersToAnswer');


// Authentication

Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login');
Route::get('logout', 'Auth\LoginController@logout')->name('logout');
Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('register', 'Auth\RegisterController@register');

// External Authentication
Route::get('login/facebook', 'Auth\LoginController@redirectToProvider_Fb');
Route::get('login/facebook/callback', 'Auth\LoginController@handleProviderCallback_Fb');
Route::get('login/google', 'Auth\LoginController@redirectToProvider_Gl');
Route::get('login/google/callback', 'Auth\LoginController@handleProviderCallback_Gl');

// Feed 
Route::get('topic/{category}', 'Feed\TopicController@show');


//API
Route::get('api/members/{username}/notifications/{id}/viewed','Profile\ApiController@notificationsView');
Route::get('api/members/{username}/notifications','Profile\ApiController@notifications');
Route::post('api/search/user','Profile\ApiController@likeUser');
Route::delete('api/questions/{id_question}','Question\QuestionController@delete');
Route::post('api/questions/{id_question}/report','Question\QuestionController@report');
Route::post('api/answers/{id_answer}/report','Question\AnswerController@report');
Route::get('api/answers/{id_answer}/bestAnswer','Question\AnswerController@bestAnswer');
Route::delete('api/answers/{id_answer}','Question\AnswerController@delete');
Route::delete('api/questions/{id_question}/answers/{id_answer}', 'Answer\AnswerController@delete');
Route::put('/api/member/{username}/toggle-follow', 'Profile\ProfileController@follow');
Route::put('/api/member/{username}/toggle-unfollow', 'Profile\ProfileController@unfollow');

//Admin and Moderator options
Route::post('api/members/{username}/ban', 'Profile\ProfileController@ban');
Route::post('api/members/{username}/dismiss', 'Profile\ProfileController@dismissModerator');
Route::post('api/members/{username}/promote', 'Profile\ProfileController@promoteToModerator');
Route::delete('api/reports/{id_report}/ignore', 'Profile\ProfileController@ignoreReport');
Route::delete('api/reports/{id_report}/deleteContent', 'Profile\ProfileController@deleteContent');


//Search

Route::get('search','Question\SearchController@search')->name('search');


//Aux
Route::get('/auth/info', 'Profile\ProfileController@getType');
Route::get('/category/all', 'CategoryController@getCategories');





Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
