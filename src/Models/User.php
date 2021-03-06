<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model {
    protected $guarded = array();

    public function user_interests()
    {
        return $this->hasMany('App\Models\UserInterest');
    }

    public function interests(){
        return $this->belongsToMany('App\Models\Interest','user_interests');
    }
}