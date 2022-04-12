<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Mail;

use App\Mail\SendMail;

use App\Models\Medicine;

use App\Models\Disease;

use App\Models\Doctor;

use App\Models\Medicines_Diseases;

class StudentsContoroller extends Controller
{
    
    public function addMed(Request $req)
    {
        $req->validate(
            [
              'name'=>'required|unique:medicines,name', 
              'disease'=>'required',
              'details'=>'required',
              'price'=>'required|regex:/^[0-9]+$/',
            ],
            [
              'name.required'=>'Please Enter a valid Name',
              'disease.required'=>'Please Enter a valid Disease',
              'details.required'=>'Please Enter a valid Details',
              'price.required'=>'Please Enter a valid Price',
              'price.regex'=>'Please Enter a Numeric Price',
            ]
          );

        $med = new Medicine();
        $med->name = $req->name;
        $med->disease = $req->disease;
        $med->details = $req->details;
        $med->price = $req->price;
       
        if($med->save())
        {
            return response()->json(["Message"=>"Data Stored Successfully"]);
        }
        return response()->json(["Message"=>"Data Storing Failed"]);
    }

    public function editMed(Request $req)
    {
        $req->validate(
            [
              'id'=>'required', 
              'name'=>'required|unique:medicines,name', 
              'disease'=>'required',
              'details'=>'required',
              'price'=>'required|regex:/^[0-9]+$/',
            ],
            [
              'id.required'=>'Please Enter a valid id',
              'name.required'=>'Please Enter a valid Name',
              'disease.required'=>'Please Enter a valid Disease',
              'details.required'=>'Please Enter a valid Details',
              'price.required'=>'Please Enter a valid Price',
              'price.regex'=>'Please Enter a Numeric Price',
            ]
          );

        $med = new Medicine();
        $med->exists = true;
        $med->id = $req->id;
        $med->name = $req->name;
        $med->disease = $req->disease;
        $med->details = $req->details;
        $med->price = $req->price;
       
        if($med->save())
        {
            return response()->json(["Message"=>"Data Editted Successfully"]);
        }
        return response()->json(["Message"=>"Data Editting Failed"]);
    }

    public function deleteMed(Request $req)
    {
        $med = Medicine::where('id',$req->id)->delete();

        if($med)
        {
            return response()->json(["Message"=>"Data Deletted Successfully"]);
        }
        return response()->json(["Message"=>"Data Deleting Failed"]);

    }

    public function addDis(Request $req)
    {
        $req->validate(
            [
              'name'=>'required|unique:diseases,name', 
              'medicine'=>'required',
              'details'=>'required'
            ],
            [
              'name.required'=>'Please Enter a valid Name',
              'medicine.required'=>'Please Enter a valid medicine',
              'details.required'=>'Please Enter a valid Details'
            ]
          );

        $dis = new Disease();
        $dis->name = $req->name;
        $dis->medicine = $req->medicine;
        $dis->details = $req->details;
       
        if($dis->save())
        {
            return response()->json(["Message"=>"Data Stored Successfully"]);
        }
        return response()->json(["Message"=>"Data Storing Failed"]);
    }
    public function editDis(Request $req)
    {
        $req->validate(
            [
              'id'=>'required',
              'name'=>'required|unique:diseases,name', 
              'medicine'=>'required',
              'details'=>'required',
            ],
            [
              'id.required'=>'Please Enter a valid id',
              'name.required'=>'Please Enter a valid Name',
              'medicine.required'=>'Please Enter a valid medicine',
              'details.required'=>'Please Enter a valid Details',
            ]
          );

        $dis = new Disease();
        $dis->exists = true;
        $dis->id = $req->id;
        $dis->name = $req->name;
        $dis->medicine = $req->medicine;
        $dis->details = $req->details;
       
        if($dis->save())
        {
            return response()->json(["Message"=>"Data Editted Successfully"]);
        }
        return response()->json(["Message"=>"Data Editting Failed"]);
    }

    public function deleteDis(Request $req)
    {
        $dis = Disease::where('id',$req->id)->delete();

        if($dis)
        {
            return response()->json(["Message"=>"Data Deletted Successfully"]);
        }
        return response()->json(["Message"=>"Data Deleting Failed"]);
    }

    public function addDoc(Request $req)
    {
        $req->validate(
            [
              'name'=>'required', 
              'phone'=>'required|unique:doctors,phone|numeric|regex:/(01)[0-9]{9}/',
              'email'=>'required|email|unique:doctors,email',
              'department'=>'required',
              'bio'=>'required',
              'joining_date'=>'required'
            ],
            [
                
                'name.required'=>'Please Enter a valid Name',
                'phone.required'=>'Please Enter a valid medicine',
                'email.required'=>'Please Enter a valid Details',
                'department.required'=>'Please Enter a valid Details',
                'bio.required'=>'Please Enter a valid Details',
                'joining_date.required'=>'Please Enter a valid Details',

              ]
          );
          
        $st = new Doctor();
        $st->name = $req->name;
        $st->phone = $req->phone;
        $st->email = $req->email;
        $st->department = $req->department;
        $st->bio = $req->bio;
        $st->joining_date = $req->joining_date;

        if($st->save())
        {
            return response()->json(["Message"=>"Data Stored Successfully"]);
        }
        return response()->json(["Message"=>"Data Storing Failed"]);
    }

    public function editDoc(Request $req)
    {
        $req->validate(
            [
              'id'=>'required',
              'name'=>'required', 
              'phone'=>'required|unique:doctors,phone',
              'email'=>'required|email|unique:doctors,email',
              'department'=>'required',
              'bio'=>'required',
              'joining_date'=>'required'
            ],
            [
                'id.required'=>'Please Enter a valid id',
                'name.required'=>'Please Enter a valid Name',
                'phone.required'=>'Please Enter a valid medicine',
                'email.required'=>'Please Enter a valid Details',
                'department.required'=>'Please Enter a valid Details',
                'bio.required'=>'Please Enter a valid Details',
                'joining_date.required'=>'Please Enter a valid Details',

            ]
          );
        $st = new Doctor();
        $st->exists = true;
        $st->id = $req->id;
        $st->name = $req->name;
        $st->phone = $req->phone;
        $st->email = $req->email;
        $st->department = $req->department;
        $st->bio = $req->bio;
        $st->joining_date = $req->joining_date;

       
        if($st->save())
        {
            return response()->json(["Message"=>"Data Editted Successfully"]);
        }
        return response()->json(["Message"=>"Data Editting Failed"]);
    }

    public function deleteDoc(Request $req)
    {
        $st = Doctor::where('id',$req->id)->delete();

        if($st)
        {
            return response()->json(["Message"=>"Data Deletted Successfully"]);
        }
        return response()->json(["Message"=>"Data Deleting Failed"]);
    }
    public function store_MeDis(Request $request)
    {
        
        $md = new Medicines_Diseases;
        
        $md->Medicines_id = $request->Medicines_id;
        $md->Diseases_id = $request->Diseases_id;
        
        if($md->save())
        {
            return response()->json(["Message"=>"Medicines & Diseases Information Merged Successfully"]);
        }
        return response()->json(["Message"=>"Merge Failed"]);
    }

    public function edit_MeDis(Request $request)
    {
        
        $md = new Medicines_Diseases();
        $md->exists = true;
        $md->id = $request->id;
        $md->Medicines_id = $request->Medicines_id;
        $md->Diseases_id = $request->Diseases_id;
        
        if($md->save())
        {
            return response()->json(["Message"=>"Medicines & Diseases Information Editted Successfully"]);
        }
        return response()->json(["Message"=>"Editted Merge Failed"]);
    }
    public function delete_MeDis(Request $req)
    {
        $st = Medicines_Diseases::where('id',$req->id)->delete();

        if($st)
        {
            return response()->json(["Message"=>"Medicines & Diseases Information Deletted Successfully"]);
        }
        return response()->json(["Message"=>"Medicines & Diseases Information Deleting Failed"]);
    }


}