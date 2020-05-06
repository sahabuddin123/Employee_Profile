<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Traning extends Model
{
    /**
     * @var string
     */
    protected $table = 'tranings';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
                            'empID',
                            'TraningTitle',
                            'duration'
                          ];

     /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function traning1()
    {
        return $this->belongsTo(Personalinfo::class);
    }
}
