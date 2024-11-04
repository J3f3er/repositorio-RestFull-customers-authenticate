<?php

namespace Database\Factories;

use App\Models\Regions;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Regions>
 */
class RegionsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Regions::class;

    public function definition()
    {
        return [
            'description' => $this->faker->word(),
            'status' => $this->faker->randomElement(['A', 'I', 'trash']),
        ];
    }
}
