<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Staff extends Model
{
    use SoftDeletes;

    protected $table = 'staffs';

    public function user()
    {
        return $this->hasOne(Staff::class, 'users_id', 'id');
    }
}
