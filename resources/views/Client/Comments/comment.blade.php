 <div id="commentsList" data-movie-id="{{ $movie->id }}">
     <!-- Bình luận sẽ được tải vào đây thông qua AJAX -->
 </div>
 <script>
     $(document).ready(function() {
         const movieId = $('#commentsList').data('movie-id');
         loadComments(movieId);  // Gọi hàm để tải danh sách bình luận khi trang được tải
     });
 </script>
