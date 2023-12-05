<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;


class UserDoc extends Model
{
    protected $table='user_documents_media';
    protected $primaryKey='id';
    protected $fillable=['name', 'document', 'user_id', 'type'];

    public function vendordetails()
    {
        return $this->belongsTo(User::class);
    }
}


