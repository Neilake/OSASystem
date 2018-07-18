$(document).ready(function(){
	
	
	$('.delete').click(function() {
		var info=$(this).next().val();
		
		if(confirm("确定要删除吗?")){
			window.event.returnValue = true;
		}else{
			window.event.returnValue = false;
		}
		if(window.event.returnValue){
		htmlobj=$.ajax({url:"http://localhost:8080/OaSystem/admin/deletDept.do?dept_id="+info,async:true});
		$(this).parents('tr').remove();
		
		}else{
			alert("删除失败...");
		}
	
	});
	
	$('.delete').click(function() {
		var info=$(this).next().val();
		
		if(confirm("确定要删除吗?")){
			window.event.returnValue = true;
		}else{
			window.event.returnValue = false;
		}
		if(window.event.returnValue){
		htmlobj=$.ajax({url:"http://localhost:8080/OaSystem/admin/deletDept.do?dept_id="+info,async:true});
		$(this).parents('tr').remove();
		
		}else{
			alert("删除失败...");
		}
	
	});
		

});