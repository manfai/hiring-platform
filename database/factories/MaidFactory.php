<?php

namespace Database\Factories;

use App\Models\Maid;
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
        $newfaker = $this->faker;
        $newfaker->addProvider(new \Faker\Provider\en_ZA\Person($this->faker));

        $job = $this->faker->randomElement([
            'nurse','factory','construction','informal','other'
        ]);
        
        $religion = $this->faker->randomElement([
            'christianity','islam','hinduism','buddhism','sikhism','judaism'
        ]);
        
        $unemployed = $this->faker->randomElement([
            true,false
        ]);
        $eat_pig = $this->faker->randomElement([
            true,false
        ]);
        $status = $this->faker->randomElement([
            "待聘女傭","直聘","已收合同但未有簽證者","請確定航程","已收合同但未有簽證，有預訂機者","已收合同和簽證，有預訂機票者","航程已被確定","機票在侯補單","已收合同和簽證，有預訂機票者"
        ]);
        $marital_status = $this->faker->randomElement([
            'married','widowed','separated','divorced','single'
        ]);

        if($unemployed){
            $visa['in'] = $this->faker->dateTimeThisYear();
            $visa['out'] = $this->faker->dateTimeInInterval($startDate = '+2 years', $interval = '+ 5 days', $timezone = null);
            $employer = $this->faker->name;
        } else {
            $visa['in'] = '';
            $visa['out'] = '';
            $employer = '';
        }
        

        return [
            'bio_no' => $this->faker->userName,
            'name' => $this->faker->name,
            'jobs' => $job,
            'unemployed' => $unemployed,
            'cfm_date' => $this->faker->date,
            'employer_name' => $employer,
            'medical_date' => $this->faker->dateTime,
            'medical_result' => '',
            'passport_no' => $newfaker->idNumber,
            'passport_expired' => $this->faker->dateTime,
            'jo_type' => 'other',
            'jo_rcv_date' => $this->faker->dateTime,
            'jo_no' => $this->faker->buildingNumber,
            'mofa_rcv_date' => $this->faker->dateTime,
            'mofa_no' => $this->faker->buildingNumber,
            'visa_in' => $visa['in'],
            'visa_out' => $visa['out'],
            'jpl_date' => $this->faker->buildingNumber,
            'flight_date' => $this->faker->dateTime,
            'flight_no' => $this->faker->swiftBicNumber,
            'flight_eta' => $this->faker->dateTime,
            'marital_status' => $marital_status,
            'address' => $this->faker->address,
            'dob' => $this->faker->dateTime,
            'gender' => 'female',
            'height' => $this->faker->numberBetween(150,180),
            'weight' => $this->faker->numberBetween(40,200),
            'religion' => $religion,
            'eat_pig' => $eat_pig,
            'status' => $status,
        ];
    }
}
