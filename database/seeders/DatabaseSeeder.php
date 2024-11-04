<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Communes;
use App\Models\Customers;
use App\Models\Regions;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $regions = Regions::factory()->count(10)->create();

        foreach ($regions as $region) {
            Communes::factory()->count(3)->create(['id_reg' => $region->id_reg]);
        }

        foreach ($regions as $region) {
            $communes = Communes::where('id_reg', $region->id_reg)->get();
            foreach ($communes as $commune) {
                Customers::factory()->count(5)->create([
                    'id_reg' => $region->id_reg,
                    'id_com' => $commune->id_com,
                ]);
            }
        }
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
