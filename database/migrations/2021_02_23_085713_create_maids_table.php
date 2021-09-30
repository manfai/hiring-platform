<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMaidsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // id
        // bio_no
        // name
        // jobs
        // cfm_date
        // employer_name
        // medical_date
        // medical_result
        // passport_no
        // passport_expired
        // jo_type
        // jo_rcv_date
        // jo_no
        // mofa_rcv_date
        // mofa_no
        // visa_in
        // visa_out
        // jpl_date
        // flight_date
        // flight_no
        // flight_eta

        Schema::create('maids', function (Blueprint $table) {
            $table->id();
            $table->string('bio_no')->unique();
            $table->string('name');
            $table->string('jobs');
            $table->boolean('unemployed');
            $table->boolean('booked');
            $table->boolean('specific');
            $table->date('cfm_date');

            $table->string('employer_name');
            $table->date('medical_date');
            $table->string('medical_result');
            $table->string('passport_no');
            $table->string('passport_expired');
            $table->string('jo_type');
            $table->date('jo_rcv_date');
            $table->string('jo_no');
            $table->date('mofa_rcv_date');
            $table->string('mofa_no');
            $table->string('visa_in');
            $table->string('visa_out');
            $table->string('jpl_date');
            $table->dateTime('flight_date');
            $table->string('flight_no');
            $table->string('flight_eta');

            $table->string('marital_status');
            $table->string('address');
            $table->string('dob');
            $table->string('gender');   

            $table->integer('age');
            $table->float('height');
            $table->float('weight');
            $table->string('religion');
            $table->boolean('eat_pig');
            $table->string('status'); //待聘女傭 / 直聘 / 已收合同但未有簽證者 / 請確定航程 / 已收合同但未有簽證，有預訂機者 / 已收合同和簽證，有預訂機票者 / 航程已被確定 / 機票在侯補單 / 已收合同和簽證，有預訂機票者
            $table->json('tags');
            $table->json('remark');
            $table->timestamps();
            $table->softDeletes();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('maids');
    }
}
