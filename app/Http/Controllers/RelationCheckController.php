<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class RelationCheckController extends Controller
{
    public function check()
    {
        $all_user = User::get();

        //dd($all_user);

        /**
         *  Get Staffs Data via Users
         * 
         */
        //$user = User::find(3);
        // dd($user->staff()->first());

        /**
         *  Get Customer Data via Users
         * 
         */
        $user = User::find(10);
        dd($user->customer()->first());

    }
}
