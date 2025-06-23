<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductCategoryController;
use App\Http\Controllers\ProductGalleryController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware\IsAdmin;

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth', IsAdmin::class])
    ->prefix('dashboard')
    ->name('dashboard.')
    ->group(function () {
        
    Route::get('/', [DashboardController::class, 'index'])->name('index');

    Route::resource('product', ProductController::class);
    Route::resource('category', ProductCategoryController::class);
    Route::resource('product.gallery', ProductGalleryController::class)->shallow()->only([
        'index', 'create', 'store', 'destroy'
    ]);
    Route::resource('transaction', TransactionController::class)->only([
        'index', 'show', 'edit', 'update'
    ]);
    Route::resource('user', UserController::class)->only([
        'index', 'edit', 'update', 'destroy'
    ]);
});