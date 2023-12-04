<?php
      function insert_taikhoan($email, $user, $pass, $tel){
        $sql="insert into taikhoan(email,user,pass,tel) values('$email', '$user', '$pass', '$tel')";
        pdo_execute($sql);
    }
    function checkuser($user, $pass){
      $sql="select * from taikhoan where user='".$user."' AND pass='".$pass."'"; 
      $sp = pdo_query_one($sql);
      return $sp;
  }

  function checkemail($email){
      $sql="select * from taikhoan where email='".$email."'"; 
      $sp = pdo_query_one($sql);
      return $sp;
  }

  

function update_taikhoan($id, $user, $pass, $email, $tel){
    $sql="update taikhoan set user='".$user."', pass='".$pass."', email='".$email."', tel='".$tel."'  where id=".$id;
    pdo_execute($sql);
}
function update_role_taikhoan($id,$role){
    $sql="update taikhoan set role='".$role."' where id=".$id;
    pdo_execute($sql);
}
function loadall_taikhoan(){
    $sql="select * from taikhoan order by role desc";
    $listtaikhoan =pdo_query($sql);
    return  $listtaikhoan;
}
function get_role($n){
    switch ($n){
        case '0':
            $role ="User";
            break;
        case '1':
        $role ="Admin";
        break;
        

    }
    return $role;
}

function loadone_taikhoan($id){
    $sql = "select * from taikhoan where id=".$id;
    $result = pdo_query_one($sql);
    return $result;
}

function delete_taikhoan($id){
    $sql="delete from taikhoan where id=".$_GET['idtk'];
    pdo_execute($sql);
}

function dangxuat() {
    if (isset($_SESSION['user'])) {
        unset($_SESSION['user']);
    }
}
    



?>