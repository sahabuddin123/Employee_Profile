<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Workexpreance extends Model
{
    /**
     * @var string
     */
    protected $table = 'workexpreances';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
                            'empID',
                            'company_name',
                            'position',
                            'project_name',
                            'from',
                            'to'
                          ];

     /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function workexpreance1()
    {
        return $this->belongsTo(Personalinfo::class);
    }
}
