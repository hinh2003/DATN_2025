function updateChapters() {
    let movieSelect = document.getElementById("movie_id");
    let chapterSelect = document.getElementById("chapter");
    let selectedMovie = movieSelect.options[movieSelect.selectedIndex];

    chapterSelect.innerHTML = '<option value="">Chọn tập</option>';

    if (selectedMovie.value) {
        let maxChapters = parseInt(selectedMovie.getAttribute("data-episodes"));
        let existingChapters = JSON.parse(selectedMovie.getAttribute("data-existing-chapters"));

        for (let i = 1; i <= maxChapters; i++) {
            if (!existingChapters.includes(i)) {
                let option = document.createElement("option");
                option.value = i;
                option.textContent = "Tập " + i;
                chapterSelect.appendChild(option);
            }
        }
    }
}

document.addEventListener("DOMContentLoaded", function () {
    let nameMovieInput = document.querySelector("#name_movie");
    let slugMovieInput = document.querySelector("#slug_movie");

    if (nameMovieInput && slugMovieInput) {
        nameMovieInput.addEventListener("input", function () {
            slugMovieInput.value = convertToSlug(this.value);
        });
    }
});

function convertToSlug(text) {
    return text.toLowerCase()
        .trim()
        .normalize("NFD").replace(/[\u0300-\u036f]/g, "")
        .replace(/đ/g, "d").replace(/Đ/g, "D")
        .replace(/\s+/g, '-')
        .replace(/[^a-z0-9-]/g, '')
        .replace(/-+/g, '-');
}


function deleteCategory(id) {
    if (!confirm('Bạn có chắc chắn muốn xóa thể loại này?')) return;

    $.ajax({
        url: '/admin/action/category/' + id,
        method: 'DELETE',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (res) {
            $('#category-row-' + id).remove();
            alert('Đã xóa thành công');
        },
        error: function (xhr) {
            alert('Đã xảy ra lỗi khi xóa.');
        }
    });
}
function editCategory(id) {
    let nameCell = $('#name-' + id);
    let descCell = $('#desc-' + id);

    let nameText = nameCell.text().trim();
    let descText = descCell.text().trim();

    // Thay nội dung ô thành input
    nameCell.html('<input type="text" id="name-input-' + id + '" class="form-control" value="' + nameText + '">');
    descCell.html('<input type="text" id="desc-input-' + id + '" class="form-control" value="' + descText + '">');

    // Hiện nút lưu, ẩn nút sửa
    $('#edit-btn-' + id).addClass('d-none');
    $('#save-btn-' + id).removeClass('d-none');
}

function saveCategory(id) {
    let newName = $('#name-input-' + id).val();
    let newDesc = $('#desc-input-' + id).val();

    $.ajax({
        url: '/admin/action/category/' + id,
        method: 'PUT',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {
            name_category: newName,
            description: newDesc
        },
        success: function (res) {
            $('#name-' + id).text(newName);
            $('#desc-' + id).text(newDesc);
            $('#save-btn-' + id).addClass('d-none');
            $('#edit-btn-' + id).removeClass('d-none');
            alert('Cập nhật thành công');
        },
        error: function () {
            alert('Đã xảy ra lỗi khi cập nhật');
        }
    });
}
