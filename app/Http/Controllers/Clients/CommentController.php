<?php

namespace App\Http\Controllers\Clients;

use App\Events\NewCommentEvent;
use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Movie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{

    public function store(Request $request, Movie $movie)
    {
        $request->validate([
            'content' => 'required|string|max:500',
        ]);

        $comment = new Comment();
        $comment->content = $request->content;
        $comment->user_id = Auth::id();
        $comment->movie_id = $movie->id;
        $comment->save();

        return response()->json([
            'success' => true,
            'comment' => [
                'user' => Auth::user()->name,
                'content' => $comment->content,
                'created_at' => $comment->created_at->diffForHumans(),
            ]
        ]);
    }
    public function getComments(Movie $movie)
    {
        $comments = $movie->comments()->with('user')->where("status",1)->latest()->paginate(5);

        return response()->json([
            'success' => true,
            'current_user_id' => Auth::id(), // trả về user hiện tại
            'comments' => $comments->map(function ($comment) {
                return [
                    'id' => $comment->id,
                    'user' => $comment->user->name,
                    'user_id' => $comment->user->id,
                    'avatar' => $comment->user->avatar ? asset($comment->user->avatar) : null,
                    'content' => $comment->content,
                    'created_at' => $comment->created_at->diffForHumans(),
                ];
            })
        ]);
    }

    public function hide($id)
    {
        $comment = Comment::find($id);

        if ($comment) {
            $comment->status = 0;
            $comment->save();

            return response()->json(['message' => 'Bình luận đã được ẩn thành công.']);
        } else {
            return response()->json(['message' => 'Không tìm thấy bình luận.'], 404);
        }
    }
    public function update(Request $request, Comment $comment)
    {
        $request->validate([
            'content' => 'required|string|max:500',
        ]);

        if (Auth::id() !== $comment->user_id) {
            return response()->json(['success' => false, 'message' => 'Unauthorized'], 403);
        }

        $comment->content = $request->content;
        $comment->save();

        return response()->json([
            'success' => true,
            'updated' => [
                'content' => $comment->content
            ]
        ]);
    }

}
