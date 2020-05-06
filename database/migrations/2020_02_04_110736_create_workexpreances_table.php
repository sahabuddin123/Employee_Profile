<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWorkexpreancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('workexpreances', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('empID')->unsigned();
            $table->foreign('empID')->references('id')->on('personalinfos')->onDelete('cascade');
            $table->string('company_name')->nullable();
            $table->string('position')->nullable();
            $table->text('project_name')->nullable();
            $table->string('from')->nullable();
            $table->string('to')->nullable();
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
        Schema::dropIfExists('workexpreances');
    }
}
