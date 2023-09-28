<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buoi_4b.aspx.cs" Inherits="Buoi_4.Buoi_4b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KT xem có phải là sv Huflit</title>
    <script language="JavaScript">
        function Response() {
            var radiocheck = document.getElementById("checkbox"); //Name:chỉ cần khai báo name or id ko cần cả 2 Id: nút chọn
            if (radiocheck[0].checked == true)
                document.getElementById("Huflit").innerHTML = "Tôi là sinh viên khoa CNTT, trường Huflit ";
            if (radiocheck[1].checked == true)
                document.getElementById("Huflit").innerHTML = "Tôi không là sinh viên khoa CNTT, trường Huflit ";

            var checkboxcheck = document.getElementByName("checkbox");
            var checkboxResult = "";
            for (var i = 0; i < checkboxcheck.leghtl, i++)
                if (checkboxcheck[i].checked == true)
                    checkboxResult += '[' + checkboxcheck[i].value + ']';
            alert("Trạng thái của bạn là: " + checkboxResult);
        }
    </script>
</head>
<body>
    <form id="radioform" runat="server" method="get">
        <div>
            1. Bạn có phải là sinh viên khoa CNTT, trường Huflit không?
            <input type="raido" id="chon" name="radio" value="" />Phải <br />
            <input type="raido" id="chon" name="radio" value="" />Không Phải<br />
            <input type="submit" value="Câu trả lời" onclick="Response();" /><br />
            <span id="Huflit"></span>
            2. Bạn có người yêu chưa?
            <input type="checkbox" name="checkbox" value="FA bền vững" />FA bền vững <br />
             <input type="checkbox" name="checkbox" value="Vừa bị bồ đá" /> Vừa bị bồ đá<br />
            <input type="checkbox" name="checkbox" value="Chuẩn bị lấy vợ" />Chuẩn bị lấy vợ <br />
             <input type="submit" value="Câu trả lời" onclick="Response();" /><br />

        </div>
    </form>
</body>
</html>
