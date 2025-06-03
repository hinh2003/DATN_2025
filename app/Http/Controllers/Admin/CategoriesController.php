<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    public function index()
    {
        $category = Category::all();
        return view('admin.categories.index', compact('category'));

    }
    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        return response()->json(['success' => true]);
    }

    public function update(Request $request, $id)
    {
        $category = Category::findOrFail($id);
        $category->name_category = $request->name_category;
        $category->description = $request->description;
        $category->save();

        return response()->json(['success' => true]);
    }

}
