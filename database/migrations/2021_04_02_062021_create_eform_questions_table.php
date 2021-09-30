<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEformQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('eform_questions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('eform_id');
            $table->foreign('eform_id')->references('id')->on('eforms')->onDelete('cascade');
            $table->string('type'); //select/boolean/text/textare/number
            $table->string('title');
            $table->string('help');
            $table->boolean('must'); //required
            $table->boolean('active'); //required
            $table->string('options'); //if select/boolean type
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
        Schema::dropIfExists('eform_questions');
    }
}
