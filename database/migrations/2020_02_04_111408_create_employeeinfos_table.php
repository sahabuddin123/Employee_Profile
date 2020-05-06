<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeeinfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employeeinfos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('empID')->unsigned();
            $table->foreign('empID')->references('id')->on('personalinfos')->onDelete('cascade');
            $table->string('countrywork')->nullable();
            $table->string('bestwork')->nullable();
            $table->string('position')->nullable();
            $table->string('department')->nullable();
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
        Schema::dropIfExists('employeeinfos');
    }
}
