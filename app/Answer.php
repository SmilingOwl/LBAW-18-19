<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id_answer
 * @property string $text
 * @property string $date
 * @property int $id_question
 * @property int $user_post
 * @property int $votes
 * @property string $photo
 * @property boolean deleted
 * @property string $search
 * @property Member $member
 * @property Question $question
 * @property Comment[] $comments
 */
class Answer extends Model
{
    // Don't add create and update timestamps in database.
    public $timestamps  = false;

    /**
     * The table associated with the model.
     */
    protected $table = 'answer';

    protected $fillable = ['id_question', 'user_post', 'text', 'date', 'votes', 'search'];

    public function member()
    {
        return $this->belongsTo('App\Member', 'user_post');
    }

    public function question()
    {
        return $this->belongsTo('App\Question');
    }

    public function comments()
    {
        return $this->hasMany('App\Comment');
    }

}
