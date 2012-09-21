<script type="text/javascript">
$(function() {
	$('#departmentId').combobox({
		url:'department/query_all',  
	    valueField:'id',  
	    textField:'name', 
	    panelHeight:'auto',
	    onChange:function(newValue,oldValue){
	    	setRoom(newValue);
	    }
	});
});
function doRoomAdd(){
	$('#roomAddForm').form('submit',{
		url:'room/room_add',
		onSubmit: function(){ 
			//alert('Do some checking...');
		},
		success:function(msg){
			$.messager.alert('Info',msg); 
			getRoomData('room/query_list');
			$('#addRoom').window('close');
		}
	});
}
function closeRAddW() {
	$('#addRoom').window('close');
}
</script>
	<div class="easyui-layout" fit="true">
		<div region="center" border="false" style="padding:10px;background:#fff;border:1px solid #ccc;">
			<form id="roomAddForm" method="post">
			<table>
				<tr>
					<td><label for="name">Name: </label></td>
					<td>
						<input id="name" name="name" required="true" style="width:200px;">
					</td>
				</tr>
				<tr>
					<td><label for="name">Owner: </label></td>
					<td>
						<input id="owner" name="owner" required="true" style="width:200px;">
					</td>
				</tr>
				<tr>
					<td><label for="name">Location: </label></td>
					<td>
						<input id="location" name="location" required="true" style="width:200px;">
					</td>
				</tr>
				<tr>
					<td><label for="name">Department: </label></td>
					<td>
						<select class="easyui-combobox" style="width:204px;" id="departmentId" name="departmentId"></select>
					</td>
				</tr>
				<tr>
					<td><label for="name">Description: </label></td>
					<td> <textarea rows="3" cols="40" id="description" name="description"></textarea> </td>
				</tr>
			</table>
			</form>
		</div>
		<div region="south" border="false" style="text-align:right;height:30px;line-height:30px;">
			<a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="doRoomAdd();">Ok</a>
			<a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="closeRAddW();">Cancel</a>
		</div>
</div>