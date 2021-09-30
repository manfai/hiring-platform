<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMaidDocumentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('maid_documents', function (Blueprint $table) {
        //     $table->id();
        //     $table->unsignedBigInteger('maid_id');
        //     $table->foreign('maid_id')->references('id')->on('maids')->onDelete('cascade');
        //     $table->string('type');
        //     $table->string('file_name');
        //     $table->string('size');
        //     $table->string('path');
        //     $table->string('remark');
        //     $table->timestamps();
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Schema::dropIfExists('maid_documents');
    }
}
