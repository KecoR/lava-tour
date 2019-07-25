<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bagian extends Model
{
    protected $table = "bagian";

    public function unit_kerja()
    {
        return $this->belongsTo('App\UnitKerja', 'unit_kerja_id', 'id');
    }
}
