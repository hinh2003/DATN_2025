document.addEventListener('DOMContentLoaded', function () {
    document.querySelector('#rep').addEventListener('click', function (event) {
        let isValid = checkvalidate();
        if (!isValid) {
            event.preventDefault();
        }
    });

});
document.querySelector("#formdangky").addEventListener("submit", function (event) {
    event.preventDefault();
    const selectedAccount = document.querySelector("#ten").value;
    fetch(`/fages/moudles/xuly.php?ten=${selectedAccount}&email=${document.querySelector("#email").value}&password=${document.querySelector("#password").value}`)
        .then(response => response.text())
        .then(data => {
            document.querySelector("#result").innerHTML = data;
            document.querySelector("#ten").value = "";
            document.querySelector("#email").value = "";
            document.querySelector("#password").value = "";
            document.querySelector("#r-password").value = "";
        })
        .catch(error => {
            console.error('Error:', error);
        });
});



function checkvalidate() {
    let isCheck = true;
    let username = document.querySelector('#ten').value;
    let password = document.querySelector('#password').value;
    let rpassword = document.querySelector('#r-password').value;

    if (username === "") {
        document.querySelector('#result').innerHTML = "Tên đăng nhập không để trống";
        document.querySelector('#ten').focus();
        return false;
    } else if (username.length <= 6) {
        document.querySelector('#result').innerHTML = "Tên đăng nhập phải hơn 6 ký tự";
        document.querySelector('#ten').focus();
        return false;
    }else if(username.includes(' ')){
        document.querySelector('#result').innerHTML = "Tên đăng nhập không được chứa khoảng trắng";
        document.querySelector('#ten').focus();
        return false;
    }else if (document.querySelector('#email').value === "") {
        document.querySelector('#result').innerHTML = "Nhập email";
        document.querySelector('#email').focus();
        return false;
    } else {
        var email = document.querySelector("#email").value;
        var regExp = /\S+@\S+\.\S+/;
        if (!regExp.test(email)) {
            document.querySelector('#result').innerHTML = "Email không hợp lệ!";
            document.querySelector('#email').focus();
            return false;
        }
    }
    if (password === "") {
        // Kiểm tra mật khẩu không để trống
        document.querySelector('#result').innerHTML = "Password không để trống";
        document.querySelector('#password').focus();
        return false;
    } else if (password.length < 6) {
        // Kiểm tra độ dài mật khẩu (hơn 6 ký tự)
        document.querySelector('#result').innerHTML = "Mật khẩu phải có ít nhất 6 ký tự";
        document.querySelector('#password').focus();
        return false;
    } else if (!/[A-Z]/.test(password)) {
        // Kiểm tra xem mật khẩu có chứa ít nhất một chữ in hoa hay không
        document.querySelector('#result').innerHTML = "Mật khẩu phải chứa ít nhất một chữ in hoa";
        document.querySelector('#password').focus();
        return false;
    } else if (rpassword === "") {
        // Kiểm tra xác nhận mật khẩu không để trống
        document.querySelector('#result').innerHTML = "Nhập lại mật khẩu";
        document.querySelector('#r-password').focus();
        return false;
    } else if (password !== rpassword) {
        // Kiểm tra xem mật khẩu và xác nhận mật khẩu có trùng khớp không
        document.querySelector('#result').innerHTML = "Mật khẩu không trùng nhau";
        return false;
    }
    return isCheck;

}
function switchServer(serverType) {
    let videoPlayer = document.getElementById('videoPlayer');
    let linkChap = videoPlayer.dataset.linkChap;
    let linkAws = videoPlayer.dataset.linkAws;
    videoPlayer.src = serverType === 'link_chap' ? linkChap : linkAws;
}
function hideComment(id) {
    Swal.fire({
        title: "Bạn có chắc chắn?",
        text: "Bình luận sẽ bị xóa!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonText: "Vâng, xóa đi!",
        cancelButtonText: "Hủy"
    }).then((result) => {
        const movieId = document.getElementById('commentsList').dataset.movieId;

        if (result.isConfirmed) {
            $.ajax({
                url: `/comments/${id}/hide`,
                type: 'PATCH',
                headers: {
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                },
                success: function(response) {
                  loadComments(movieId);

                    Swal.fire({
                        icon: 'success',
                        title: 'Thành công!',
                        text: response.message,
                        timer: 1500,
                        showConfirmButton: false
                    });
                },
                error: function(xhr) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Lỗi!',
                        text: xhr.responseJSON?.message || "Có lỗi xảy ra."
                    });
                }
            });
        }
    });
}

function addComment(id, event) {
    event.preventDefault();

    const content = document.getElementById('commentContent').value;
    const movieId = document.getElementById('commentsList').dataset.movieId; // Lấy ID phim từ data attribute

    if (!content.trim()) {
        Swal.fire({
            icon: 'warning',
            title: 'Chú ý!',
            text: 'Vui lòng nhập nội dung bình luận.'
        });
        return;
    }

    $.ajax({
        url: `/movies/${movieId}/comments/add`,
        type: 'POST',
        data: { content: content },
        headers: {
            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
        },
        success: function(response) {
            Swal.fire({
                icon: 'success',
                title: 'Thành công!',
                text: response.message,
                timer: 1500,
                showConfirmButton: false
            });

            document.getElementById('commentContent').value = '';
            loadComments(movieId);

        },
        error: function(xhr) {
            Swal.fire({
                icon: 'error',
                title: 'Lỗi!',
                text: xhr.responseJSON?.message || "Có lỗi xảy ra."
            });
        }
    });
}
function loadComments(movieId) {
    $.ajax({
        url: `/movies/${movieId}/comments`,
        type: 'GET',
        success: function(response) {
            if (response.success) {
                $('#commentsList').html('');

                response.comments.forEach(comment => {
                    let avatarHtml = '';

                    if (comment.avatar) {
                        avatarHtml = `
                            <img src="${comment.avatar}" alt="${comment.user}" class="avatar-img">
                        `;
                    } else {
                        avatarHtml = `
                            ${comment.user.slice(0, 2).toUpperCase()}
                        `;
                    }

                    let html = `
                        <div class="comment-card" id="comment-${comment.id}">
                            <div class="comment-header">
                                <div class="avatar">
                                    ${avatarHtml}
                                </div>
                                <div class="comment-info">
                                    <span class="username">${comment.user}</span>
                                    <span class="timestamp">${comment.created_at}</span>
                                </div>
                            </div>
                            <div class="comment-content" id="content-${comment.id}">
                                ${comment.content}
                            </div>`;

                    if (response.current_user_id === comment.user_id) {
                        html += `
                            <div class="comment-actions" id="actions-${comment.id}">
                                <button class="btn btn-primary btn-sm edit-comment" onclick="editComment(${comment.id}, '${comment.content}')">Chỉnh sửa</button>
                                <button class="btn btn-danger btn-sm delete-comment" data-comment-id="${comment.id}" onclick="hideComment(${comment.id})">Xóa</button>
                            </div>`;
                    }

                    html += `</div>`;
                    $('#commentsList').append(html);
                });
            }
        },
        error: function() {
            Swal.fire({
                icon: 'error',
                title: 'Lỗi!',
                text: "Không thể tải bình luận."
            });
        }
    });
}


function editComment(commentId, oldContent) {
    // Hiển thị textarea thay vì nội dung
    const contentDiv = document.getElementById(`content-${commentId}`);
    contentDiv.innerHTML = `
        <textarea id="edit-content-${commentId}" class="form-control">${oldContent}</textarea>
    `;

    // Đổi nút "Chỉnh sửa" thành "Apply"
    const actionsDiv = document.getElementById(`actions-${commentId}`);
    actionsDiv.innerHTML = `
        <button class="btn btn-success btn-sm" onclick="applyEdit(${commentId})">Apply</button>
        <button class="btn btn-secondary btn-sm" onclick="cancelEdit(${commentId}, \`${oldContent.replace(/`/g, '\\`')}\`)">Cancel</button>
    `;
}
function applyEdit(commentId) {
    const newContent = document.getElementById(`edit-content-${commentId}`).value;

    $.ajax({
        url: `/comments/${commentId}/update`, // Route update
        type: 'PUT',
        data: {
            content: newContent,
            _token: $('meta[name="csrf-token"]').attr('content') // nếu dùng Laravel CSRF
        },
        success: function(response) {
            if (response.success) {
                // Cập nhật lại nội dung hiển thị
                document.getElementById(`content-${commentId}`).innerText = response.updated.content;

                // Trả lại nút ban đầu
                document.getElementById(`actions-${commentId}`).innerHTML = `
                    <button class="btn btn-primary btn-sm edit-comment" onclick="editComment(${commentId}, '${response.updated.content}')">Chỉnh sửa</button>
                    <button class="btn btn-danger btn-sm delete-comment" onclick="hideComment(${commentId})">Xóa</button>
                `;
            }
        },
        error: function() {
            alert('Có lỗi xảy ra khi cập nhật bình luận.');
        }
    });
}
function cancelEdit(commentId, oldContent) {
    document.getElementById(`content-${commentId}`).innerText = oldContent;
    document.getElementById(`actions-${commentId}`).innerHTML = `
        <button class="btn btn-primary btn-sm edit-comment" onclick="editComment(${commentId}, '${oldContent}')">Chỉnh sửa</button>
        <button class="btn btn-danger btn-sm delete-comment" onclick="hideComment(${commentId})">Xóa</button>
    `;
}

function uploadAvtar()
{
    $('#avatarInput').on('change', function () {
        let formData = new FormData();
        formData.append('avatar', this.files[0]);

        $.ajax({
            url: '/user/upload-avatar',
            method: 'POST',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: formData,
            processData: false,
            contentType: false,
            success: function (response) {
                if (response.success) {
                    $('#avatarPreview').attr('src', response.avatar);
                    alert("Cập nhật ảnh đại diện thành công!");
                }
            },
            error: function (xhr) {
                alert("Lỗi khi upload ảnh!");
            }
        });
    });
}
