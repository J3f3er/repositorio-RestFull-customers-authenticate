<?php

namespace App\Http\Controllers;

use App\Models\Regions;
use Illuminate\Http\Request;

class RegionsController extends Controller
{
    public function index()
    {
        $regions = Regions::all();

        return response()->json([
            "success" => true,
            "data" => $regions,
        ], 200);
    }

    public function register(Request $request)
    {
        $region = new Regions();
        $region->description = $request->description;
        $region->status = $request->status;
        $region->save();

        return response()->json([
            'success' =>  true,
            'message' => 'Registro agregado correctamente'
        ]);
    }
}
