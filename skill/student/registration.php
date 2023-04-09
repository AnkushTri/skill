
<?php
    // if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    $Student_full_name = $_POST['Student_full_name'];
    $Student_father_name = $_POST['Student_father_name'];
    $Student_adhaar_no= $_POST['Student_adhaar_no'];
    $Student_contact_no = $_POST['Student_contact_no'];
    $Student_religion_id = $_POST['Student_religion_id'];
    $Student_belong_to = $_POST['Student_belong_to'];
    $Student_email = $_POST['Student_email'];
    $Student_date_of_birth=$_POST['Student_date_of_birth'];
    $Student_highest_qualification=$_POST['Student_highest_qualification'];
    $Student_cast_id=$_POST['Student_cast_id'];
    $Student_address=$_POST['Student_address'];
    $Student_district_id=$_POST['Student_district_id'];
    $Student_skill_preference_1 = $_POST['Student_skill_preference_1'];
    $Student_skill_preference_2 = $_POST['Student_skill_preference_2'];
    $Student_skill_preference_3 = $_POST['Student_skill_preference_3'];
      // // Connecting to the Database
      $servername = "localhost";
      $username = "root";
      $password = "";
      $database = "skill";

      // // Create a connection
      $conn = mysqli_connect($servername, $username, $password, $database);
      // // Die if connection was not successful
      if (!$conn){
          die("Sorry we failed to connect: ". mysqli_connect_error());
      }
      else{ 
        // Submit these to a database
        // Sql query to be executed 
        $sql = "INSERT INTO `registration` (`Student_full_name`,`Student_father_name`, `Student_adhaar_no`,`Student_contact_no`,`Student_religion_id`,`Student_belong_to`,`Student_email`,`Student_date_of_birth`,`Student_highest_qualification`,`Student_cast_id`,`Student_address`,`Student_district_id`,`Student_skill_preference_1`,`Student_skill_preference_2`,`Student_skill_preference_3`) VALUES ('$Student_full_name', '$Student_father_name', '$Student_adhaar_no','$Student_contact_no','$Student_religion_id','$Student_belong_to','$Student_email','$Student_date_of_birth','$Student_highest_qualification','$Student_cast_id','$Student_address','$Student_district_id','$Student_skill_preference_1','$Student_skill_preference_2','$Student_skill_preference_3')";
        $result = mysqli_query($conn, $sql);
 
        if($result){
          echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
          <strong>Success!</strong> Your entry has been submitted successfully!
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>';
        }
        else{
            // echo "The record was not inserted successfully because of this error ---> ". mysqli_error($conn);
            echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
          <strong>Error!</strong> We are facing some technical issue and your entry ws not submitted successfully! We regret the inconvinience caused!
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>';
        }

      }

    // }
    ?>
