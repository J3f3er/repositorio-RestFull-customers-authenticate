<?php

namespace Database\Factories;

use App\Models\Communes;
use App\Models\Regions;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Communes>
 */
class CommunesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Communes::class;

    public function definition()
    {
        return [
            'id_reg' => Regions::factory(),
            'description' => $this->faker->word(),
            'status' => $this->faker->randomElement(['A', 'I', 'trash']),
        ];
    }
}
