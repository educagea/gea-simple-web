//javascript to show/hide elements in the frontpage

show_info_in_frontpage = function(position, item_number){
	switch(position)
	{
	case "left":
	  $(".left_content").hide();
	  $("#info_item_"+item_number).addClass("left_content");
	  $("#half_left").append($("#info_item_"+item_number));
	  $("#info_item_"+item_number).show();
	  break;
	case "right":
	  $(".right_content").hide();
	  $("#info_item_"+item_number).addClass("right_content");
	  $("#half_right").append($("#info_item_"+item_number));
	  $("#info_item_"+item_number).show();
	  break;
	}
};

back_to_main = function(){
	$(".left_content").hide();
	$(".right_content").hide();
	$("#main_left").show();
	$("#main_right").show();
};

show_info_in_mundogea = function(item_number){
	$(".right_content").hide();
	$("#mundogea_content"+item_number).show();
}
