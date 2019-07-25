<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

use Carbon\Carbon;
use App\Exports\AttendanceExport;

use App\Attendance;
use App\Bagian;
use App\UnitKerja;

class AksesController extends Controller
{

    public function selectUnit()
    {
        $unit = UnitKerja::all();

        return view('welcome', ['units' => $unit]);
    }

    public function selectChild($id)
    {
        $bagian = Bagian::where('unit_kerja_id', $id)->get();

        return view('selectChild', ['bagians' => $bagian]);
    }

    public function selectName($id)
    {
        $attend = Attendance::where('bagian_id',$id)->orderBy('name')->get();

        return view('selectName', ['attends' => $attend]);
    }

    public function selectNamePusat($id)
    {
        $bagian = Bagian::where('unit_kerja_id', $id)->first();
        $attend = Attendance::where('bagian_id', $bagian->id)->orderBy('name')->get();

        return view('selectNamePusat', ['attends' => $attend, 'bagian' => $bagian]);
    }

    public function back()
    {
        return redirect()->route('welcome');
    }

    public function attendView(Request $request)
    {
        $id = $request->get('id');

        $attend = Attendance::where('id', $id)->first();
        $time = Carbon::now();
        $checkDay = Carbon::now()->format('d');
        
        if ($checkDay == "26") {
            $day = $attend->hari_1;
            return view('attendView', ['attend' => $attend, 'time' => $time, 'day' => $day]);
        } elseif ($checkDay == "30") {
            $day = $attend->hari_2;
            return view('attendView', ['attend' => $attend, 'time' => $time, 'day' => $day]);
        } elseif ($checkDay == "31") {
            $day = $attend->hari_3;
            return view('attendView', ['attend' => $attend, 'time' => $time, 'day' => $day]);
        }
    }

    public function attendSave(Request $request)
    {
        $cekTime = Attendance::all();
        $unit = UnitKerja::all();

        $day = Carbon::now()->format('d');

        if($day == "26"){
            $id = $request->get('id');
            $time = $request->get('time');
            $attend = $request->get('attend');

            $user = Attendance::where('id', $id)->first();
            $user->hari_1 = 1;
            $user->time_1 = $time;
            $user->lava_tour = $attend;
            $user->save();

            return redirect()->route('welcome', ['units' => $unit])->with('status', $user->name.' Attendance Successfully.');
        } elseif ($day == "30" ) {
            $id = $request->get('id');
            $time = $request->get('time');
            $attend = $request->get('attend');

            $user = Attendance::where('id', $id)->first();
            $user->hari_2 = 1;
            $user->time_2 = $time;
            $user->lava_tour = $attend;
            $user->save();

            return redirect()->route('welcome', ['units' => $unit])->with('status', $user->name.' Attendance Successfully.');
        } elseif ($day == "31") {
            $id = $request->get('id');
            $time = $request->get('time');
            $attend = $request->get('attend');

            $user = Attendance::where('id', $id)->first();
            $user->hari_3 = 1;
            $user->time_3 = $time;
            $user->lava_tour = $attend;
            $user->save();

            return redirect()->route('welcome', ['units' => $unit])->with('status', $user->name.' Attendance Successfully.');
        }
    }

    public function userAdd()
    {
        $bagian = Bagian::all();

        return view('userAdd', ['bagians' => $bagian]);
    }

    public function userAddSave(Request $request)
    {
        $user = new Attendance;
        $user->name = $request->get('name');
        $user->bagian_id = $request->get('bagian');
        $user->save();

        return redirect()->back()->with('status', 'Berhasil menambahkan peserta');
    }

    public function exporttoExcel()
    {
        return Excel::download(new AttendanceExport, 'attendance.xlsx');
    }
}
