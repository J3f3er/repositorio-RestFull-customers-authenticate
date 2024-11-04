<?php

namespace Database\Factories;

use App\Models\Communes;
use App\Models\Customers;
use App\Models\Regions;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Customers>
 */
class CustomersFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Customers::class;

    public function definition()
    {
        return [
            'dni' => $this->faker->unique()->numerify('########'),
            'id_reg' => Regions::factory(),
            'id_com' => Communes::factory()->create()->id_com,
            'email' => $this->faker->unique()->safeEmail(),
            'name' => $this->faker->firstName(),
            'last_name' => $this->faker->lastName(),
            'address' => $this->faker->address(),
            'date_reg' => $this->faker->date(),
            'status' => $this->faker->randomElement(['A', 'I', 'trash']),
        ];
    }
}
