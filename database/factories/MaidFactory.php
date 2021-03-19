<?php

namespace Database\Factories;

use App\Models\Models\Maid;
use Illuminate\Database\Eloquent\Factories\Factory;

class MaidFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Maid::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $job = $this->faker->randomElement([
            'nurse','factory','construction','informal','other'
        ]);
        $unemployed = $this->faker->randomElement([
            'true','false'
        ]);
        return [
            'bio_no' => $this->faker->name,
            'name' => $this->faker->name,
            'jobs' => $job,
            'unemployed' => $unemployed,
            'cfm_date' => $this->faker->date,
            'employer_name' => '',
            'medical_date' => '',
            'medical_result' => '',
            'passport_no' => $this->faker->name,
            'passport_expired' => $this->faker->name,
            'jo_type' => $this->faker->name,
            'jo_rcv_date' => $this->faker->name,
            'jo_no' => $this->faker->name,
            'mofa_rcv_date' => $this->faker->name,
            'mofa_no' => $this->faker->name,
            'visa_in' => $this->faker->name,
            'visa_out' => $this->faker->name,
            'jpl_date' => $this->faker->name,
            'flight_date' => $this->faker->name,
            'flight_no' => $this->faker->name,
            'flight_eta' => $this->faker->name,
            'marital_status' => $this->faker->name,
            'address' => $this->faker->name,
            'dob' => $this->faker->name,
            'gender' => $this->faker->name,
            'age' => $this->faker->name,
            'height' => $this->faker->name,
            'weight' => $this->faker->name,
            'religion' => $this->faker->name,
            'eat_pig' => $this->faker->name,
            'status' => $this->faker->name,
            'tags' => $this->faker->name,
            'remark' => $this->faker->name,
        ];
    }
}
