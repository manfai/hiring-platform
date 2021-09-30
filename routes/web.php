<?php

use App\Models\Eform;
use App\Models\EformResult;
use Illuminate\Http\Request;
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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/e-form/{formCode?}', function ($formCode) {
    if($formCode == null){
        abort(404);
    }
    $form = Eform::with('questions')->where('code',$formCode)->first();
    // dd($form->questions);
    return view('form',$form);
})->name('eform');

Route::post('/e-form/{formCode?}', function (Request $request, $formCode) {
    if($formCode == null){
        abort(404);
    }
    $form = Eform::with('questions')->where('code',$formCode)->first();
    $form->results()->create([
        'result' => $request->except('_token')
    ]);
    return back()->with('message', 'Done!');;
})->name('eform.submit');
