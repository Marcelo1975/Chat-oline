<div class="container">
	<div class="progress">
		<div class="progressbar" style="width:0%"></div>
	</div>
	<div class="userinfo">
		Bem Vindo(a): <strong><?php echo $name; ?></strong> - <a href="<?php echo BASE_URL; ?>login/logout">sair</a>
	</div>
	<nav>
		<ul>
			
		</ul>
		<button class="add_tab">+</button>
	</nav>
	<section>
		<div class="messages"></div>
		<div class="user_list">
			<ul>
				
			</ul>
		</div>
	</section>
	<footer>
		<div class="sender_area">
			<input type="file" id="sender_input_img" />
			<input type="text" id="sender_input" placeholder="Digite aqui sua mensagem" />
			<div class="sender_tools">
				<div class="sender_tool imgUploadBtn">
					<img src="<?php echo BASE_URL; ?>assets/icons/icon1.png" />
				</div>
				<div class="sender_tool"></div>
			</div>
		</div>
	</footer>	
</div>