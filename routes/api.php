<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\CustomersController;
use App\Http\Controllers\RegionsController;
use App\Http\Middleware\AuthTokenMiddleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


Route::post('/login', [AuthController::class, 'login']);

Route::middleware(['auth.token'])->group(function () {
    Route::get('/all', [CustomersController::class, 'index']);
    Route::get('/customers/finds/{find}', [CustomersController::class, 'find']);
    Route::post('/customers/register', [CustomersController::class, 'registerCustomers']);
    Route::get('/customers/getActiveCustomers', [CustomersController::class, 'getActiveCustomers']);
    Route::delete('/customers/delete/{id}', [CustomersController::class, 'deleteCustomer']);
    
});

/* Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
}); */
