<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
        <link rel="stylesheet" href="login.css">
    <title>Form</title>
    <style>
        form {border-style: solid; border-color: white}
        label {color: white;}
    </style>
</head>
<body>
    <form action="/action_page.php">
        <label for="ID">Employee ID:</label><br>
        <input type="text" id="ID" name="ID" value=" "><br><br>
        <label for="Food">Food:</label><br>
        <input type="text" id="Food" name="Food" value=" "><br><br>
        <label for="Travel">Travel:</label><br>
        <input type="text" id="Travel" name="Travel" value=" "><br><br>
        <label for="Other">Other:</label><br>
        <input type="text" id="Other" name="Other" value=" "><br><br>
        <input type="submit" value="Submit" onclick="productUpdate();"><br><br>
        <input type="button" value="History" onclick="window.location.href='Data.html'">
      </form>

      <script>
      function productUpdate() {
        if ($("#productname").val() != null && $("#productname").val() != '') {
            // Add product to Table
            productAddToTable();
            form.clear();
            $("#productname").focus();
        }
    }
    function productAddToTable() {
        // First check if a <tbody> tag exists, add one if not
        if ($("#Table tbody").length == 0) {
            $("#Table").append("<tbody></tbody>");
        }
    
        // Append product to the table
        $("#Table tbody").append("<tr>" +
            "<td>" + $("#ID").val() + "</td>" +
            "<td>" + $("#Food").val() + "</td>" +
            "<td>" + $("#Travel").val() + "</td>" +
            "<td>" + $("#Other").val() + "</td>" +
            "</tr>");
    }
    </script>

</body> 
</html>