<?php

namespace App\Policies;

use App\Member;
use Illuminate\Auth\Access\HandlesAuthorization;

class MemberPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can update the member.
     *
     * @param  \App\Member  $member
     * @return mixed
     */
    public function update(Member $user, Member $member)
    {
        return $user->id === $member->id; 
    }

    public function follow(Member $user, Member $followTarget){
        return $user->id != $followTarget->id;
    }

    public function delete(Member $user, Member $user2)      
    {
        return $user->id_user === $user2->id_user;
    }
}
