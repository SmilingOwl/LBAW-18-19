<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;



/**
 * @property int $id_user
 * @property string $username
 * @property string $password
 * @property string $email
 * @property string $bioDescription
 * @property string $profilePhoto
 * @property int $points
 * @property int $id_rank
 * @property boolean banned
 * @property boolean deleted
 * @property int $nr_questions
 * @property int $nr_answers
 * @property Notification[] $notifications
 * @property Question[] $questions
 * @property Answer[] $answers
 * @property Comment[] $comments
 */


 class Member extends Authenticatable
{
    use Notifiable, Follow;

    // Don't add create and update timestamps in database.
    public $timestamps  = false;

    /**
     * The table associated with the model.
     */
    protected $table = 'member';

    protected $fillable = ['username', 'email', 'password', 'birthdate', 'id_rank',
                            'bioDescription', 'profilePhoto', 'nr_questions',
                            'nr_answers', 'points', 'banned', 'deleted'];

    /**
     * The attributes that should be hidden for arrays.
     */
    protected $hidden = [
        'password', 'remember_token'
    ];

    public function getRouteKeyName()
    {
        return 'username';
    }

    /*
    * Relations
    */


    public function notifications()
    {
        return $this->hasMany('App\Notification');
    }

    public function questions()
    {
        return $this->hasMany('App\Question', 'id_user');
    }

    public function answers()
    {
        return $this->hasMany('App\Answer', 'id_user');
    }

    public function comments()
    {
        return $this->hasMany('App\Comment', 'id_user');
    }


    public function followers()
    {
        return $this->belongsToMany(Member::class, 'follow_member', 'following_id', 'follower_id');
    }

    public function followings()
    {
        return $this->belongsToMany(Member::class, 'follow_member', 'follower_id', 'following_id');
    }

}
