<?php
require '../root/checklogin.php';
?>
<?php
$name = isset($_POST['name']) ? $_POST['name'] : false;
//fix sửa địa chỉ thành danh mục nhỏ//
$address = isset($_POST['address']) ? $_POST['name'] : false;
$phone = isset($_POST['phone']) ? $_POST['phone'] : false;
$email = isset($_POST['email']) ? $_POST['email'] : false;
$date = isset($_POST['datee']) ? $_POST['datee'] : false;
$note = isset($_POST['note']) ? $_POST['note'] : false;

$isSubmit = false; //submit
$error = ''; //loi
$msg = ''; //thong bao
$isError = false; //loi

require_once '../db.php';
require_once '../func.php';

if (
    $name !== false
    && $address !== false
    && $phone !== false
    && $email !== false
    && $date !== false
    && $note !== false

) {

    $isSubmit = true;

    // fix validate
    // if (!isName($name)) {
    //     $error .= 'Tên không hợp lệ<br>';
    //     $isError = true;
    // }
    // if (!isPhone($phone)) {
    //     $error .= 'Số điện thoại không hợp lệ<br>';
    //     $isError = true;
    // }
    // if (!isEmail($email)) {
    //     $error .= 'Email không hợp lệ<br>';
    //     $isError = true;
    // }
    // if (isName($address)) {
    //     $error .= 'Địa chỉ không hợp lệ<br>';
    //     $isError = true;
    // }
    if (!$isError) {
        $result = insert('manufacture', array(
            'name' => $name,
            'address' => $address,
            'phone' => $phone,
            'email' => $email,
            'datee' => $date,
            'note' => $note
        ));

        if ($result) {
            $msg = 'Chúc mừng bạn đã thêm thành công !<br>';
            // phpAlert('Thanh cong');
        } else {
            $error = 'Có lỗi xảy ra, vui lòng thử lại sau!<br>';
        }
    }
}

?>

<!DOCTYPE html>
<html>
<div class="row2">

    <?php include '../root/fromadd.php'; ?>
</div>

</div>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm</title>
    <link rel="stylesheet" href="../css/cssdb.css?v=2">
    <link rel="stylesheet" href="../css/cssmf.css?v=2">
    <script src="../js/mf.js"></script>
    <!-- icon -->
    <script src="https://kit.fontawesome.com/945e1fd97f.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
</head>

<body>

    <div class="grid-container">
        <div class="container-header">
            <?php include '../root/header.php' ?>
        </div>
        <div class="container-siderbar">
            <?php include '../root/sidebar.php' ?>

        </div>

        <div class="container-main">

            <div class="container">
                <div class="tag-name">
                <h1> <a href="../main/"> <span class="link-1"> Trang chủ-</span> </a> <a href="./"> <span class="link-1"> Manufacture-</span> </a>
                 <span style="color: rgb(250, 35, 189); font-weight:bold"></span>Thêm
          </h1>
          <br>
                </div>

            </div>
            <div class="container-content">
                <h1> <?php echo $msg ?> </h1>
                <h1> <?php echo $error ?></h1>
                <div class="form-content">
                    <form action="" method="POST">
                        <p>Nhập tên nhà sản xuất </p>
                        <input type="text" name="name" required placeholder="Nhập tên nhà sản xuất">
                        <p>Xuất xứ: </p>
                        <input type="text" name="address" required placeholder="Nhập xuất xứ ">
                        <p>Email liên hệ: </p>
                        <input type="email" name="email" required placeholder="Email liên hệ">
                        <p>Số điện thoại liên hệ: </p>
                        <input type="phone" name="phone" required placeholder="Số điện thoại liên hệ">
                        <p>Ngày thêm: </p>
                        <input type="date" name="datee" id="datePicker" required readonly>
                        <p>Ghi chú: </p>
                        <input type="text" name="note" required>
                        <div class="table-button">
                            <div class="btn-ok">
                                <button> OK </button>
                                <p>
                                    <php echo $msg ?>
                                </p>
                                <p>
                                    <php echo $error ?>
                                </p>
                            </div>

                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    document.getElementById('datePicker').valueAsDate = new Date();
</script>

</html>