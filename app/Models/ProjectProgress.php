<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProjectProgress extends Model
{
      /**
     * @var string
     */
    protected $table = 'project_progresses';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =
    [
        'Pid',
        'Dgname',
        'twork',
        'cwork',
        'wstart',
        'wend'
    ];



}
