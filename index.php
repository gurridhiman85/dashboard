<?php
require_once "connection.php";

$sql = "SELECT distinct stakeholder FROM questions";
$result = $conn->query($sql);
?>
<!DOCTYPE HTML>
<html>
<head>
  <title>Register Form</title>
  <style>

    /* Styling the Body element i.e. Color,
    Font, Alignment */
    body {
        background-color: #f9fdfb;
        font-family: Verdana;
        text-align: center;
    }

    /* Styling the Form (Color, Padding, Shadow) */
    form {
        background-color: #fff;
        max-width: 850px;
        margin: 50px auto;
        padding: 30px 20px;
        box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
    }

    /* Styling form-control Class */
    .form-control {
        text-align: left;
        margin-bottom: 25px;
    }

    /* Styling form-control Label */
    .form-control label {
        display: block;
        margin-bottom: 10px;
    }

    /* Styling form-control input,
    select, textarea */
    .form-control input,
    .form-control select,
    .form-control textarea {
        border: 1px solid #777;
        border-radius: 2px;
        font-family: inherit;
        padding: 10px;
        display: block;
        width: 95%;
    }

    /* Styling form-control Radio
    button and Checkbox */
    .form-control input[type="radio"],
    .form-control input[type="checkbox"] {
        display: inline-block;
        width: auto;
    }

    /* Styling Button */
    button {
        background-color: #05c46b;
        border: 1px solid #777;
        border-radius: 2px;
        font-family: inherit;
        font-size: 21px;
        display: block;
        width: 100%;
        margin-top: 50px;
        margin-bottom: 20px;
    }
</style>

</head>
<body>
 <form action="questions.php" method="POST">
  <table>
   <tr>
    <td>Name :</td>
    <td><input type="text" name="username" value = "" required></td>
   </tr>
   <tr>
    <td>Email :</td>
    <td><input type="email" name="email" value = "" required></td>
   </tr>
   <tr>
       <td>Which option best describes you?</td>
        <td>
            <select name="stakeholder" value = "" required>
                <option  value="">----Select an option----</option>
                <?php
                    if ($result->num_rows > 0) {

                        while($row = $result->fetch_assoc()){
                            ?>
                            <option value="<?=$row['stakeholder']; ?>"><?=$row['stakeholder']; ?></option>
                            <?php
                        }
                    }
                ?>
            </select></td></tr>
   <tr>
    <td><input type="submit" value="Next" name="next"></td>
   </tr>
  </table>
 </form>
</body>
</html>
