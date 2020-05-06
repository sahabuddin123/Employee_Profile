<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Employeeinfo extends Model
{
    /**
     * @var string
     */
    protected $table = 'employeeinfos';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =   [
                                'empID',
                                'countrywork',
                                'bestwork',
                                'position',
                                'department',
                            ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function employeeinfo1()
    {
        return $this->belongsTo(Personalinfo::class);
    }
}
