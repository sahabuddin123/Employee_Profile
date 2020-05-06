<?php
use Illuminate\Support\Facades\Auth;
Auth::routes();
Route::group(['prefix'  =>  'admin'], function () {

    Route::get('login', 'Admin\LoginController@showLoginForm')->name('admin.login');
    Route::post('login', 'Admin\LoginController@login')->name('admin.login.post');
    Route::get('logout', 'Admin\LoginController@logout')->name('admin.logout');
    /**
    *Admin Password Reset
    */
    Route::post('/password/email','Auth\AdminForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
    Route::get('/password/reset','Auth\AdminForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
    Route::post('/password/reset','Auth\AdminResetPasswordController@reset');
    Route::get('/password/reset/{token}','Auth\AdminResetPasswordController@showResetForm')->name('admin.password.reset');
    Route::get('/changePassword','Admin\ChangePasswordController@showChangePasswordForm')->name('admin.changePassword');
    Route::post('/changePassword','Admin\ChangePasswordController@changePassword')->name('changePassword');
    //
    Route::group(['middleware' => ['auth:admin']], function () {

        //Route::get('/', function () {
            //return view('admin.dashboard.index');
        //})->name('admin.dashboard');
        Route::get('/', 'Admin\DeshboardController@index')->name('admin.dashboard');

       Route::get('/settings', 'Admin\SettingController@index')->name('admin.settings');
        Route::post('/settings', 'Admin\SettingController@update')->name('admin.settings.update');

    });
    /***
     * Personal Information section
     */
    Route::group(['prefix'  =>   'personalinfo'], function() {

        Route::get('/', 'Admin\PersonalInfoController@index')->name('admin.cv.personal');
        Route::get('/create', 'Admin\PersonalInfoController@create')->name('admin.cv.create');
        Route::post('/store', 'Admin\PersonalInfoController@store')->name('admin.cv.store');
        Route::get('/{id}/edit', 'Admin\PersonalInfoController@edit')->name('admin.cv.edit');
        Route::post('/update', 'Admin\PersonalInfoController@update')->name('admin.cv.update');
        // Route::get('/{id}/delete', 'Admin\PersonalInfoController@delete')->name('admin.cv.delete');

        Route::get('/{id}/personal', 'Admin\PersonalInfoController@personal')->name('admin.cv.update.personal');

        Route::get('/showSingle', 'Admin\PersonalInfoController@showSingle')->name('showSingle');

        Route::get('/{id}/education', 'Admin\PersonalInfoController@education')->name('admin.cv.update.education');
        Route::post('/update/education', 'Admin\PersonalInfoController@storeEducation')->name('admin.cv.update.education.store');

        Route::get('/{id}/language', 'Admin\PersonalInfoController@language')->name('admin.cv.update.language');
        Route::post('/update/language', 'Admin\PersonalInfoController@storelanguage')->name('admin.cv.update.language.store');

        Route::get('/{id}/traning', 'Admin\PersonalInfoController@traning')->name('admin.cv.update.traning');
        Route::post('/update/traning', 'Admin\PersonalInfoController@storetraning')->name('admin.cv.update.traning.store');

        Route::get('/{id}/workexp', 'Admin\PersonalInfoController@workexp')->name('admin.cv.update.workexp');
        Route::post('/update/workexp', 'Admin\PersonalInfoController@storeworkexp')->name('admin.cv.update.workexp.store');

        Route::get('/{id}/skill', 'Admin\PersonalInfoController@skill')->name('admin.cv.update.skill');
        Route::post('/update/skill', 'Admin\PersonalInfoController@storeskill')->name('admin.cv.update.skill.store');

        Route::get('/{id}/empInfo', 'Admin\PersonalInfoController@empInfo')->name('admin.cv.update.empInfo');
        Route::post('/update/empInfo', 'Admin\PersonalInfoController@storeempInfo')->name('admin.cv.update.empInfo.store');

        Route::get('/{id}/reference', 'Admin\PersonalInfoController@reference')->name('admin.cv.update.reference');
        Route::post('/update/reference', 'Admin\PersonalInfoController@storereference')->name('admin.cv.update.reference.store');


        Route::get('/{id}/document', 'Admin\PersonalInfoController@document')->name('admin.cv.update.document');
        Route::post('/update/document', 'Admin\PersonalInfoController@storedocument')->name('admin.cv.update.document.store');
        Route::post('/update/documentadd', 'Admin\PersonalInfoController@storedocumentadd')->name('admin.cv.update.documentadd.store');
        Route::post('/update/documentsingle', 'Admin\PersonalInfoController@documentsingle')->name('admin.cv.update.documentsingle.store');

        Route::get('/{id}/full-profile', 'Admin\PersonalInfoController@fullProfile')->name('admin.profile.full');
        Route::get('/{id}/short-profile', 'Admin\PersonalInfoController@shortProfile')->name('admin.profile.short');

        Route::get('/view/Full/pdf/{id}', 'Admin\PersonalInfoController@fullPDF')->name('admin.profile.full.pdf');
        Route::get('/{id}/single/PDF', 'Admin\PersonalInfoController@SinglePDF')->name('admin.profile.short.pdf');


        Route::post('/status/{id}', 'Admin\PersonalInfoController@completedUpdate')->name('completedUpdate.emp');
        
        Route::get('/active', 'Admin\PersonalInfoController@active')->name('admin.profile.active');
        Route::get('/inactive', 'Admin\PersonalInfoController@inactive')->name('admin.profile.inactive');

    });

       /*
         **Department
        */
            Route::Group(['prefix'=>'department'],function(){
            Route::get('/','Admin\DepartmentController@index')->name('admin.department.index');
            Route::get('/create', 'Admin\DepartmentController@create')->name('admin.department.create');
            Route::post('/store', 'Admin\DepartmentController@store')->name('admin.department.store');
            Route::get('/{id}/edit', 'Admin\DepartmentController@edit')->name('admin.department.edit');
            Route::post('/update', 'Admin\DepartmentController@update')->name('admin.department.update');
            Route::get('/{id}/delete', 'Admin\DepartmentController@delete')->name('admin.department.delete');
            Route::get('/{id}/linkcreate', 'Admin\DepartmentController@DepartmentIndex')->name('admin.link.department.create');
            Route::post('/status/{id}', 'Admin\DepartmentController@completedUpdate')->name('completedUpdate');
            Route::get('/active', 'Admin\DepartmentController@active')->name('admin.department.active');
        Route::get('/inactive', 'Admin\DepartmentController@inactive')->name('admin.department.inactive');

    });

        /*
         **Employee Link
        */
        Route::Group(['prefix'=>'link'],function(){
            Route::get('/','Admin\LinkCreateController@index')->name('admin.linkcreate.index');
            Route::post('/store','Admin\LinkCreateController@store')->name('admin.link.store');
            Route::get('/edit/{id}','Admin\LinkCreateController@editFunc')->name('admin.link.edit');
            Route::post('/update','Admin\LinkCreateController@update')->name('admin.link.update');
            Route::get('/show/full/{link}','Admin\LinkCreateController@showLink')->name('admin.link.show');
            Route::get('/show/short/{link}','Admin\LinkCreateController@showLinkShort')->name('admin.link.showShort');
            Route::get('/show/docx/{link}','Admin\LinkCreateController@showLinkFull')->name('admin.link.showFull');
            Route::get('/linkpage','Admin\LinkCreateController@linkpage')->name('admin.link.linkpage');

            Route::get('/c/fs/sd/{link}','Admin\LinkCreateController@fullView')->name('admin.link.fullView');
            Route::get('c/sf/dsf/{link}','Admin\LinkCreateController@shortView')->name('admin.link.shortView');
            Route::get('c/fsd/csd/{link}','Admin\LinkCreateController@docxView')->name('admin.link.docxView');

            //Genarate PDF
            Route::get('/docx/{link}','Admin\LinkCreateController@docxPDF')->name('admin.link.docxPDF');

        });

        /***
     * Project Information section
     */
    Route::group(['prefix'  =>   'project'], function() {

        Route::get('/', 'Admin\ProjectController@index')->name('admin.project.index');
        Route::get('/create', 'Admin\ProjectController@create')->name('admin.project.create');
        Route::post('/store', 'Admin\ProjectController@store')->name('admin.project.store');
        Route::get('/{id}/edit', 'Admin\ProjectController@edit')->name('admin.project.edit');
        Route::post('/update', 'Admin\ProjectController@update')->name('admin.project.update');
        Route::get('/{id}/delete', 'Admin\ProjectController@delete')->name('admin.project.delete');

        Route::get('/showSinglePro', 'Admin\ProjectController@showSingle')->name('showSinglePro');
        Route::get('/show/{id}/PDF', 'Admin\ProjectController@SinglePDF')->name('admin.short.save');


        Route::post('/status/{id}', 'Admin\ProjectController@completedUpdate')->name('completedUpdate.project');
        Route::get('/view/gov/{id}', 'Admin\ProjectController@GovView')->name('admin.project.view.gov');
        Route::get('/view/gov/pdf/{id}', 'Admin\ProjectController@GOvPDF')->name('admin.project.govpdf');
        Route::get('/view/local/{id}', 'Admin\ProjectController@LocalView')->name('admin.project.view.local');
        Route::get('/view/local/pdf/{id}', 'Admin\ProjectController@localPDF')->name('admin.project.localpdf');

        Route::get('/{id}/pie', 'Admin\ProjectController@ProjectPie')->name('admin.project.pie');


    });

       /*
         **Project Link
        */
        Route::Group(['prefix'=>'projectlink'],function(){
            Route::get('/','Admin\ProjectLinkController@index')->name('admin.projectlinkcreate.index');
            Route::post('/store','Admin\ProjectLinkController@store')->name('admin.projectlink.store');
            Route::get('/edit/{id}','Admin\ProjectLinkController@editFunc')->name('admin.projectlink.edit');
            Route::post('/update','Admin\ProjectLinkController@update')->name('admin.projectlink.update');
            Route::get('/show/full/{link}','Admin\ProjectLinkController@showLink')->name('admin.projectlink.show');
            Route::get('/show/short/{link}','Admin\ProjectLinkController@showLinkShort')->name('admin.projectlink.showShort');
            Route::get('/show/docx/{link}','Admin\ProjectLinkController@showLinkFull')->name('admin.projectlink.showFull');
            Route::get('/linkpage','Admin\ProjectLinkController@linkpage')->name('admin.projectlink.linkpage');

            Route::get('/c/fs/sd/{link}','Admin\ProjectLinkController@fullView')->name('admin.projectlink.fullView');
            Route::get('c/sf/dsf/{link}','Admin\ProjectLinkController@shortView')->name('admin.projectlink.shortView');
            Route::get('c/fsd/csd/{link}','Admin\ProjectLinkController@docxView')->name('admin.projectlink.docxView');

            //Genarate PDF
            Route::get('/docx/{link}','Admin\ProjectLinkController@docxPDF')->name('admin.projectlink.docxPDF');

        });
         /*
         **Project Progress
        */
        Route::Group(['prefix'=>'projectProgress'],function(){
            Route::get('/','Admin\ProjectProgressController@index')->name('admin.progress.index');
            Route::get('/create', 'Admin\ProjectProgressController@create')->name('admin.progress.create');
            // Route::post('/store', 'Admin\ProjectProgressController@update')->name('admin.progress.update');
            Route::get('/{id}/edit', 'Admin\ProjectProgressController@edit')->name('admin.progress.edit');
            Route::get('/{id}/view', 'Admin\ProjectProgressController@view')->name('admin.progress.view');
            Route::post('/update', 'Admin\ProjectProgressController@update')->name('admin.progress.update');
            Route::get('/showSingle', 'Admin\ProjectProgressController@showSingle')->name('showSingleProgress');
            // Route::get('/{id}/delete', 'Admin\ProjectProgressController@delete')->name('admin.department.delete');
            // Route::get('/{id}/linkcreate', 'Admin\ProjectProgressController@DepartmentIndex')->name('admin.link.department.create');
            // Route::post('/status/{id}', 'Admin\ProjectProgressController@completedUpdate')->name('completedUpdate');

    });
});
