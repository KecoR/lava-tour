<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    protected $table = "attendance";

    public function bagian()
    {
        return $this->belongsTo('App\Bagian', 'bagian_id', 'id');
    }
}
