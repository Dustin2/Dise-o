<?php
	/**
	* 
	*/
	class sql 
	{
		
		function encu()
		{
			$conectar=mysqli_connect('localhost','root','','voto') or die("problemas en la conexion");
			$sql =mysqli_query($conectar, "SELECT * FROM `pruducto`") or die("problemas en la consulta");
			$vec = array();
			while($fila = $sql->fetch_row()){ 
				$vec[] = $fila; 
			}
			
			return $vec;
		}

		function ran()
		{
			$conectar=mysqli_connect('localhost','root','','voto') or die("problemas en la conexion");
			$sql =mysqli_query($conectar, "SELECT `nombre-Po`, `adjunto` FROM `pruducto` ORDER BY`votos` DESC limit 3") or die("problemas en la consulta");
			$vec = array();
			while($fila = $sql->fetch_row()){ 
				$vec[] = $fila; 
			}
			
			return $vec;
		}

		public function voto($id)
		{
			$conectar=mysqli_connect('localhost','root','','voto') or die("problemas en la conexion");
			$sql =mysqli_query($conectar, "UPDATE `pruducto` SET `votos`=votos+1 WHERE `id_Obra`='$id'") or die("problemas en la consulta");			
			return $sql;	
		}


		function login($user,$pass)
		{
			$conectar=mysqli_connect('localhost','root','','voto') or die("problemas en la conexion");
			$sql =mysqli_query($conectar, "SELECT `id_User`, `Nombre`, `voto`FROM `usuarios` WHERE Nombre='$user' AND Clave=$pass") or die("problemas en la consulta");
			$vec = array();
			while($fila = $sql->fetch_row()){ 
				$vec[] = $fila; 
			}
			
			return $vec;
		}
	}
?>