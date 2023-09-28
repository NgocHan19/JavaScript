<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tinh_Gia.aspx.cs" Inherits="Buoi_4.Tinh_Gia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tính tiền</title>
    <script language="JavaScript">
        function Tinhtien() {
            var sl = parseFloat(document.getElementById("soluong").value);  //soluong + donggia: 1 form (cục bộ)
            var dg = parseFloat(document.getElementById("donggia").value);
            window.document.getElementById("thanhtien").value = sl + dg;
        }
    </script>
    
</head>
<body>
    <form id="form1" runat="server" method="post"> //mặc định là get
        <h1>Nhập số lượng và đơn giá</h1>
        <div>
            <label>Đơn giá:</label>
            <input type="number" id="donggia" name="donggia" /><br />
            <label>Số lượng:</label>
           <%-- Cách 1: <input type="number" id="soluong" name="soluong" onkeyup ="tinhtien();" /><br /> //onkeyup: nhả phím chuột hiện lên--%>
           <%--// Cách 2 ko cần function:--%> <input type="number" id="soluong" name="soluong" 
                onkeyup="thanhtien.value = parseFloat(soluong.value)* parseFloat(donggia.value)"; /><br />
            <label>Thành tiền:</label>
            <input type="number" id="thanhtien" name="thanhtien" /><br />


        </div>
    </form>
</body>
</html>
