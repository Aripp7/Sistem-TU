<?php

use App\Http\Controllers\LoginController;
use App\Http\Controllers\GuruController;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\TendikController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TahunController;
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
// Route::post('/simpan-guru', [GuruController::class, 'store'])->name('simpan-guru');
// Route::get('/guru', [GuruController::class, 'index'])->name('data-guru');
Route::get('/addGuru', [GuruController::class, 'create'])->name('tambah-guru');

Route::resource('siswa', SiswaController::class);
// Route::post('/simpan-siswa', [SiswaController::class, 'store'])->name('simpan-siswa');
// Route::get('/siswa', [SiswaController::class, 'index'])->name('data-siswa');
Route::get('/addSiswa', [SiswaController::class, 'create'])->name('tambah-siswa');

Route::resource('tendik', TendikController::class);
// Route::post('/simpan-tendik', [TendikController::class, 'store'])->name('simpan-tendik');
// Route::get('/tendik', [TendikController::class, 'index'])->name('data-tendik');
Route::get('/addTendik', [TendikController::class, 'create'])->name('tambah-tendik');
Route::resource('dashboard', DashboardController::class);

Route::resource('tahun', TahunController::class);
Route::get('/addtahun', [TahunController::class, 'create']);

Route::get('/adminLogin', [LoginController::class, 'halamanLogin'])->name('login')->middleware('guest');
Route::post('/postLogin', [LoginController::class, 'postLogin'])->name('postLogin');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');



Route::get('/', function () {
    return view('index');
});
