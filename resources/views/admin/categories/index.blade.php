@extends('admin.index')
@include('admin.header')

<div class="container">
    <a href="{{ route('movies.category') }}" class="btn btn-primary my-3">Thêm thể loại</a>

    <table class="table table-bordered">
        <tr>
            <th>Tên thể loại</th>
            <th>Miêu tả</th>
            <th>Thao tác</th>
        </tr>
        @foreach ($category as $categories)
            <tr id="category-row-{{ $categories->id }}">
                <td id="name-{{ $categories->id }}">{{ $categories->name_category }}</td>
                <td id="desc-{{ $categories->id }}">{{ $categories->description }}</td>
                <td>
                    <a class="btn btn-warning" onclick="editCategory({{ $categories->id }})" id="edit-btn-{{ $categories->id }}">Sửa</a>
                    <a class="btn btn-success d-none" onclick="saveCategory({{ $categories->id }})" id="save-btn-{{ $categories->id }}">Lưu</a>
                    <a href="javascript:void(0);" class="btn btn-danger" onclick="deleteCategory({{ $categories->id }})">Xóa</a>
                </td>
            </tr>
        @endforeach
    </table>


</div>
