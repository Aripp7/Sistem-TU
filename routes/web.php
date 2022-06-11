<?php

use App\Http\Controllers\GuruController;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\TendikController;
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

Route::resource('guru', GuruController::class);
Route::post('/simpan-guru', [GuruController::class, 'store'])->name('simpan-guru');
Route::get('/guru', [GuruController::class, 'index'])->name('data-guru');
Route::get('/tambah-guru', [GuruController::class, 'tambah'])->name('tambah-guru');

Route::resource('siswa', SiswaController::class);
Route::post('/simpan-siswa', [SiswaController::class, 'store'])->name('simpan-siswa');
Route::get('/siswa', [SiswaController::class, 'index'])->name('data-siswa');
Route::get('/addSiswa', [SiswaController::class, 'create'])->name('tambah-siswa');

Route::resource('tendik', TendikController::class);
Route::post('/simpan-tendik', [TendikController::class, 'store'])->name('simpan-tendik');
Route::get('/tendik', [TendikController::class, 'index'])->name('data-tendik');
Route::get('/tambah-tendik', [SiswaContTendikControllerroller::class, 'tambah'])->name('tambah-tendik');



Route::get('/', function () {
    return view('index');
});


Route::get('/adminTU', function () {
    return view('login.login');
});

Route::get('/dashboard', function () {
    return view('dashboard');
});
