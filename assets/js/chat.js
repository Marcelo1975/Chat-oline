var chat = {

	groups:[],
	activeGroup:0,

	setGroup:function(id, name) {
		var found = false;

		for(var i in this.groups) {
			if(this.groups[i].id == id) {
				found = true;
			}
		}

		if(found == false) {
			this.groups.push({
				id:id,
				name:name
			});
		}

		if(this.groups.length == 1){
			this.setActiveGroup(id);
		}

		this.updateGroupView();
	},
	 getGroups:function() {
	 	return this.groups;
	 },
	 loadGroupList:function(ajaxCallback) {
	 	
	 	$.ajax({
	 		url:BASE_URL+'ajax/get_groups',
	 		type:'GET',
	 		dataType:'json',
	 		success:function(json) {
	 			if(json.status == '1') {
	 				this.groupList = json.list;
	 				ajaxCallback(json);
	 			} else {
	 				window.location.href = BASE_URL+'login';
	 			}
	 		}
	 	});
	 },
	 addNewGroup:function(groupName, ajaxCallback){
	 	$.ajax({
	 		url:BASE_URL+'ajax/add_group',
	 		type:'POST',
	 		data:{name:groupName},
	 		dataType:'json',
	 		success:function(json) {
	 			if(json.status == '1') {
	 				this.groupList = json.list;
	 				ajaxCallback(json);
	 			} else {
	 				window.location.href = BASE_URL+'login';
	 			}
	 		}
	 	});
	 },
	 updateGroupView:function() {
	 	var html = '';
	 	for(var i in this.groups) {
	 		html += '<li data-id="'+this.groups[i].id+'">'+this.groups[i].name+'</li>';
	 	}
	 	$('nav ul').html(html);
	 	this.loadConversation();
	 },
	 setActiveGroup:function(id) {
	 	this.activeGroup = id;
	 	this.loadConversation();
	 },
	 getActiveGroup:function(){
	 	return this.activeGroup;
	 },
	 loadConversation:function(){
	 	if(this.activeGroup != 0){
		 	$('nav ul').find('.active_group').removeClass('active_group');
		 	$('nav ul').find('li[data-id='+this.activeGroup+']').addClass('active_group');
		 }

	 	//Pegar a conversa daquele grupo
	 }
};