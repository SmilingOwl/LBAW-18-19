<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id_notification
 * @property string $description
 * @property string $type
 * @property boolean $view 
 * @property string $date
 * @property Member $id_user
 */

class Notification extends Model
{
    // Don't add create and update timestamps in database.
    public $timestamps  = false;
    
    /**
     * The table associated with the model.
     */
    protected $table = 'notification';

    protected $fillable = ['id_user', 'type', 'date', 'description', 'view'];

    public function member()
    {
        return $this->belongsTo('App\Member');
    }
}
