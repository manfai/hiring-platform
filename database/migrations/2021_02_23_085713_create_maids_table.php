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
        Schema::create('maids', function (Blueprint $table) {
            $table->id();
            $table->string('code')->unique();
            $table->string('name');
            $table->string('jobs');
            $table->string('pending');
            $table->string('image');
            $table->string('employer_name');
            $table->string('email')->unique();
            $table->string('address');
            $table->string('dob');
            $table->string('gender');
            $table->string('marital_status');
            $table->integer('age');
            $table->float('height');
            $table->float('weight');
            $table->boolean('eat_pig');
            $table->string('religion');
            $table->boolean('visa');
            $table->boolean('contract');
            $table->boolean('airline_ticket');
            $table->string('status'); //待聘女傭 / 直聘 / 已收合同但未有簽證者 / 請確定航程 / 已收合同但未有簽證，有預訂機者 / 已收合同和簽證，有預訂機票者 / 航程已被確定 / 機票在侯補單 / 已收合同和簽證，有預訂機票者
            $table->json('tags');
            $table->json('remark');
            $table->timestamps();
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
