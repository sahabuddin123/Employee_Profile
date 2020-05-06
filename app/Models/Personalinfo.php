<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use CyrildeWit\EloquentViewable\Viewable;
use CyrildeWit\EloquentViewable\Contracts\Viewable as ViewableContract;

class Personalinfo extends Model implements ViewableContract
{
    use Viewable;
    /**
     * @var string
     */
    protected $table = 'personalinfos';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =   [
                                'name',
                                'father_name',
                                'mother_name',
                                'brother',
                                'sister',
                                'dob',
                                'religion',
                                'blood_group',
                                'NID',
                                'persent_add',
                                'permanent_add',
                                'height',
                                'nationality',
                                'membership_scosity',
                                'department',
                                'image',
                                'slug',
                                'IsActive',
                                'expYear',
                                'rgularStuff',
                                'signature',
                                'signing',
                                'Employee_id'

                            ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function document()
    {
        return $this->hasMany(Document::class);
    }

    public function documentInfo($id)
    {
        return Document::where('empID',$id)->get();
    }

    /**
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function workexpreance()
    {
        return $this->hasMany(Workexpreance::class);
    }
    public function workexpreanceInfo($id)
    {
        return Workexpreance::where('empID',$id)->get();
    }

    /**
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function traning()
    {
        return $this->hasMany(Traning::class);
    }
    public function traningInfo($id)
    {
        return Traning::where('empID',$id)->get();
    }
    /**
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function education()
    {
        return $this->hasMany(Education::class);
    }
    public function educationInfo($id)
    {
        return Education::where('empID',$id)->get();
    }
    /**
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function employeeinfo()
    {
        return $this->hasMany(Employeeinfo::class);
    }
    public function employeeinfoInfo($id)
    {
        return Employeeinfo::where('empID',$id)->get();
    }
    /**
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function language()
    {
        return $this->hasMany(Language::class);
    }
    public function languageInfo($id)
    {
        return Language::where('empID',$id)->get();
    }
    /**
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function reference()
    {
        return $this->hasMany(Reference::class);
    }
    public function referenceInfo($id)
    {
        return Reference::where('empID',$id)->get();
    }
    /**
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function skill()
    {
        return $this->hasMany(Skill::class);
    }
    public function skillInfo($id)
    {
        return Skill::where('empID',$id)->get();
    }

    public function getDepartment(){
        return $this->belongsTo(Department::class);
    }

}
