<?php

namespace App\Http\Controllers;

use App\User;
use App\Customer;
use App\CustomerFlight;
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
        // $user = User::find(10);
        // dd($user->customer()->first());
        // Users via customer
          $customer = Customer::find(5);
        //   dd($customer); 
        //   dd($customer->user()->first());
        //   dd($customer->customer_flight()->first());

        $flight = CustomerFlight::find(1);
        dd($flight->customer()->first());

        /**
         * 
         * Get CustomerFlight data via customer
         */

        //  $customer = Customer::find(5);
        //  dd($customer->customer_flight()->first());

        /**
         * 
         * Customerflights with seats
         */
        // $customer_flight = CustomerFlight::find(4);
        // dd($customer_flight->flight_seat()->first());

    }
}
