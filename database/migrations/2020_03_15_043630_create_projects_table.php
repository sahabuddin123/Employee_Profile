<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('jobno')->nullable();
            $table->string('pctg')->nullable();
            $table->string('pdate')->nullable();
            $table->string('ptitle')->nullable();
            $table->string('cdetails')->nullable();
            $table->string('contactp')->nullable();
            $table->string('siteDDOC')->nullable();
            $table->string('SASBD')->nullable();
            $table->string('Arch')->nullable();
            $table->string('Struc')->nullable();
            $table->string('Elec')->nullable();
            $table->string('Plum')->nullable();
            $table->string('Plan')->nullable();
            $table->string('visuali')->nullable();
            $table->string('Authority')->nullable();
            $table->string('Co_Ordination')->nullable();
            $table->string('Experts')->nullable();
            $table->string('OutSource')->nullable();
            $table->string('FINANCE')->nullable();
            $table->string('BOQ')->nullable();
            $table->string('Estimation')->nullable();
            $table->string('SiteEngr')->nullable();
            $table->string('Supervison')->nullable();
            $table->string('vendor')->nullable();
            $table->text('note')->nullable();
            $table->string('ProjectVL')->nullable();
            $table->string('country')->nullable();
            $table->string('LocationWC')->nullable();
            $table->string('PDuration')->nullable();
            $table->string('Cname')->nullable();
            $table->string('CAddress')->nullable();
            $table->string('PStartDate')->nullable();
            $table->string('PCompleteD')->nullable();
            $table->string('SCharge')->nullable();
            $table->string('joinConsul')->default('N/A');
            $table->string('NojoinCons')->default('N/A');
            $table->string('NSPstaffP')->nullable();
            $table->string('NSPstaffN')->nullable();
            $table->text('DNDescriptionP')->nullable();
            $table->text('DDASPstaff')->nullable();
            $table->string('Firmsname')->nullable();
            $table->string('image')->nullable();
            $table->string('AuthordSignature')->nullable();
            $table->string('slug')->nullable();
            $table->string('IsActive')->default('0');
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
        Schema::dropIfExists('projects');
    }
}
