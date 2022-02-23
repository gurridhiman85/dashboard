<?php
include "connection.php";
if(isset($_POST['next'])){
    $stakeholder = $_POST['stakeholder'];
    $username = $_POST['username'];
    $email = $_POST['email'];

    $res = mysqli_query($conn, "INSERT INTO users (username,email,stakeholder) VALUES('$username','$email','$stakeholder')");
    $last_id = mysqli_insert_id($conn);

    $sql = "SELECT id, question,stakeholder,answer_type,multichoice_options FROM questions where stakeholder ='$stakeholder'";
    $result = $conn->query($sql);
}else{
    header('Location:index.php');
}
?>

<!DOCTYPE HTML>
<html>
<head>
   </head>
    <body>
        <form action="answers.php" class="ajax-Form" id="answer_form" method="POST" enctype="multipart/form-data">

            <?php
            if ($result->num_rows > 0) {
                $i = 1;
                while ($row = $result->fetch_assoc()) {
                    echo $i . ' - ' . $row["question"] . '<br><br>';
                    if ($row['answer_type'] == 'text') {
                        echo "<textarea id='myTextarea' name=" . $row['id'] . " rows='10' cols='50'> </textarea><br> <br> <br>";
                    } elseif ($row['answer_type'] == 'truefalse') {
                        echo "<input type='radio' name=" . $row['id'] . " value='True'> True";
                        echo " <input type='radio' name=" . $row['id'] . " value='False'> False";
                        echo " <input type='radio' name=" . $row['id'] . " value='Not Sure'> Not Sure<br> <br> <br>";
                    } elseif ($row['answer_type'] == 'multichoice') {
                        if(!empty($row['multichoice_options'])){
                            $pos = strpos($row['multichoice_options'], ",");
                            if ($pos != false) {
                                $multichoice_options = explode(',',$row['multichoice_options']);
                            }else{
                                $multichoice_options[] = $row['multichoice_options'];
                            }
                            foreach ($multichoice_options as $multichoice_option){
                                $name = $row['id'].'[]';
                                echo "<input type='checkbox' name=" . $name ." value='$multichoice_option'> ".ucfirst($multichoice_option);
                            }
                        }
                        echo "<br> <br> <br>";
                    }
                    $i++;
                }
                echo "<input type='hidden' value='$stakeholder' name='stakeholder'>";
                echo "<input type='hidden' value='$last_id' name='user_id'>";
                echo "<input type='hidden' value='$username' name='username'>";
                echo "<input type='hidden' value='$email' name='email'>";
                echo "<input type='submit' value='Submit' name='addanswer'>";

            } else {
                echo "No question found";
            }

            ?>
        </form>
        <script src="js/jquery-3.2.1.min.js?ver=<?=time();?>" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="js/ajax.js?ver=<?=time();?>" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        $(document).ready(function () {
            ACFn.ajax_completed = function (F,R) {
                if(R.success){

                    var blob = R.download_url;
                    var link = document.createElement('a');
                    link.href = blob;
                    link.download = R.filename;
                    // append the link to the document body
                    document.body.appendChild(link);
                    link.click();

                    setTimeout(function () {
                        document.location.href = 'index.php'
                    },2000)
                }
            }
        })
    </script>
    </body>
</html>




