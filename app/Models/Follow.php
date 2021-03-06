<?php
namespace App\Models;

use App\Member;

trait Follow
{

    //Follow members

    /**
     * Check if a given user is following this user.
     *
     * @param Member $member
     * @return bool
     */
    public function isFollowing(Member $member)
    {
        return !! $this->followings()->where('following', $member->id)->count();
    }

    /**
     * Check if a given user is being followed by this user.
     *
     * @param Member $member
     * @return bool
     */
    public function isFollowedBy(Member $member)
    {
        return !! $this->followers()->where('follower', $member->id)->count();
    }

    /**
     * Follow the given user.
     *
     * @param User $user
     * @return mixed
     */
    public function follow(Member $member)
    {
        if (! $this->isFollowing($member) && $this->id != $member->id)
        {
            $this->followings()->attach($member);
        }
    }

    /**
     * Unfollow the given user.
     *
     * @param User $user
     * @return mixed
     */
    public function unFollow(Member $member)
    {
        return $this->followings()->detach($member);
    }

}