@include('index')
@include('header')

<div class="menu-conten" >


    <div class="product-container"><div class="product-image"><img src="{{asset('frontend/' . $movie->pic)}}" alt="Ảnh"></div>
        <div class="product-info">
            <h3>{{$movie->name_movie}}</h3>
            <p>Số Tập :<span > {{$movie->episodes}}</span></p>
            <p>Năm: <span>{{ $movie->created_at->format('Y') }}</span></p>
            <p>Trạng thái: <a style="text-decoration: none ;" href="{{ route('listByStatus', $movie->status->id) }}" ><span >{{$movie->status->name_satus}}</span></a></p>
            <p>Quốc gia: <a style="text-decoration: none ;" href="{{ route('listByCountry', $movie->country->id) }}" ><span >{{$movie->country->name_country}}</span></a></p>
            <p>Thể loại:
                @foreach($movie->categories as $category)
                    <a style="text-decoration: none;" href="{{route('list',$category->id)}}"><span >{{ $category->name_category }}</span> @if(!$loop->last), @endif</a>
                @endforeach
            </p>
            <div class="moveis_like">
                <a  id ="soonTrailer"  type="submit"  href="" class="btn btn-warning ">Trailer</a>
                <a  id ="soonXem" type="submit"  href="{{ route('movies.show', $movie->id) }}" class="btn btn-info ">Xem</a>
                @if(Auth::check())
                    <form method="POST" action="{{ url('/movies/' . $movie->id . '/' . (Auth::user()->movies->contains($movie->id) ? 'unlike' : 'like')) }}">
                        @csrf
                        @if (Auth::user()->movies->contains($movie->id))
                            <button type="submit" class="btn btn-danger">Bỏ thích</button>
                        @else
                            <button type="submit" class="btn btn-primary">Thích</button>
                        @endif
                    </form>
                @endif

            </div>
        </div>
    </div>
    <div class="comment-section">
        <h3>Bình luận</h3>

        @if(Auth::check())
            <form id="commentForm">
                @csrf
                <textarea name="content" id="commentContent" class="form-control" placeholder="Nhập bình luận..." required></textarea>
                <button type="submit" class="btn btn-success mt-2" onclick="addComment({{ $movie->id }}, event)">Gửi</button>
            </form>
        @else
            <p><a href="{{ route('login') }}">Đăng nhập</a> để bình luận.</p>
        @endif

        <div id="commentsList" data-movie-id="{{ $movie->id }}">
            @include('Client.Comments.comment', ['comments' => $comments])
        </div>

        <div class="mt-4 d-flex justify-content-center">
            {{ $comments->links() }}
        </div>
    </div>
</div>


