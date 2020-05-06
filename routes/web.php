<?php
require 'admin.php';
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

/*Route::get('/', function () {
    return view('welcome');
});
*/

        /*
         **Department
        */
        Route::Group(['prefix'=>'view'],function(){

            Route::get('Who/SjdFv/Qwrd/{link}','Fontend\LinkReadController@UserView')->name('user.view.link');

            Route::get('emplyee/sing/short/{slug}/{link}','Fontend\LinkReadController@EmpShort')->name('emp.short.link');
            Route::get('emplyee/singfQs/full/{slug}/{link}','Fontend\LinkReadController@EmpFull')->name('emp.full.link');
            Route::get('emplyee/sindocz/docx/{slug}/{link}','Fontend\LinkReadController@EmpDocx')->name('emp.docx.link');
            Route::get('emplyee/sindocz/docx/QrPx/{slug}/{link}','Fontend\LinkReadController@EmpDocxQrs')->name('emp.docxPx.link');
            Route::get('emplyee/single/{slug}','Fontend\LinkReadController@Singleview')->name('emp.Singleview');

            Route::get('link/c/sf/dsf/{link}','Fontend\LinkReadController@UserShort')->name('user.short.link');
            Route::get('link/c/fs/sd/{link}','Fontend\LinkReadController@UserFull')->name('user.full.link');
            Route::get('link/c/fsd/csd/{link}','Fontend\LinkReadController@UserDox')->name('user.docx.link');

    });

            /*
         **Project
        */
        Route::Group(['prefix'=>'projectview'],function(){

            Route::get('project/list/{link}','Fontend\ProjectLinkReadController@UserView')->name('user.view.link');

            Route::get('emplyee/sing/short/{slug}/{link}','Fontend\ProjectLinkReadController@EmpShort')->name('emp.short.link');
            Route::get('emplyee/singfQs/full/{slug}/{link}','Fontend\ProjectLinkReadController@EmpFull')->name('emp.full.link');
            Route::get('emplyee/sindocz/docx/{slug}/{link}','Fontend\ProjectLinkReadController@EmpDocx')->name('emp.docx.link');
            Route::get('emplyee/sindocz/docx/QrPx/{slug}/{link}','Fontend\ProjectLinkReadController@EmpDocxQrs')->name('emp.docxPx.link');
            Route::get('emplyee/single/{slug}','Fontend\ProjectLinkReadController@Singleview')->name('pro.Singleview');

            Route::get('link/c/sf/dsf/{link}','Fontend\ProjectLinkReadController@UserShort')->name('user.short.link');
            Route::get('link/c/fs/sd/{link}','Fontend\ProjectLinkReadController@UserFull')->name('user.full.link');
            Route::get('link/c/fsd/csd/{link}','Fontend\ProjectLinkReadController@UserDox')->name('user.docx.link');
            Route::get('/{slug}/pie', 'Admin\ProjectController@ProjectPie2')->name('admin.project.pies');

    });

