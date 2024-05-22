<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\biodata;  // Import model work
use App\Models\work; // Import model work
use App\Models\education; // Import model education
use App\Models\skill; // Import model skill
use App\Models\project;  // Import model project
use App\Models\contact; // Import model contact



class BioController extends Controller
{
    public function index()
    {
        $biodata = biodata::find(1); // Gantilah ini dengan cara Anda mendapatkan data dari model
        $work = work::where('id_biodata', $biodata->id)->get(); // Gantilah ini dengan cara Anda mendapatkan data dari model
        $education = education::where('id_biodata', $biodata->id)->get(); // Gantilah ini dengan cara Anda mendapatkan data dari model
        $skill = skill::where('id_biodata', $biodata->id)->get(); // Gantilah ini dengan cara Anda mendapatkan data dari model
        $project = project::where('id_biodata', $biodata->id)->get(); // Gantilah ini dengan cara Anda mendapatkan data dari model
        
        return view('bio', compact('biodata','work','education','skill','project'));
    }

    public function store(Request $request)
    {
        // Validasi data
        $request->validate([
            'firstname' => 'required',
            'lastname' => 'required',
            'emails' => 'required|email',
            'subject' => 'required',
            'message' => 'required',
        ]);

        // Simpan data ke dalam tabel contacts
        $contact = new contact();
        $contact->firstname = $request->firstname;
        $contact->lastname = $request->lastname;
        $contact->emails = $request->emails;
        $contact->subject = $request->subject;
        $contact->message = $request->message;
        $contact->save();

        // Redirect ke halaman yang sesuai
        return redirect()->back()->with('success', 'Your message has been sent successfully!');
    }
}