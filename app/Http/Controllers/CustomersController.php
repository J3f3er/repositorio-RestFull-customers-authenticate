<?php

namespace App\Http\Controllers;

use App\Models\Communes;
use App\Models\Customers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CustomersController extends Controller
{
    public function index()
    {
        $customers = Customers::all();
        return response()->json($customers);
    }

    public function registerCustomers(Request $request)
    {
        $request->validate([
            'dni' => 'required|string|max:45',
            'id_reg' => 'required|exists:regions,id_reg',
            'id_com' => 'required|exists:communes,id_com',
            'email' => 'required|email|unique:customers,email|max:120',
            'name' => 'required|string|max:45',
            'last_name' => 'required|string|max:45',
            'address' => 'nullable|string|max:255',
            'status' => 'required|in:A,I,trash'
        ]);
        Log::info('Registro de cliente', [
            'ip' => $request->ip(),
            'data' => $request->all(),
            'timestamp' => now(),
        ]);

        try {
            $commune = Communes::findOrFail($request->id_com);
            if ($commune->region_id !== $request->id_reg) {
                return response()->json(['success' => false, 'message' => 'La comuna no pertenece a la región especificada.'], 400);
            }

            $customer = new Customers();
            $customer->dni = $request->dni;
            $customer->id_reg = $request->id_reg;
            $customer->id_com = $request->id_com;
            $customer->email = $request->email;
            $customer->name = $request->name;
            $customer->last_name = $request->last_name;
            $customer->address = $request->address;
            $customer->date_reg = now();
            $customer->status = 'A';
            $customer->save();
            Log::info('Cliente registrado exitosamente', [
                'customer' => $customer,
                'timestamp' => now(),
            ]);

            return response()->json(['success' => true, 'customer' => $customer], 201);
        } catch (\Exception $e) {
            Log::error('Error al registrar cliente', [
                'message' => $e->getMessage(),
                'timestamp' => now(),
            ]);
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    /* public function registerCustomers(Request $request)
    {
        $request->validate([
            'dni' => 'required|string|max:45',
            'id_reg' => 'required|exists:regions,id_reg',
            'id_com' => 'required|exists:communes,id_com',
            'email' => 'required|email|unique:customers,email|max:120',
            'name' => 'required|string|max:45',
            'last_name' => 'required|string|max:45',
            'address' => 'nullable|string|max:255',
            'status' => 'required|in:A,I,trash'
        ]);

        try {
            $commune = Communes::findOrFail($request->id_com);
            if ($commune->region_id !== $request->id_reg) {
                return response()->json(['success' => false, 'message' => 'La comuna no pertenece a la región especificada.'], 400);
            }

            $customer = new Customers();
            $customer->dni = $request->dni;
            $customer->id_reg = $request->id_reg;
            $customer->id_com = $request->id_com;
            $customer->email = $request->email;
            $customer->name = $request->name;
            $customer->last_name = $request->last_name;
            $customer->address = $request->address;
            $customer->date_reg = now();
            $customer->status = 'A';
            $customer->save();

            return response()->json(['success' => true, 'customer' => $customer], 201);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    } */

    public function getActiveCustomers(Request $request)
    {
        $request->validate([
            'id_reg' => 'required|exists:regions,id_reg',
            'id_com' => 'required|exists:communes,id_com',
        ]);

        try {
            $customers = Customers::with(['communes', 'regions'])
                ->where('status', 'A')
                ->where('id_reg', $request->id_reg)
                ->where('id_com', $request->id_com)
                ->get(['name', 'last_name', 'address', 'id_reg', 'id_com']);

            $formattedCustomers = $customers->map(function ($customer) {
                return [
                    'name' => $customer->name,
                    'last_name' => $customer->last_name,
                    'address' => $customer->address ?? null,
                    'region_description' => $customer->regions->description ?? null,
                    'commune_description' => $customer->communes->description ?? null,
                ];
            });

            return response()->json(['success' => true, 'customers' => $formattedCustomers], 200);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function find($find)
    {
        /* $dni = $request->query('dni');
        $email = $request->query('email'); */

        $customer = Customers::where('dni', $find)->orWhere('email', $find)->first();

        if ($customer) {
            return response()->json(['success' => true, 'customer' => $customer]);
        } else {
            return response()->json(['success' => false, 'message' => 'Customer not found.']);
        }
    }

    public function deleteCustomer($id)
    {
        try {
            $customer = Customers::find($id);

            if (!$customer) {
                return response()->json(['success' => false, 'message' => 'Registro no existe'], 404);
            }

            if ($customer->status === 'trash') {
                return response()->json(['success' => false, 'message' => 'Registro no existe'], 404);
            }

            $customer->status = 'trash';
            $customer->save();

            return response()->json(['success' => true, 'message' => 'Cliente eliminado correctamente'], 200);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }
}
