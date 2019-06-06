<?php

namespace App\Http\Controllers\Question;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    public function get(Request $request, $query)
    {
        // Content type being searched - Questions, topics, Members)
        $type = $request->input('type');
        $maxNr = 15;
        $result = [];

        switch ($type) {
            case 'questions':
                $result = $this->getQuestions($query, $maxNr);
                break;

            case 'members':
                $result = $this->getMembers($query, $maxNr);
                break;
            default:
                break;
        }
        return $result;
    }

    private function getQuestions($search_input, $maxNr)
    {
        $questions = \App\Models\Question::whereRaw('search @@ to_tsquery(\'english\', replace(plainto_tsquery(\'english\', ?)::text, \'&\', \'|\'))', [$search_input])
            ->orderByRaw('ts_rank(search, to_tsquery(\'english\', replace(plainto_tsquery(\'english\', ?)::text, \'&\', \'|\'))) DESC', [$search_input])
            ->get();

        $res['data'] = QuestionResource::collection($res['data']);
        return $res;
    }



    private function getMembers($search_input, $maxNr)
    {
        $members = \App\Models\Member::where('username', 'ILIKE', '%' . $search_input . '%')
            ->orWhere('username', 'ILIKE', '%' . $search_input . '%')
            ->get();
        $res['data'] = MemberResource::collection($res['data']);
        return $res;
    }

    public function search()
    {
        $replace = [
            'search' => request('search'),
            'category' => request('category')
        ];
        if(request('category')=='all')
        {
            $result = DB::select('
            SELECT question.id_question as id, question.title as title, question."date" as "date", question.votes as votes, question.deleted as deleted ,"user".username,"user".profilePhoto,
            (
                Select count(answer.id_answer)
                From answer 
                WHERE question.id_question = answer.id_question
            ) as contagem, 
            (
                SELECT count(bestAnswer.id_bestAnswer) as hasBest
                FROM answer INNER JOIN bestAnswer ON ( answer.id_answer = bestAnswer.id_bestAnswer)
                WHERE answer.id_question = question.id_question
            ) as hasBest,category.icon as catIcon
            FROM (question INNER JOIN "user" ON (question.id_user = "user".id_user)) INNER JOIN category ON (category.id_category = question.id_category)
            WHERE search @@ plainto_tsquery(\'english\',:search) AND question.deleted = false AND "user".deleted = false AND "user".banned = false AND question.deleted = false
            ORDER BY ts_rank(search,plainto_tsquery(\'english\',:search)) DESC
            LIMIT 10;
            ',['search' => request('search')]
            );
        }
        else
        {
            $result = DB::select('
            SELECT question.id_question as id, question.title as title, question."date" as "date", question.votes as votes, question.deleted as deleted ,"user".username,"user".profilePhoto,
            (
                Select count(answer.id_answer)
                From answer 
                WHERE question.id_question = answer.id_question
            ) as contagem, 
            (
                SELECT count(bestAnswer.id_bestAnswer) as hasBest
                FROM answer INNER JOIN bestAnswer ON ( answer.id_answer = bestAnswer.id_bestAnswer)
                WHERE answer.id_question = question.id_question
            ) as hasBest,category.icon as catIcon
            FROM (question INNER JOIN "user" ON (question.id_user = "user".id_user)) INNER JOIN category ON (category.id_category = question.id_category)
            WHERE search @@ plainto_tsquery(\'english\',:search) AND question.deleted = false AND category.name LIKE :catName AND "user".deleted = false AND "user".banned = false AND question.deleted = false
            ORDER BY ts_rank(search,plainto_tsquery(\'english\',:search)) DESC
            LIMIT 10;
            ',$replace
            );
        }
        return view('pages.feed.search')->with('result',$result);
    }

   /* public function autocomplete(Request $request)
    {
        
        $data =Member::select("username")
        ->where("username","LIKE","%{$request->input('query')}%")
        ->get();
        return response()->json($data);
    }*/
}
