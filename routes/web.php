<?php

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

// Route::get('/', function () {
//     return view('welcome');
// })->name('welcome');

Route::get('/', 'AksesController@selectUnit')->name('welcome');
Route::get('/selectChild/{id}', 'AksesController@selectChild')->name('lavatur.selectChild');
Route::get('/selectName/{id}', 'AksesController@selectName')->name('lavatur.selectName');
Route::get('/selectNamePusat/{id}', 'AksesController@selectNamePusat')->name('lavatur.selectNamePusat');
Route::get('/back', 'AksesController@back')->name('lavatur.back');

Route::post('/attendView', 'AksesController@attendView')->name('lavatur.attendView');
Route::post('/attendSave', 'AksesController@attendSave')->name('lavatur.attendSave');

//admin
Route::get('/admin', 'AksesController@userAdd');
Route::get('/admin/exporttoExcel', 'AksesController@exporttoExcel')->name('exporttoExcel');

Route::post('/admin/userAdd', 'AksesController@userAddSave')->name('userAdd.save');
