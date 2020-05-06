<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
    /**
     * @var string
     */
    protected $table = 'skills';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =   [
                                'empID',
                                'skillname',
                            ];
     /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function skill1()
    {
        return $this->belongsTo(Personalinfo::class);
    }
}
