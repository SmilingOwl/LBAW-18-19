<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * id_question 
 * title
 * description
 * "date" 
 * votes integer
 * photo
 * deleted boolean 
 * id_category int
 * id_user int 
 * search tsvector
 */
class Question extends Model
{
    public $timestamps  = false;
    protected $primaryKey= 'id_question';

    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'question';
    
    /**
     * @var array
     */
    protected $fillable = ['id_user', 'title', 'description', 'deleted', 'photo', 'id_category'];
    
    /**
     * Queries
     */
    
    public function getAnswers() {
        return $this->answers;
    }

    public function getNumAnswers() {
        return count($this->answers);
    
    }
    public function addComment($comment) {
        return $this->comments()->create($comment);
    }

    /** 
     * Relations
     */

    public function member()
    {
        return $this->belongsTo('App\Models\Member', 'id_user');
    }

    public function answers()
    {
        return $this->hasMany('App\Models\Answer');
    }



}
