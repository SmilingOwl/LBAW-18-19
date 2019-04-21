<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Models\Follow;

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
    protected $table = 'user';
    protected $primaryKey = 'id_user';

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
        return $this->hasMany('App\Models\Notification');
    }

    public function questions()
    {
        return $this->hasMany('App\Models\Question', 'id_user');
    }

    public function answers()
    {
        return $this->hasMany('App\Models\Answer', 'id_user');
    }

    public function comments()
    {
        return $this->hasMany('App\Models\Comment', 'id_user');
    }


    public function followers()
    {
        return $this->belongsToMany(Member::class, 'follow_member', 'following_id', 'follower_id');
    }

    public function followings()
    {
        return $this->belongsToMany(Member::class, 'follow_member', 'follower_id', 'following_id');
    }

    public function roles()
    {
        return $this->hasMany(Role::class,'id_user');
    }

    public function currentRole($id)
    {
        return $this->find($id)->roles->where('endDate',null);
    }

}
