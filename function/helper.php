<?php
	
	define("BASE_URL", "http://localhost/holystuff/");
	
	$arrayStatusPesanan[0] = "Menunggu Pembayaran";
	$arrayStatusPesanan[1] = "Pembayaran Sedang Di Validasi";
	$arrayStatusPesanan[2] = "Lunas";
	$arrayStatusPesanan[3] = "Pembayaran Di Tolak";

	function rupiah($nilai = 0){
		$string = "Rp,". number_format($nilai);
		return $string;
	}
	
	function kategori($kategori_id = false){
		global $koneksi;
		
		$string = "<div id='menu-kategori'>";
		
			$string .= "<ul>";

					$query = mysqli_query($koneksi, "SELECT * FROM kategori WHERE status='on'");
					
					while($row=mysqli_fetch_assoc($query)){
						$kategori = strtolower($row['kategori']);
						if($kategori_id == $row['kategori_id']){
							$string.= "<li><a href='".BASE_URL."$row[kategori_id]/$kategori.html' class='active'>$row[kategori]</a></li>";
						}else{
							$string.= "<li><a href='".BASE_URL."$row[kategori_id]/$kategori.html'>$row[kategori]</a></li>";
						}
					} 

			$string .= "</ul>";
			
		$string .= "</div>";
		
		return $string;
	
	}
	
	function admin_only($module, $level){
		if($level != "superadmin"){
			$admin_pages = array("kategori", "barang", "kota", "user", "banner");
			if(in_array($module, $admin_pages)){
				header("location: ".BASE_URL);
			}
		}
	}
		
	function pagination($query, $data_per_halaman, $pagination, $url){
		global $koneksi;
		$queryHitung = mysqli_query($koneksi, $query);
		$total_data = mysqli_num_rows($queryHitung);
		$total_halaman = ceil($total_data / $data_per_halaman);
		
		echo "<ul class='pagination'>";
		
		if($pagination > 1){
			$prev = $pagination - 1;
			echo "<li><a href='".BASE_URL."$url&pagination=$prev'><< Prev</a></li>";
		}
		
		for($i = 1; $i<=$total_halaman;$i++){
			if($pagination == $i){
				echo "<li><a class='active' href='".BASE_URL."$url&pagination=$i'>$i</a></li>";
			}else{
				echo "<li><a href='".BASE_URL."$url&pagination=$i'>$i</a></li>";
			}
		}
		
		if($pagination < $total_halaman){
			$next = $pagination + 1;
			echo "<li><a href='".BASE_URL."$url&pagination=$next'>Next >></a></li>";
		}
		echo "</ul>";
	}