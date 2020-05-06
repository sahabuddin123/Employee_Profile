<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTraningsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tranings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('empID')->unsigned();
            $table->foreign('empID')->references('id')->on('personalinfos')->onDelete('cascade');
            $table->string('TraningTitle')->nullable();
            $table->string('duration')->nullable();
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
        Schema::dropIfExists('tranings');
    }
}
