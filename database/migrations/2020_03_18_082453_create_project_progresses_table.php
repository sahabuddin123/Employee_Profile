<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectProgressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('project_progresses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('Pid')->unsigned();
            $table->foreign('Pid')->references('id')->on('projects')->onDelete('cascade');
            $table->string('Dgname')->nullable();
            $table->string('twork')->nullable();
            $table->string('cwork')->nullable();
            $table->date('wstart')->nullable();
            $table->date('wend')->nullable();
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
        Schema::dropIfExists('project_progresses');
    }
}
