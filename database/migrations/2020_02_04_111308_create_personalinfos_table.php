<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePersonalinfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('personalinfos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name')->nullable();
            $table->string('father_name')->nullable();
            $table->string('mother_name')->nullable();
            $table->string('brother')->nullable();
            $table->string('sister')->nullable();
            $table->date('dob')->nullable();
            $table->string('religion')->nullable();
            $table->string('blood_group')->nullable();
            $table->integer('NID')->nullable();
            $table->text('persent_add')->nullable();
            $table->text('permanent_add')->nullable();
            $table->text('height')->nullable();
            $table->string('nationality')->nullable();
            $table->string('membership_scosity')->nullable();
            $table->string('department')->nullable();
            $table->string('image')->nullable();
            $table->string('slug')->nullable();
            $table->string('IsActive')->nullable();
            $table->string('expYear')->nullable();
            $table->string('rgularStuff')->nullable();
            $table->string('signature')->nullable();
            $table->string('signing')->nullable();
            $table->string('Employee_id')->nullable();
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
        Schema::dropIfExists('personalinfos');
    }
}
