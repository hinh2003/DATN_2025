<!DOCTYPE html>
<html lang="en">
@include('admin.index')

<body>
<div class="menu-conten" >

    <script src="{{asset('frontend/js.js.js')}}"></script>
    <div class="login-page">
        <div class="form">
            <h3>Đăng Nhập</h3>
            <form id="formdangnhap" action="/admin/login/store" method="post">
                <input type="text" id="tendangnhap" name="tendangnhap" placeholder="Tên đăng nhập" />
                <input type="password" id="paswworddangnhap" name="paswworddangnhap" placeholder="password" />
                <button type="submit"name="dangnhap" id="dangnhap">Sign In</button>
                <p id="resultketqua"></p>
                @include('Error.login')
                @csrf
            </form>
        </div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            document.querySelector("#dangnhap").addEventListener('click', function (event) {
                let check = checkvalidateLogin();
                if (!check) {
                    event.preventDefault();
                }
            })

        });
        function checkvalidateLogin() {
            let username = document.querySelector('#tendangnhap').value;
            let password = document.querySelector('#paswworddangnhap').value;
            if (username === "") {
                document.querySelector('#resultketqua').innerHTML = "Tên đăng nhập không để trống";
                document.querySelector('#tendangnhap').focus();
                return false;
            }
            if (password === "") {
                document.querySelector('#resultketqua').innerHTML = "Password không để trống";
                document.querySelector('#paswworddangnhap').focus();
                return false;
            }
            return true;
        }

    </script>
</div>
</body>

</html>
