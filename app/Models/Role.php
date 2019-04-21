<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Member;

class Role extends Model
{
    // Don't add create and update timestamps in database.
    public $timestamps  = false;

    /**
     * The table associated with the model.
     */
    protected $table = 'role';
    protected $primaryKey = 'id_role';

    protected $fillable = ['type', 'beginningDate', 'endDate', 'id_user'];

    public function __construct()
    {
         
    }
}
