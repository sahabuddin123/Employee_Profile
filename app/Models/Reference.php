<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reference extends Model
{
    /**
     * @var string
     */
    protected $table = 'references';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =   [
                                'empID',
                                'ComName',
                                'refname',
                                'position',
                                'phone',
                                'Details',
                            ];
     /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function reference1()
    {
        return $this->belongsTo(Personalinfo::class);
    }
}
