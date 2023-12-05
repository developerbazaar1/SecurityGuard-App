<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;


class Service extends Model
{
    protected $table='services';
    protected $primaryKey='id';
    protected $fillable=['service_title', 'service_image', 'charge', 'designation', 'experience', 'verified_badge', 'service_offered', 'short_description', 'description', 'service_id', 'commission', 'service_gallery_image1', 'service_gallery_image2', 'service_gallery_image3', 'service_gallery_image4'];
}


