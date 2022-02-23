<?php
require_once "connection.php";
require 'vendor/autoload.php';
use Dompdf\Dompdf;

if(isset($_POST['addanswer'])){
    //echo '<pre>'; print_r($_POST); die;
    $stakeholder=trim($_POST['stakeholder']);
    $user_id=trim($_POST['user_id']);
    $username=trim($_POST['username']);
    $email=trim($_POST['email']);
    $sql = "SELECT id,question,answer_type FROM questions where stakeholder ='$stakeholder'";
    $result = $conn->query($sql);
    $pdfhtml = '<b>Name:</b> '.$username. '<br>';
    $pdfhtml .= '<b>Email:</b> '.$email. '<br>';;
    $pdfhtml .= '<b>Stake Holder:</b> '. $stakeholder. '<br><br><br>';;
    if ($result->num_rows > 0) {
        $i = 1;
        while ($row = $result->fetch_assoc()) {
            if(isset($_POST[$row['id']])){
                $pdfhtml .= $i . ' - ' . $row["question"] . '<br>';
                $question_id = $row['id'];
                if($row["answer_type"] == 'multichoice' && !empty($_POST[$row['id']])){
                    $answer = implode(',',$_POST[$row['id']]);
                }else
                    $answer = $_POST[$row['id']];

                $pdfhtml .= 'Answer: '.$answer. '<br><br>';
                $res = mysqli_query($conn, "INSERT INTO answers (user_id,question_id,answer) VALUES($user_id,$question_id,'$answer')");
            }
            $i++;
        }
    }
   /* $dompdf = new Dompdf();
    $dompdf->loadHtml($pdfhtml);
    $dompdf->setPaper('A4', 'landscape');
    $dompdf->render();
    $dompdf->save('document.pdf');*/

    $dompdf = new DOMPDF();
    $dompdf->loadHtml($pdfhtml);
    $dompdf->render();
    $output = $dompdf->output();
    $filename = 'document.pdf';
    file_put_contents($filename, $output);
    $jsonreponse = [
        'completefn' => 'ajax_completed',
        'download_url' => $baseurl.$filename,
        'filename' => $filename,
        'success' => true,
    ];
    echo json_encode($jsonreponse);
}else{
    header('Location:index.php');
}


