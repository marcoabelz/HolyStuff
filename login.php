<?php
	if($user_id){
		header("location:".BASE_URL);
	}
?>

<div id="container-user-akses">

	<form action="<?php echo BASE_URL."proses_login.php"; ?>" method="POST">
		
		<div class="hello"> Hello, Stoofers!!!</div>
	
		<?php
		
			
		
			$notif = isset($_GET['notif']) ? $_GET['notif'] : false;

			if($notif == "true"){
				echo "<div class='notif'>Maaf, Email atau Password yang kamu masukan tidak terdaftar</div>";
			}
		?>
		
		<div class="element-form">
			<label>Email</label>
			<span><input type="text" name="email" /></span>
		</div>
		
		
		<div class="element-form">
			<div class="label-password">
				<label>Password</label>
				<i class="btn-hide-show fas fa-eye-slash" title="show password"></i>
			</div>
			<span><input type="password" name="password" class="input-password" /></span>
		</div>
		

		<div class="element-form">
			<div class="tombol-register">
			<span><input type="submit" value="Login" /></span>
		</div>
		<p> Belum memiliki Akun ? Regis 
				<a href="<?php echo BASE_URL."register.html"?>"><b>Disini</b></a>.
		</p>
	</form>
</div>