<?php

// use App\Http\Controllers\KategoriController;
// use App\Http\Controllers\LevelController;
// use App\Http\Controllers\UserController;
// use App\Http\Controllers\WelcomeController;
// use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/level', [LevelController::class, 'index']);
// Route::get('/kategori', [KategoriController::class, 'index']);
// Route::get('/user', [UserController::class, 'index']);
// Route::get('/user/tambah', [UserController::class, 'tambah']);
// Route::post('/user/tambah_simpan', [UserController::class, 'tambah_simpan']);
// Route::get('/user/ubah/{id}', [UserController::class, 'ubah']);
// Route::put('/user/ubah_simpan/{id}', [UserController::class, 'ubah_simpan']);
// Route::get('/user/hapus/{id}', [UserController::class, 'hapus']);
// Route::get('/', [WelcomeController::class, 'index']);

//JS05
//Praktikum 3
// Route::get('/', [WelcomeController::class, 'index']);

// Route::group(['prefix' => 'user'], function () {
//     Route::get('/', [UserController::class, 'index']);     // menampilkan halaman awal user
//     Route::post('/list', [UserController::class, 'list']);  // menampilkan data user dalam bentuk json untuk datatables
//     Route::get('/create', [UserController::class, 'create']); // menampilkan halaman form tambah user
//     Route::post('/', [UserController::class, 'store']);    // menyimpan data user baru
//     Route::get('/{id}', [UserController::class, 'show']);    // menampilkan detail user
//     Route::get('/{id}/edit', [UserController::class, 'edit']);   // menampilkan halaman form edit user
//     Route::put('/{id}', [UserController::class, 'update']);  // menyimpan perubahan data user
//     Route::delete('/{id}', [UserController::class, 'destroy']); // menghapus data user
// });

//Soal Praktikum

use App\Http\Controllers\KategoriController;
use App\Http\Controllers\LevelController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WelcomeController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\StokController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/level', [LevelController::class, 'index']);
Route::get('/kategori', [KategoriController::class, 'index']);
Route::get('/user', [UserController::class, 'index']);
Route::get('/user/tambah', [UserController::class, 'tambah']);
Route::post('/user/tambah_simpan', [UserController::class, 'tambah_simpan']);
Route::get('/user/ubah{id}', [UserController::class, 'ubah']);
Route::put('/user/ubah_simpan{id}', [UserController::class, 'ubah_simpan']);
Route::get('/user/hapus{id}', [UserController::class, 'hapus']);

Route::get('/', [WelcomeController::class, 'index']);

Route::group(['prefix' => 'user'], function () {
    Route::get('/', [UserController::class, 'index']);          // menampilkan halaman awal user
    Route::post('/list', [UserController::class, 'list']);      // menampilkan data user dalam bentuk json untuk datatables
    Route::get('/create', [UserController::class, 'create']);   // menampilkan halaman form tambah user
    Route::post('/', [UserController::class, 'store']);         // menyimpan data user baru
    Route::get('/create_ajax', [UserController::class, 'create_ajax']); // Menampilkan halaman form tambah user Ajax
    Route::post('/ajax', [UserController::class, 'store_ajax']); // Menyimpan data user baru Ajax
    Route::get('/{id}', [UserController::class, 'show']);       // menampilkan detail user
    Route::get('/{id}/edit', [UserController::class, 'edit']);  // menampilkan halaman form edit user
    Route::put('/{id}', [UserController::class, 'update']);     // menyimpan perubahan data user
    Route::get('/{id}/edit_ajax', [UserController::class, 'edit_ajax']);  // menampilkan halaman form edit user Ajax
    Route::put('/{id}/update_ajax', [UserController::class, 'update_ajax']); // menyimpan perubahan data user Ajax
    Route::get('/{id}/delete_ajax', [UserController::class, 'confirm_ajax']);     // menyimpan perubahan data user Ajax
    Route::delete('/{id}/delete_ajax', [UserController::class, 'delete_ajax']); // menghapus data user Ajax
    Route::delete('/{id}', [UserController::class, 'destroy']); // menghapus data user
});

// Level Routes
Route::group(['prefix' => 'level'], function () {
    Route::get('/', [LevelController::class, 'index']); // Display level listing
    Route::post('/list', [LevelController::class, 'list']); // Return level data in JSON for datatables
    Route::get('/create', [LevelController::class, 'create']); // Show form to add a new level
    Route::post('/', [LevelController::class, 'store']); // Save a new level
    Route::get('/{id}', [LevelController::class, 'show']); // Show level details
    Route::get('/{id}/edit', [LevelController::class, 'edit']); // Show form to edit level
    Route::put('/{id}', [LevelController::class, 'update']); // Save edited level details
    Route::delete('/{id}', [LevelController::class, 'destroy']); // Delete level
});

Route::group(['prefix' => 'kategori'], function () {
    Route::get('/', [KategoriController::class, 'index']); // Display level listing
    Route::post('/list', [KategoriController::class, 'list']); // Return level data in JSON for datatables
    Route::get('/create', [KategoriController::class, 'create']); // Show form to add a new level
    Route::post('/', [KategoriController::class, 'store']); // Save a new level
    Route::get('/{id}', [KategoriController::class, 'show']); // Show level details
    Route::get('/{id}/edit', [KategoriController::class, 'edit']); // Show form to edit level
    Route::put('/{id}', [KategoriController::class, 'update']); // Save edited level details
    Route::delete('/{id}', [KategoriController::class, 'destroy']); // Delete level
});

Route::group(['prefix' => 'barang'], function () {
    Route::get('/', [BarangController::class, 'index']); // Display level listing
    Route::post('/list', [BarangController::class, 'list']); // Return level data in JSON for datatables
    Route::get('/create', [BarangController::class, 'create']); // Show form to add a new level
    Route::post('/', [BarangController::class, 'store']); // Save a new level
    Route::get('/{id}', [BarangController::class, 'show']); // Show level details
    Route::get('/{id}/edit', [BarangController::class, 'edit']); // Show form to edit level
    Route::put('/{id}', [BarangController::class, 'update']); // Save edited level details
    Route::delete('/{id}', [BarangController::class, 'destroy']); // Delete level
});

Route::group(['prefix' => 'supplier'], function () {
    Route::get('/', [SupplierController::class, 'index']); // Display level listing
    Route::post('/list', [SupplierController::class, 'list']); // Return level data in JSON for datatables
    Route::get('/create', [SupplierController::class, 'create']); // Show form to add a new level
    Route::post('/', [SupplierController::class, 'store']); // Save a new level
    Route::get('/{id}', [SupplierController::class, 'show']); // Show level details
    Route::get('/{id}/edit', [SupplierController::class, 'edit']); // Show form to edit level
    Route::put('/{id}', [SupplierController::class, 'update']); // Save edited level details
    Route::delete('/{id}', [SupplierController::class, 'destroy']); // Delete level
});