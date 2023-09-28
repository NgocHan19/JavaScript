<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="Buoi_4.GioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="JavaScript">
    function GioHang() {
        var tp = parseFloat(document.getElementById("tongphu").value);
        var gg = parseFloat(document.getElementById("giamgia").value);
        window.document.getElementById("tongcong").value = tp - gg;
    }
    </script>
</head>

<body>
    <form id="form1" runat="server" method="post">
        <h1>Giỏ hàng</h1>
    <fieldset>
    <div id="div-left">
        <from>
            <table width:150px cellpadding="10">
                <tr>
                    <th>
                        <lable for="Sanpham">Ảnh</lable>
                    </th>
                    <th>
                        <lable for="Sanpham">Tên sản phẩm</lable>
                    </th>
                    <th>
                        <lable for="Sanpham">Giá tiền</lable>
                    </th>
                    <th>
                        <label for="Sanpham">Số lượng</label>
                    </th>

                </tr>
                <tr>
                    <td>
                        <img src="https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2023/09/Apple-iPhone-15-Pro-lineup-hero-230912-scaled.jpg?fit=1200%2C675&quality=50&strip=all&ssl=1" width="170px" />
                    </td>
                    <td>Iphone 15 </td>
                    <td>50.000.000VNĐ</td>
                    <td>
                        <input type="text" height="5px" />
                    </td>

                </tr>
               

            </table>
        </from>
    </div>
    <div id="div-right">
        <td>
            <button>Mã giảm giá</button>
            <input type="number" id="giamgia" name="giamgia" />
        </td>
        <br />
        <tr>
            <td>
                <lable for="tongphu">Tổng phụ</lable>
                <input type="number" id="tongphu" name="tongphu" />
            </td>
        </tr>
        <br />
        <tr>
            <td>
                <lable for="tongcong">Tổng cộng</lable>
            </td>
        </tr>
        <input type="number" id="tongcong" name="tongcong" 
                onkeyup="tongcong.value = parseFloat(tongphu.value)- parseFloat(giamgia.value)"; /><br />
    </div>
</fieldset>
    </form>
</body>
</html>
