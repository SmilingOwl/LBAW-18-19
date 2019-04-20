<?php

namespace App\Policies;

use App\Member;
use App\Comment;
use Illuminate\Auth\Access\HandlesAuthorization;

class AnswerPolicy
{
    use HandlesAuthorization;

     /**
     * Determine whether the user can update the comment.
     *
     * @param  \App\Member  $user
     * @param  \App\Answer  $comment
     * @return mixed
     */
    public function update(Member $user, Comment $comment)
    {
        return $user->id === $comment->author_id;
    }

    /**
     * Determine whether the user can delete the comment.
     *
     * @param  \App\Member  $user
     * @param  \App\Answer  $comment
     * @return mixed
     */
    public function delete(Member $user, Answer $comment)
    {
        return $user->id === $comment->author_id;
    }
}
