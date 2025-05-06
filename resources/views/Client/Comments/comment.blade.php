<div class="comment-section">
    <h3>Bình luận</h3>

    @if(Auth::check())
        <form id="commentForm">
            @csrf
            <textarea name="content" id="commentContent" class="form-control" placeholder="Nhập bình luận..." required></textarea>
            <button type="submit" class="btn btn-success mt-2  ">Gửi</button>
        </form>
    @else
        <p><a href="{{ route('login') }}">Đăng nhập</a> để bình luận.</p>
    @endif
    <div id="commentsList" data-movie-id="{{ $movie->id }}">
        @if($comments->count() > 0)
            @foreach($comments as $comment)
                <div class="comment-card">
                    <div class="comment-header">
                        <div class="avatar">
                            {{ strtoupper(substr($comment->user->name, 0, 2)) }}
                        </div>
                        <div class="comment-info">
                            <span class="username">{{ $comment->user->name }}</span>
                            <span class="timestamp">{{ $comment->created_at->diffForHumans() }}</span>
                        </div>
                    </div>
                    <div class="comment-content">
                        {{ $comment->content }}
                    </div>
                    @if(Auth::check() && Auth::id() == $comment->user_id)
                        <div class="comment-actions">
                            <button class="btn btn-primary btn-sm edit-comment" data-comment-id="{{ $comment->id }}">Chỉnh sửa</button>
                            <button class="btn btn-danger btn-sm delete-comment" data-comment-id="{{ $comment->id }}" >Xóa</button>
                        </div>
                    @endif
                </div>
            @endforeach
        @else
            <p>Chưa có bình luận nào.</p>
        @endif
    </div>

    <div class="mt-4 d-flex justify-content-center">
        {{ $comments->links() }}
    </div>
</div>
