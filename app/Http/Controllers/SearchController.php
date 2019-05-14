<?php

class SearchController extends Controller
{
    public function get(Request $request, $query)
    {
        // Content type being searched - Questions, topics, Members)
        $type = $request->input('type');
        $chunk = intval($request->input('chunk'));
        $maxNr = 15;
        $result = [];

        switch ($type) {
            case 'questions':
                $result = $this->getQuestions($query, $chunk, $maxNr);
                break;

            case 'members':
                $result = $this->getMembers($query, $chunk, $maxNr);
                break;
            default:
                break;
        }
        return $result;
    }

    private function getQuestions($search_input,$chunkNr,$maxNr)
    {
        $questions = \App\Models\Question::whereRaw('search @@ to_tsquery(\'english\', replace(plainto_tsquery(\'english\', ?)::text, \'&\', \'|\'))', [$search_input])
            ->orderByRaw('ts_rank(search, to_tsquery(\'english\', replace(plainto_tsquery(\'english\', ?)::text, \'&\', \'|\'))) DESC', [$search_input])
            ->get();

        $res = getDataChunk($questions,$chunkNr,$maxNr);
        $res['data'] = QuestionResource::collection($res['data']);
        return $res;
    }



    private function getMembers($search_input, $chunkNr, $maxNr)
    {
        $members = \App\Models\Member::where('username', 'ILIKE', '%' . $search_input . '%')
            ->orWhere('username', 'ILIKE', '%' . $search_input . '%')
            ->get();
        $res = getDataChunk($members, $chunkNr, $maxNr);
        $res['data'] = MemberResource::collection($res['data']);
        return $res;
    }
}