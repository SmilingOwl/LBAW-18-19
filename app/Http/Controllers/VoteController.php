<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class VoteController extends Controller
{
    public function upVoteQuestion($id)
    {
        if(Auth::check())
        {
            $replaces = [
                'id_question' => $id,
                'id_user' => Auth::user()->id_user
            ];
            $alreadyVoted=DB::select('
            SELECT type
            FROM voteQuestion
            WHERE id_question = :id_question AND username = :id_user
            ',$replaces
            );
            if(count($alreadyVoted)==0)
            {
                $newVote = [
                    'id_question' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'upvote'
                ];
                $updateVote = [
                    'id_question' => $id
                ];
                DB::select('
                INSERT INTO voteQuestion(username,id_question,type)
                Values(:username,:id_question,:type)
                ',$newVote
                );
                DB::select('
                UPDATE  question
                SET votes = votes + 1
                WHERE id_question = :id_question;
                ',$updateVote
                );
            }
            else
            {
                $newUpdate = [
                    'id_question' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'upvote'
                ];
                $updateVote = [
                    'id_question' => $id
                ];
                DB::select('
                UPDATE voteQuestion
                SET type = :type
                WHERE username = :username AND id_question = :id_question;
                ',$newUpdate
                );
                if($alreadyVoted[0]->type=='downvote')
                {
                    DB::select('
                    UPDATE  question
                    SET votes = votes + 2
                    WHERE id_question = :id_question;
                    ',$updateVote
                    );
                }
                else if($alreadyVoted[0]->type=='nothing')
                {
                    DB::select('
                    UPDATE  question
                    SET votes = votes + 1
                    WHERE id_question = :id_question;
                    ',$updateVote
                    );
                }
            }
        }
        else
        {
            return redirect('/404');
        }
    }
    public function downVoteQuestion($id)
    {
        if(Auth::check())
        {
            $replaces = [
                'id_question' => $id,
                'id_user' => Auth::user()->id_user
            ];
            $alreadyVoted=DB::select('
            SELECT type
            FROM voteQuestion
            WHERE id_question = :id_question AND username = :id_user
            ',$replaces
            );
            if(count($alreadyVoted)==0)
            {
                $newVote = [
                    'id_question' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'downvote'
                ];
                $updateVote = [
                    'id_question' => $id
                ];
                DB::select('
                INSERT INTO voteQuestion(username,id_question,type)
                Values(:username,:id_question,:type)
                ',$newVote
                );
                DB::select('
                UPDATE  question
                SET votes = votes - 1
                WHERE id_question = :id_question;
                ',$updateVote
                );
            }
            else
            {
                $newUpdate = [
                    'id_question' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'downvote'
                ];
                $updateVote = [
                    'id_question' => $id
                ];
                DB::select('
                UPDATE voteQuestion
                SET type = :type
                WHERE username = :username AND id_question = :id_question;
                ',$newUpdate
                );
                if($alreadyVoted[0]->type=='upvote')
                {
                    DB::select('
                    UPDATE  question
                    SET votes = votes - 2
                    WHERE id_question = :id_question;
                    ',$updateVote
                    );
                }
                else if($alreadyVoted[0]->type=='nothing')
                {
                    DB::select('
                    UPDATE  question
                    SET votes = votes - 1
                    WHERE id_question = :id_question;
                    ',$updateVote
                    );
                }
            }
        }
        else
        {
            return redirect('/404');
        }
    }
    public function nothingVoteQuestion($id)
    {
        if(Auth::check())
        {
            $replaces = [
                'id_question' => $id,
                'id_user' => Auth::user()->id_user
            ];
            $alreadyVoted=DB::select('
            SELECT type
            FROM voteQuestion
            WHERE id_question = :id_question AND username = :id_user
            ',$replaces
            );
            if(count($alreadyVoted)==0)
            {
                $newVote = [
                    'id_question' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'nothing'
                ];
                DB::select('
                INSERT INTO voteQuestion(username,id_question,type)
                Values(:username,:id_question,:type)
                ',$newVote
                );
            }
            else
            {
                $newUpdate = [
                    'id_question' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'nothing'
                ];
                $updateVote = [
                    'id_question' => $id
                ];
                DB::select('
                UPDATE voteQuestion
                SET type = :type
                WHERE username = :username AND id_question = :id_question;
                ',$newUpdate
                );
                if($alreadyVoted[0]->type=='upvote')
                {
                    DB::select('
                    UPDATE  question
                    SET votes = votes - 1
                    WHERE id_question = :id_question;
                    ',$updateVote
                    );
                }
                else if($alreadyVoted[0]->type=='downvote')
                {
                    DB::select('
                    UPDATE  question
                    SET votes = votes + 1
                    WHERE id_question = :id_question;
                    ',$updateVote
                    );
                }
            }
        }
        else
        {
            return redirect('/404');
        }
    }








    public function upVoteAnswer($id)
    {
        if(Auth::check())
        {
            $replaces = [
                'id_answer' => $id,
                'id_user' => Auth::user()->id_user
            ];
            $alreadyVoted=DB::select('
            SELECT type
            FROM voteAnswer
            WHERE id_answer = :id_answer AND username = :id_user
            ',$replaces
            );
            if(count($alreadyVoted)==0)
            {
                $newVote = [
                    'id_answer' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'upvote'
                ];
                $updateVote = [
                    'id_answer' => $id
                ];
                DB::select('
                INSERT INTO voteAnswer(username,id_answer,type)
                Values(:username,:id_answer,:type)
                ',$newVote
                );
                DB::select('
                UPDATE  answer
                SET votes = votes + 1
                WHERE id_answer = :id_answer;
                ',$updateVote
                );
            }
            else
            {
                $newUpdate = [
                    'id_answer' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'upvote'
                ];
                $updateVote = [
                    'id_answer' => $id
                ];
                DB::select('
                UPDATE voteAnswer
                SET type = :type
                WHERE username = :username AND id_answer = :id_answer;
                ',$newUpdate
                );
                if($alreadyVoted[0]->type=='downvote')
                {
                    DB::select('
                    UPDATE  answer
                    SET votes = votes + 2
                    WHERE id_answer = :id_answer;
                    ',$updateVote
                    );
                }
                else if($alreadyVoted[0]->type=='nothing')
                {
                    DB::select('
                    UPDATE  answer
                    SET votes = votes + 1
                    WHERE id_answer = :id_answer;
                    ',$updateVote
                    );
                }
            }
        }
        else
        {
            return redirect('/404');
        }
    }
    public function downVoteAnswer($id)
    {
        if(Auth::check())
        {
            $replaces = [
                'id_answer' => $id,
                'id_user' => Auth::user()->id_user
            ];
            $alreadyVoted=DB::select('
            SELECT type
            FROM voteAnswer
            WHERE id_answer = :id_answer AND username = :id_user
            ',$replaces
            );
            if(count($alreadyVoted)==0)
            {
                $newVote = [
                    'id_answer' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'downvote'
                ];
                $updateVote = [
                    'id_answer' => $id
                ];
                DB::select('
                INSERT INTO voteAnswer(username,id_answer,type)
                Values(:username,:id_answer,:type)
                ',$newVote
                );
                DB::select('
                UPDATE  answer
                SET votes = votes - 1
                WHERE id_answer = :id_answer;
                ',$updateVote
                );
            }
            else
            {
                $newUpdate = [
                    'id_answer' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'downvote'
                ];
                $updateVote = [
                    'id_answer' => $id
                ];
                DB::select('
                UPDATE voteAnswer
                SET type = :type
                WHERE username = :username AND id_answer = :id_answer;
                ',$newUpdate
                );
                if($alreadyVoted[0]->type=='upvote')
                {
                    DB::select('
                    UPDATE  answer
                    SET votes = votes - 2
                    WHERE id_answer = :id_answer;
                    ',$updateVote
                    );
                }
                else if($alreadyVoted[0]->type=='nothing')
                {
                    DB::select('
                    UPDATE  answer
                    SET votes = votes - 1
                    WHERE id_answer = :id_answer;
                    ',$updateVote
                    );
                }
            }
        }
        else
        {
            return redirect('/404');
        }
    }
    public function nothingVoteAnswer($id)
    {
        if(Auth::check())
        {
            $replaces = [
                'id_answer' => $id,
                'id_user' => Auth::user()->id_user
            ];
            $alreadyVoted=DB::select('
            SELECT type
            FROM voteAnswer
            WHERE id_answer = :id_answer AND username = :id_user
            ',$replaces
            );
            if(count($alreadyVoted)==0)
            {
                $newVote = [
                    'id_answer' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'nothing'
                ];
                DB::select('
                INSERT INTO voteAnswer(username,id_answer,type)
                Values(:username,:id_answer,:type)
                ',$newVote
                );
            }
            else
            {
                $newUpdate = [
                    'id_answer' => $id,
                    'username' => Auth::user()->id_user,
                    'type' => 'nothing'
                ];
                $updateVote = [
                    'id_answer' => $id
                ];
                DB::select('
                UPDATE voteAnswer
                SET type = :type
                WHERE username = :username AND id_answer = :id_answer;
                ',$newUpdate
                );
                if($alreadyVoted[0]->type=='upvote')
                {
                    DB::select('
                    UPDATE  answer
                    SET votes = votes - 1
                    WHERE id_answer = :id_answer;
                    ',$updateVote
                    );
                }
                else if($alreadyVoted[0]->type=='downvote')
                {
                    DB::select('
                    UPDATE  answer
                    SET votes = votes + 1
                    WHERE id_answer = :id_answer;
                    ',$updateVote
                    );
                }
            }
        }
        else
        {
            return redirect('/404');
        }
    }



}
