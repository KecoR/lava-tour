<?php

namespace App\Exports;

use App\Attendance;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;

class AttendanceExport implements FromArray, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function array(): array
    {
        return json_decode(Attendance::all());
    }

    public function headings(): array
    {
        return [
            'No',
            'Nama Peserta',
            'Bagian ID',
            'Hari 1',
            'Waktu',
            'Hari 2',
            'Waktu',
            'Hari 3',
            'Waktu',
            'Lava Tour',
            'created_at',
            'updated_at'
        ];
    }
}
