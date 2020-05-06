<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEducationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('education', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('empID')->unsigned();
            $table->foreign('empID')->references('id')->on('personalinfos')->onDelete('cascade');
            $table->string('ExmTitle')->nullable();
            $table->string('board')->nullable();
            $table->string('passing_year')->nullable();
            $table->string('group')->nullable();
            $table->integer('CGPA')->nullable();
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
        Schema::dropIfExists('education');
    }
}
