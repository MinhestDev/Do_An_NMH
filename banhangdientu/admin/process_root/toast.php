<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="../css/toast.css">
</head>

<body>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
    integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
    crossorigin="anonymous" />

  <div id="toast"></div>

  <div>
    <div onclick="showSuccessToast();" class="btn btn--success">Show success toast</div>
    <div onclick="showErrorToast();" class="btn btn--danger">Show error toast</div>
  </div>
<script src="../js/toast.js"></script>

  <script>
    function showSuccessToast() {
      toast({
        title: "Thành công!",
        message: "Bạn đã đăng ký thành công tài khoản tại F8.",
        type: "success",
        duration: 5000
      });
    }

    function showErrorToast() {
      toast({
        title: "Thất bại!",
        message: "Có lỗi xảy ra, vui lòng liên hệ quản trị viên.",
        type: "error",
        duration: 5000
      });
    }
  </script>
</body>

</html>


<link rel="stylesheet" href="../css/toast.css?v=2">
<script src="../js/toast.js"></script>
<div id="toast"> </div>