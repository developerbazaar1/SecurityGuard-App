<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    protected $table='booking';
    protected $primaryKey='id';
    protected $fillable=['customer_id', 'vendor_id', 'service_id', 'booking_date_time', 'booking_start_date', 'booking_end_date', 'booking_start_time', 'booking_end_time', 'booking_hours', 'service_charges', 'booking_total_amount', 'booking_id', 'booking_status', 'paid_currency', 'paid_transaction_id', 'paid_status', 'location', 'zipcode', 'transaction_msg'];


    public function customerdetails(){
        return $this->belongsTo(User::class,'customer_id', 'user_id');
    }

    public function vendordetails(){
        return $this->belongsTo(User::class,'vendor_id', 'user_id');
    }

    public function servicedetails(){
        return $this->belongsTo(Service::class,'service_id');
    }

}
