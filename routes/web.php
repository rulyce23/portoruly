<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BioController;
// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [BioController::class, 'index']);
Route::post('/bio', [BioController::class, 'store'])->name('store');