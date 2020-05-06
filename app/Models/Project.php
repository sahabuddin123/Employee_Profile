<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{

    /**
     * @var string
     */
    protected $table = 'projects';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =
    [
            'jobno',
            'pctg',
            'pdate',
            'ptitle',
            'cdetails',
            'contactp',
            'siteDDOC',
            'SASBD',
            'Arch',
            'Struc',
            'Elec',
            'Plum',
            'Plan',
            'visuali',
            'Authority',
            'Co_Ordination',
            'Experts',
            'OutSource',
            'FINANCE',
            'BOQ',
            'Estimation',
            'SiteEngr',
            'Supervison',
            'vendor',
            'note',
            'ProjectVL',
            'country',
            'LocationWC',
            'PDuration',
            'Cname',
            'CAddress',
            'PStartDate',
            'PCompleteD',
            'SCharge',
            'joinConsul',
            'NojoinCons',
            'NSPstaffP',
            'NSPstaffN',
            'DNDescriptionP',
            'DDASPstaff',
            'Firmsname',
            'image',
            'AuthordSignature',
            'slug',
            'IsActive'
        ];


}
