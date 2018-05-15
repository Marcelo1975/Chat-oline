<?php
class Messages extends Model{

	public function add($uid, $id_group, $msg){
		$sql = "INSERT INTO messages (id_user, id_group, date_msg, msg) VALUES (:uid, :id_group, NOW(), :msg)";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(':uid', $uid);
		$sql->bindValue(':id_group', $id_group);
		$sql->bindValue(':msg', $msg);
		$sql->execute();
	}

	public function get($last_time, $groups){
		$array = array();

		$sql = "SELECT * FROM messages WHERE date_msg > :date_msg AND id_group IN (".(implode(',', $groups)).")";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(':date_msg', $last_time);
		$sql->execute();

		if($sql->rowCount() > 0){
			$array = $sql->fetchAll(PDO::FETCH_ASSOC);
		}
		return $array;
	}
}