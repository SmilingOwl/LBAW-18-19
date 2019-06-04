<?php

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

   /* public function autocomplete(Request $request)
    {
        
        $data =Member::select("username")
        ->where("username","LIKE","%{$request->input('query')}%")
        ->get();
        return response()->json($data);
    }*/
}