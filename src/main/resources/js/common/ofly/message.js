/**
 * @Author			: Logan
 * @Create Time		: 2017年4月7日 上午9:49:26
 * @Introduction	: 消息方法
 * [	
 * 		'msg'	: 提示信息
 * 		'func'	: 回调函数
 * ]		
 */
OFLY.message = function(msg, func) {
	$.messager.alert({
		title	: '提示',
		msg		: msg,
		//timeout	: 2000,
		icon	: 'info',
		fn		: function() {
			if($.isFunction(func)) {
				func.call(this);
			}
		}
	});
}
/**
 * @Author			: Logan
 * @Create Time		: 2017年4月7日 下午2:08:09
 * @Introduction	: 确认框
 * [
 * 		'title'	: 标题
 * 		'msg'	: 提示信息
 * 		'fn'	: 确认后的回调函数
 * ]
 */
OFLY.confirm = function(title, msg, fn) {
	$.messager.confirm(title, msg,function(flag){
		if(flag) {
			fn.call(this);
		}
	});
}

/**
 * @Author			: Logan
 * @Create Time		: 2017年4月7日 下午3:30:26
 * @Introduction	: Dialog框
 * [
 * 		'id'		: 弹出框ID
 * 		'url'		: 弹出框显示内容路径
 * 		'params'	: 输入参数
 * 		'title'		: 标题
 * 		'width'		: 宽度
 * 		'height'	: 高度
 * 		'buttons'	: 弹出框右下角按钮(数组对象)
 * 			[
 * 				'text'		: 按钮名称
 * 				'iconCls'	: 按钮图标
 * 				'plain'		: 简洁效果(true|false) 建议true
 * 				'handler'	: 点击事件
 * 			]
 * 		'fn'		: 关闭窗口回调函数
 * ]
 */
OFLY.dialog = function(id, url, params, title, width, height, buttons, fn) {
	var options = {
        title	: title,
        width	: width,
        height	: height,
        closed	: false,
        cache	: false,
        href	: url+ "?"+$.param(params) ,
        modal	: true,
        onClose	: function() {
        	if($.isFunction(fn)) {
        		fn.call(this);
        	}
        }
    };
	// 转换type 的为样式图标
	var map = {
		save	: 'icon-save',
		test	: 'icon-reload'
		
	};
	if(buttons!=null && buttons.length>0) {
		$.each(buttons,function(index, item) {
			item.iconCls 	= map[item.type];
			item.plain 		= true;
			delete item.type;
		});
		options['buttons'] = buttons;
	}
	var div = '<div id="'+id+'"></div>';
	$(document.body).append(div); 
	$('#'+id).dialog(options);
}

/**
 * @Author			: Logan
 * @Create Time		: 2017年4月10日 上午10:34:39
 * @Introduction	: 关闭弹出框
 * [
 * 		'id'	: 弹出框ID
 * ]
 */
OFLY.dialog.close = function(id) {
	$('#'+id).dialog("close");
}