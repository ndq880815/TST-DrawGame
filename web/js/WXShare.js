!function(a,b){"function"==typeof define&&(define.amd||define.cmd)?define(function(){return b(a)}):b(a,!0)}(this,function(a,b){function c(b,c,d){a.WeixinJSBridge?WeixinJSBridge.invoke(b,e(c),function(a){i(b,a,d)}):l(b,d)}function d(b,c,d){a.WeixinJSBridge?WeixinJSBridge.on(b,function(a){d&&d.trigger&&d.trigger(a),i(b,a,c)}):d?l(b,d):l(b,c)}function e(a){return a=a||{},a.appId=B.appId,a.verifyAppId=B.appId,a.verifySignType="sha1",a.verifyTimestamp=B.timestamp+"",a.verifyNonceStr=B.nonceStr,a.verifySignature=B.signature,a}function f(a,b){return{scope:b,signType:"sha1",timeStamp:a.timestamp+"",nonceStr:a.nonceStr,addrSign:a.addrSign}}function g(a){return{timeStamp:a.timestamp+"",nonceStr:a.nonceStr,"package":a.package,paySign:a.paySign,signType:"SHA1"}}function i(a,b,c){var d,e,f;switch(delete b.err_code,delete b.err_desc,delete b.err_detail,d=b.errMsg,d||(d=b.err_msg,delete b.err_msg,d=j(a,d,c),b.errMsg=d),c=c||{},c._complete&&(c._complete(b),delete c._complete),d=b.errMsg||"",B.debug&&!c.isInnerInvoke&&alert(JSON.stringify(b)),e=d.indexOf(":"),f=d.substring(e+1)){case"ok":c.success&&c.success(b);break;case"cancel":c.cancel&&c.cancel(b);break;default:c.fail&&c.fail(b)}c.complete&&c.complete(b)}function j(a,b){var d,e,f,g;if(b){switch(d=b.indexOf(":"),a){case q.config:e="config";break;case q.openProductSpecificView:e="openProductSpecificView";break;default:e=b.substring(0,d),e=e.replace(/_/g," "),e=e.replace(/\b\w+\b/g,function(a){return a.substring(0,1).toUpperCase()+a.substring(1)}),e=e.substring(0,1).toLowerCase()+e.substring(1),e=e.replace(/ /g,""),-1!=e.indexOf("Wcpay")&&(e=e.replace("Wcpay","WCPay")),f=r[e],f&&(e=f)}g=b.substring(d+1),"confirm"==g&&(g="ok"),-1!=g.indexOf("failed_")&&(g=g.substring(7)),-1!=g.indexOf("fail_")&&(g=g.substring(5)),g=g.replace(/_/g," "),g=g.toLowerCase(),("access denied"==g||"no permission to execute"==g)&&(g="permission denied"),"config"==e&&"function not exist"==g&&(g="ok"),b=e+":"+g}return b}function k(a){var b,c,d,e;if(a){for(b=0,c=a.length;c>b;++b)d=a[b],e=q[d],e&&(a[b]=e);return a}}function l(a,b){if(B.debug&&!b.isInnerInvoke){var c=r[a];c&&(a=c),b&&b._complete&&delete b._complete,console.log('"'+a+'",',b||"")}}function m(){if(!("6.0.2">y)){var b=new Image;A.appId=B.appId,A.initTime=z.initEndTime-z.initStartTime,A.preVerifyTime=z.preVerifyEndTime-z.preVerifyStartTime,E.getNetworkType({isInnerInvoke:!0,success:function(a){A.networkType=a.networkType;var c="https://open.weixin.qq.com/sdk/report?v="+A.version+"&o="+A.isPreVerifyOk+"&s="+A.systemType+"&c="+A.clientVersion+"&a="+A.appId+"&n="+A.networkType+"&i="+A.initTime+"&p="+A.preVerifyTime+"&u="+A.url;b.src=c}})}}function n(){return(new Date).getTime()}function o(b){v&&(a.WeixinJSBridge?b():s.addEventListener&&s.addEventListener("WeixinJSBridgeReady",b,!1))}function p(){E.invoke||(E.invoke=function(b,c,d){a.WeixinJSBridge&&WeixinJSBridge.invoke(b,e(c),d)},E.on=function(b,c){a.WeixinJSBridge&&WeixinJSBridge.on(b,c)})}var q,r,s,t,u,v,w,x,y,z,A,B,C,D,E;if(!a.jWeixin)return q={config:"preVerifyJSAPI",onMenuShareTimeline:"menu:share:timeline",onMenuShareAppMessage:"menu:share:appmessage",onMenuShareQQ:"menu:share:qq",onMenuShareWeibo:"menu:share:weiboApp",previewImage:"imagePreview",getLocation:"geoLocation",openProductSpecificView:"openProductViewWithPid",addCard:"batchAddCard",openCard:"batchViewCard",chooseWXPay:"getBrandWCPayRequest"},r=function(){var b,a={};for(b in q)a[q[b]]=b;return a}(),s=a.document,t=s.title,u=navigator.userAgent.toLowerCase(),v=-1!=u.indexOf("micromessenger"),w=-1!=u.indexOf("android"),x=-1!=u.indexOf("iphone")||-1!=u.indexOf("ipad"),y=function(){var a=u.match(/micromessenger\/(\d+\.\d+\.\d+)/)||u.match(/micromessenger\/(\d+\.\d+)/);return a?a[1]:""}(),z={initStartTime:n(),initEndTime:0,preVerifyStartTime:0,preVerifyEndTime:0},A={version:1,appId:"",initTime:0,preVerifyTime:0,networkType:"",isPreVerifyOk:1,systemType:x?1:w?2:-1,clientVersion:y,url:encodeURIComponent(location.href)},B={},C={_completes:[]},D={state:0,res:{}},o(function(){z.initEndTime=n()}),E={config:function(a){B=a,l("config",a),o(function(){c(q.config,{verifyJsApiList:k(B.jsApiList)},function(){C._complete=function(a){z.preVerifyEndTime=n(),D.state=1,D.res=a},C.success=function(){A.isPreVerifyOk=0},C.fail=function(a){C._fail?C._fail(a):D.state=-1};var a=C._completes;return a.push(function(){B.debug||m()}),C.complete=function(b){for(var c=0,d=a.length;d>c;++c)a[c](b);C._completes=[]},C}()),z.preVerifyStartTime=n()}),B.beta&&p()},ready:function(a){0!=D.state?a():(C._completes.push(a),!v&&B.debug&&a())},error:function(a){"6.0.2">y||(-1==D.state?a(D.res):C._fail=a)},checkJsApi:function(a){var b=function(a){var c,d,b=a.checkResult;for(c in b)d=r[c],d&&(b[d]=b[c],delete b[c]);return a};c("checkJsApi",{jsApiList:k(a.jsApiList)},function(){return a._complete=function(a){if(w){var c=a.checkResult;c&&(a.checkResult=JSON.parse(c))}a=b(a)},a}())},onMenuShareTimeline:function(a){d(q.onMenuShareTimeline,{complete:function(){c("shareTimeline",{title:a.title||t,desc:a.title||t,img_url:a.imgUrl,link:a.link||location.href},a)}},a)},onMenuShareAppMessage:function(a){d(q.onMenuShareAppMessage,{complete:function(){c("sendAppMessage",{title:a.title||t,desc:a.desc||"",link:a.link||location.href,img_url:a.imgUrl,type:a.type||"link",data_url:a.dataUrl||""},a)}},a)},onMenuShareQQ:function(a){d(q.onMenuShareQQ,{complete:function(){c("shareQQ",{title:a.title||t,desc:a.desc||"",img_url:a.imgUrl,link:a.link||location.href},a)}},a)},onMenuShareWeibo:function(a){d(q.onMenuShareWeibo,{complete:function(){c("shareWeiboApp",{title:a.title||t,desc:a.desc||"",img_url:a.imgUrl,link:a.link||location.href},a)}},a)},startRecord:function(a){c("startRecord",{},a)},stopRecord:function(a){c("stopRecord",{},a)},onVoiceRecordEnd:function(a){d("onVoiceRecordEnd",a)},playVoice:function(a){c("playVoice",{localId:a.localId},a)},pauseVoice:function(a){c("pauseVoice",{localId:a.localId},a)},stopVoice:function(a){c("stopVoice",{localId:a.localId},a)},onVoicePlayEnd:function(a){d("onVoicePlayEnd",a)},uploadVoice:function(a){c("uploadVoice",{localId:a.localId,isShowProgressTips:a.isShowProgressTips||1},a)},downloadVoice:function(a){c("downloadVoice",{serverId:a.serverId,isShowProgressTips:a.isShowProgressTips||1},a)},translateVoice:function(a){c("translateVoice",{localId:a.localId,isShowProgressTips:a.isShowProgressTips||1},a)},chooseImage:function(a){c("chooseImage",{scene:"1|2"},function(){return a._complete=function(a){if(w){var b=a.localIds;b&&(a.localIds=JSON.parse(b))}},a}())},previewImage:function(a){c(q.previewImage,{current:a.current,urls:a.urls},a)},uploadImage:function(a){c("uploadImage",{localId:a.localId,isShowProgressTips:a.isShowProgressTips||1},a)},downloadImage:function(a){c("downloadImage",{serverId:a.serverId,isShowProgressTips:a.isShowProgressTips||1},a)},getNetworkType:function(a){var b=function(a){var c,d,e,b=a.errMsg;if(a.errMsg="getNetworkType:ok",c=a.subtype,delete a.subtype,c)a.networkType=c;else switch(d=b.indexOf(":"),e=b.substring(d+1)){case"fail":case"permission denied":case"localparameters":a.errMsg="getNetworkType:fail";break;default:a.networkType=e}return a};c("getNetworkType",{},function(){return a._complete=function(a){a=b(a)},a}())},openLocation:function(a){c("openLocation",{latitude:a.latitude,longitude:a.longitude,name:a.name||"",address:a.address||"",scale:a.scale||28,infoUrl:a.infoUrl||""},a)},getLocation:function(a){c(q.getLocation,f(a,"jsapi_location"),a)},hideOptionMenu:function(a){c("hideOptionMenu",{},a)},showOptionMenu:function(a){c("showOptionMenu",{},a)},closeWindow:function(a){c("closeWindow",{immediate_close:a&&a.immediateClose||0},a)},hideMenuItems:function(a){c("hideMenuItems",{menuList:a.menuList},a)},showMenuItems:function(a){c("showMenuItems",{menuList:a.menuList},a)},hideAllNonBaseMenuItem:function(a){c("hideAllNonBaseMenuItem",{},a)},showAllNonBaseMenuItem:function(a){c("showAllNonBaseMenuItem",{},a)},scanQRCode:function(a){c("scanQRCode",{desc:a.desc,needResult:a.needResult||0,scanType:a.scanType||["qrCode","barCode"]},a)},openProductSpecificView:function(a){c(q.openProductSpecificView,{pid:a.productId,view_type:a.viewType||0},a)},addCard:function(a){var e,f,g,h,b=a.cardList,d=[];for(e=0,f=b.length;f>e;++e)g=b[e],h={card_id:g.cardId,card_ext:g.cardExt},d.push(h);c(q.addCard,{card_list:d},function(){return a._complete=function(a){var c,d,e,b=a.card_list;if(b){for(b=JSON.parse(b),c=0,d=b.length;d>c;++c)e=b[c],e.cardId=e.card_id,e.cardExt=e.card_ext,e.isSuccess=e.is_succ?!0:!1,delete e.card_id,delete e.card_ext,delete e.is_succ;a.cardList=b,delete a.card_list}},a}())},chooseCard:function(a){c("chooseCard",{app_id:B.appId,location_id:a.shopId||"",sign_type:"SHA1",card_id:a.cardId||"",card_type:a.cardType||"",card_sign:a.cardSign,time_stamp:a.timestamp+"",nonce_str:a.nonceStr},function(){return a._complete=function(a){a.cardList=a.choose_card_info,delete a.choose_card_info},a}())},openCard:function(a){var e,f,g,h,b=a.cardList,d=[];for(e=0,f=b.length;f>e;++e)g=b[e],h={card_id:g.cardId,code:g.code},d.push(h);c(q.openCard,{card_list:d},a)},chooseWXPay:function(a){c(q.chooseWXPay,g(a),a)}},b&&(a.wx=a.jWeixin=E),E});

function WXshare(api_url,title,desc,link,imgUrl,openid,taskname,customer,fn){ //公众号接口，分享标题，分享文案，分享链接，分享图片，Openid,活动名称，客户名称,分享成功后的自定义回调方法
	var url = window.location.href;
	var state = '';
	if(WXEdition()){//新版本
		$.ajax({
			url:api_url,
			async: false,
			dataType:'jsonp',
			data : {jsapi_url:encodeURIComponent(url)},
			jsonpCallback:"jsonpReturnValues",
			success:function(data){
				wx.config({
					debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
					appId: data.jsonResponse.appid, // 必填，公众号的唯一标识
					timestamp: data.jsonResponse.timestamp, // 必填，生成签名的时间戳
					nonceStr: data.jsonResponse.nonceStr, // 必填，生成签名的随机串
					signature: data.jsonResponse.signature,// 必填，签名，见附录1
					jsApiList: [
						'checkJsApi',
						'onMenuShareTimeline',
						'onMenuShareAppMessage',
						'hideOptionMenu',
						'showOptionMenu'
					  ] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
				})
			},
			complete:function(){
			  wx.ready(function(){
				wx.checkJsApi({
				  jsApiList: [
					'onMenuShareAppMessage',
					'onMenuShareTimeline',
					'showOptionMenu'
				  ],
				  success: function (res) {
					wx.showOptionMenu();
					wx.onMenuShareAppMessage({
					  title:title,
					  desc:desc,
					  link:link,
					  imgUrl:imgUrl,
					  success: function (res) {
						state = '分享成功';
						if(fn){fn()};
					  },
					  cancel: function (res) {
						state = '取消分享';
					  },
					  complete : function(){
						shareTracing(openid,'好友',state,taskname,customer,link);
					  }
					});

					wx.onMenuShareTimeline({
					  title: desc,
					  link: link,
					  imgUrl: imgUrl,
					  success: function (res) {
						state = '分享成功';
						if(fn){fn()};
					  },
					  cancel: function (res) {
						state = '取消分享';
					  },
					  complete : function(){
						shareTracing(openid,'朋友圈',state,taskname,customer,link);
					  }
					});
				  }
				});


			  })
			}
		})
	}else{//旧版本
		//
		//
		//
		//
		//WeixinApi库开始
		//
		//
		//
		//
		//
		(function (window) {

		"use strict";

		/**
		 * 定义WeixinApi
		 */
		var WeixinApi = {
			version: 4.0
		};

		// 将WeixinApi暴露到window下：全局可使用，对旧版本向下兼容
		window.WeixinApi = WeixinApi;

		/////////////////////////// CommonJS /////////////////////////////////
		if (typeof define === 'function' && (define.amd || define.cmd)) {
			if (define.amd) {
				// AMD 规范，for：requirejs
				define(function () {
					return WeixinApi;
				});
			} else if (define.cmd) {
				// CMD 规范，for：seajs
				define(function (require, exports, module) {
					module.exports = WeixinApi;
				});
			}
		}

		/**
		 * 对象简单继承，后面的覆盖前面的，继承深度：deep=1
		 * @private
		 */
		var _extend = function () {
			var result = {}, obj, k;
			for (var i = 0, len = arguments.length; i < len; i++) {
				obj = arguments[i];
				if (typeof obj === 'object') {
					for (k in obj) {
						obj[k] && (result[k] = obj[k]);
					}
				}
			}
			return result;
		};

		/**
		 * 内部私有方法，分享用
		 * @private
		 */
		var _share = function (cmd, data, callbacks) {
			callbacks = callbacks || {};

			// 分享过程中的一些回调
			var progress = function (resp) {
				switch (true) {
					// 用户取消
					case /\:cancel$/i.test(resp.err_msg) :
						callbacks.cancel && callbacks.cancel(resp);
						break;
					// 发送成功
					case /\:(confirm|ok)$/i.test(resp.err_msg):
						callbacks.confirm && callbacks.confirm(resp);
						break;
					// fail　发送失败
					case /\:fail$/i.test(resp.err_msg) :
					default:
						callbacks.fail && callbacks.fail(resp);
						break;
				}
				// 无论成功失败都会执行的回调
				callbacks.all && callbacks.all(resp);
			};

			// 执行分享，并处理结果
			var handler = function (theData, argv) {

				// 加工一下数据
				if (cmd.menu == 'menu:share:timeline' ||
					(cmd.menu == 'general:share' && argv.shareTo == 'timeline')) {

					var title = theData.title;
					theData.title = theData.desc || title;
					theData.desc = title || theData.desc;
				}

				// 新的分享接口，单独处理
				if (cmd.menu === 'general:share') {
					// 如果是收藏操作，并且在wxCallbacks中配置了favorite为false，则不执行回调
					if (argv.shareTo == 'favorite' || argv.scene == 'favorite') {
						if (callbacks.favorite === false) {
							return argv.generalShare(theData, function () {
							});
						}
					}
					if (argv.shareTo === 'timeline') {
						WeixinJSBridge.invoke('shareTimeline', theData, progress);
					} else if (argv.shareTo === 'friend') {
						WeixinJSBridge.invoke('sendAppMessage', theData, progress);
					} else if (argv.shareTo === 'QQ') {
						WeixinJSBridge.invoke('shareQQ', theData, progress);
					}
				} else {
					WeixinJSBridge.invoke(cmd.action, theData, progress);
				}
			};

			// 监听分享操作
			WeixinJSBridge.on(cmd.menu, function (argv) {
				callbacks.dataLoaded = callbacks.dataLoaded || new Function();
				if (callbacks.async && callbacks.ready) {
					WeixinApi["_wx_loadedCb_"] = callbacks.dataLoaded;
					if (WeixinApi["_wx_loadedCb_"].toString().indexOf("_wx_loadedCb_") > 0) {
						WeixinApi["_wx_loadedCb_"] = new Function();
					}
					callbacks.dataLoaded = function (newData) {
						callbacks.__cbkCalled = true;
						var theData = _extend(data, newData);
						theData.img_url = theData.imgUrl || theData.img_url;
						delete theData.imgUrl;
						WeixinApi["_wx_loadedCb_"](theData);
						handler(theData, argv);
					};
					// 然后就绪
					if (!(argv && (argv.shareTo == 'favorite' || argv.scene == 'favorite') && callbacks.favorite === false)) {
						callbacks.ready && callbacks.ready(argv, data);
						// 如果设置了async为true，但是在ready方法中并没有手动调用dataLoaded方法，则自动触发一次
						if (!callbacks.__cbkCalled) {
							callbacks.dataLoaded({});
							callbacks.__cbkCalled = false;
						}
					}
				} else {
					// 就绪状态
					var theData = _extend(data);
					if (!(argv && (argv.shareTo == 'favorite' || argv.scene == 'favorite') && callbacks.favorite === false)) {
						callbacks.ready && callbacks.ready(argv, theData);
					}
					handler(theData, argv);
				}
			});
		};

		/**
		 * 分享到微信朋友圈
		 * @param       {Object}    data       待分享的信息
		 * @p-config    {String}    appId      公众平台的appId（服务号可用）
		 * @p-config    {String}    imgUrl     图片地址
		 * @p-config    {String}    link       链接地址
		 * @p-config    {String}    desc       描述
		 * @p-config    {String}    title      分享的标题
		 *
		 * @param       {Object}    callbacks  相关回调方法
		 * @p-config    {Boolean}   async                   ready方法是否需要异步执行，默认false
		 * @p-config    {Function}  ready(argv, data)       就绪状态
		 * @p-config    {Function}  dataLoaded(data)        数据加载完成后调用，async为true时有用，也可以为空
		 * @p-config    {Function}  cancel(resp)    取消
		 * @p-config    {Function}  fail(resp)      失败
		 * @p-config    {Function}  confirm(resp)   成功
		 * @p-config    {Function}  all(resp)       无论成功失败都会执行的回调
		 */
		WeixinApi.shareToTimeline = function (data, callbacks) {
			_share({
				menu: 'menu:share:timeline',
				action: 'shareTimeline'
			}, {
				"appid": data.appId ? data.appId : '',
				"img_url": data.imgUrl,
				"link": data.link,
				"desc": data.desc,
				"title": data.title,
				"img_width": "640",
				"img_height": "640"
			}, callbacks);
		};

		/**
		 * 发送给微信上的好友
		 * @param       {Object}    data       待分享的信息
		 * @p-config    {String}    appId      公众平台的appId（服务号可用）
		 * @p-config    {String}    imgUrl     图片地址
		 * @p-config    {String}    link       链接地址
		 * @p-config    {String}    desc       描述
		 * @p-config    {String}    title      分享的标题
		 *
		 * @param       {Object}    callbacks  相关回调方法
		 * @p-config    {Boolean}   async                   ready方法是否需要异步执行，默认false
		 * @p-config    {Function}  ready(argv, data)       就绪状态
		 * @p-config    {Function}  dataLoaded(data)        数据加载完成后调用，async为true时有用，也可以为空
		 * @p-config    {Function}  cancel(resp)    取消
		 * @p-config    {Function}  fail(resp)      失败
		 * @p-config    {Function}  confirm(resp)   成功
		 * @p-config    {Function}  all(resp)       无论成功失败都会执行的回调
		 */
		WeixinApi.shareToFriend = function (data, callbacks) {
			_share({
				menu: 'menu:share:appmessage',
				action: 'sendAppMessage'
			}, {
				"appid": data.appId ? data.appId : '',
				"img_url": data.imgUrl,
				"link": data.link,
				"desc": data.desc,
				"title": data.title,
				"img_width": "640",
				"img_height": "640"
			}, callbacks);
		};


		/**
		 * 分享到腾讯微博
		 * @param       {Object}    data       待分享的信息
		 * @p-config    {String}    link       链接地址
		 * @p-config    {String}    desc       描述
		 *
		 * @param       {Object}    callbacks  相关回调方法
		 * @p-config    {Boolean}   async                   ready方法是否需要异步执行，默认false
		 * @p-config    {Function}  ready(argv, data)       就绪状态
		 * @p-config    {Function}  dataLoaded(data)        数据加载完成后调用，async为true时有用，也可以为空
		 * @p-config    {Function}  cancel(resp)    取消
		 * @p-config    {Function}  fail(resp)      失败
		 * @p-config    {Function}  confirm(resp)   成功
		 * @p-config    {Function}  all(resp)       无论成功失败都会执行的回调
		 */
		WeixinApi.shareToWeibo = function (data, callbacks) {
			_share({
				menu: 'menu:share:weibo',
				action: 'shareWeibo'
			}, {
				"content": data.desc,
				"url": data.link
			}, callbacks);
		};

		/**
		 * 新的分享接口
		 * @param       {Object}    data       待分享的信息
		 * @p-config    {String}    appId      公众平台的appId（服务号可用）
		 * @p-config    {String}    imgUrl     图片地址
		 * @p-config    {String}    link       链接地址
		 * @p-config    {String}    desc       描述
		 * @p-config    {String}    title      分享的标题
		 *
		 * @param       {Object}    callbacks  相关回调方法
		 * @p-config    {Boolean}   async                   ready方法是否需要异步执行，默认false
		 * @p-config    {Function}  ready(argv, data)       就绪状态
		 * @p-config    {Function}  dataLoaded(data)        数据加载完成后调用，async为true时有用，也可以为空
		 * @p-config    {Function}  cancel(resp)    取消
		 * @p-config    {Function}  fail(resp)      失败
		 * @p-config    {Function}  confirm(resp)   成功
		 * @p-config    {Function}  all(resp)       无论成功失败都会执行的回调
		 */
		WeixinApi.generalShare = function (data, callbacks) {
			_share({
				menu: 'general:share'
			}, {
				"appid": data.appId ? data.appId : '',
				"img_url": data.imgUrl,
				"link": data.link,
				"desc": data.desc,
				"title": data.title,
				"img_width": "640",
				"img_height": "640"
			}, callbacks);
		};

		/**
		 * 加关注（此功能只是暂时先加上，不过因为权限限制问题，不能用，如果你的站点是部署在*.qq.com下，也许可行）
		 * @param       {String}    appWeixinId     微信公众号ID
		 * @param       {Object}    callbacks       回调方法
		 * @p-config    {Function}  fail(resp)      失败
		 * @p-config    {Function}  confirm(resp)   成功
		 */
		WeixinApi.addContact = function (appWeixinId, callbacks) {
			callbacks = callbacks || {};
			WeixinJSBridge.invoke("addContact", {
				webtype: "1",
				username: appWeixinId
			}, function (resp) {
				var success = !resp.err_msg || "add_contact:ok" == resp.err_msg
					|| "add_contact:added" == resp.err_msg;
				if (success) {
					callbacks.success && callbacks.success(resp);
				} else {
					callbacks.fail && callbacks.fail(resp);
				}
			})
		};

		/**
		 * 调起微信Native的图片播放组件。
		 * 这里必须对参数进行强检测，如果参数不合法，直接会导致微信客户端crash
		 *
		 * @param {String} curSrc 当前播放的图片地址
		 * @param {Array} srcList 图片地址列表
		 */
		WeixinApi.imagePreview = function (curSrc, srcList) {
			if (!curSrc || !srcList || srcList.length == 0) {
				return;
			}
			WeixinJSBridge.invoke('imagePreview', {
				'current': curSrc,
				'urls': srcList
			});
		};

		/**
		 * 显示网页右上角的按钮
		 */
		WeixinApi.showOptionMenu = function () {
			WeixinJSBridge.call('showOptionMenu');
		};


		/**
		 * 隐藏网页右上角的按钮
		 */
		WeixinApi.hideOptionMenu = function () {
			WeixinJSBridge.call('hideOptionMenu');
		};

		/**
		 * 显示底部工具栏
		 */
		WeixinApi.showToolbar = function () {
			WeixinJSBridge.call('showToolbar');
		};

		/**
		 * 隐藏底部工具栏
		 */
		WeixinApi.hideToolbar = function () {
			WeixinJSBridge.call('hideToolbar');
		};

		/**
		 * 返回如下几种类型：
		 *
		 * network_type:wifi     wifi网络
		 * network_type:edge     非wifi,包含3G/2G
		 * network_type:fail     网络断开连接
		 * network_type:wwan     2g或者3g
		 *
		 * 使用方法：
		 * WeixinApi.getNetworkType(function(networkType){
		 *
		 * });
		 *
		 * @param callback
		 */
		WeixinApi.getNetworkType = function (callback) {
			if (callback && typeof callback == 'function') {
				WeixinJSBridge.invoke('getNetworkType', {}, function (e) {
					// 在这里拿到e.err_msg，这里面就包含了所有的网络类型
					callback(e.err_msg);
				});
			}
		};

		/**
		 * 关闭当前微信公众平台页面
		 * @param       {Object}    callbacks       回调方法
		 * @p-config    {Function}  fail(resp)      失败
		 * @p-config    {Function}  success(resp)   成功
		 */
		WeixinApi.closeWindow = function (callbacks) {
			callbacks = callbacks || {};
			WeixinJSBridge.invoke("closeWindow", {}, function (resp) {
				switch (resp.err_msg) {
					// 关闭成功
					case 'close_window:ok':
						callbacks.success && callbacks.success(resp);
						break;

					// 关闭失败
					default :
						callbacks.fail && callbacks.fail(resp);
						break;
				}
			});
		};

		/**
		 * 当页面加载完毕后执行，使用方法：
		 * WeixinApi.ready(function(Api){
		 *     // 从这里只用Api即是WeixinApi
		 * });
		 * @param readyCallback
		 */
		WeixinApi.ready = function (readyCallback) {

			/**
			 * 加一个钩子，同时解决Android和iOS下的分享问题
			 * @private
			 */
			var _hook = function () {
				var _WeixinJSBridge = {};
				Object.keys(WeixinJSBridge).forEach(function (key) {
					_WeixinJSBridge[key] = WeixinJSBridge[key];
				});
				Object.keys(WeixinJSBridge).forEach(function (key) {
					if (typeof WeixinJSBridge[key] === 'function') {
						WeixinJSBridge[key] = function () {
							try {
								var args = arguments.length > 0 ? arguments[0] : {},
									runOn3rd_apis = args.__params ? args.__params.__runOn3rd_apis || [] : [];
								['menu:share:timeline', 'menu:share:appmessage',
									'menu:share:qq', 'general:share'].forEach(function (menu) {
										runOn3rd_apis.indexOf(menu) === -1 && runOn3rd_apis.push(menu);
									});
							} catch (e) {
							}
							return _WeixinJSBridge[key].apply(WeixinJSBridge, arguments);
						};
					}
				});
			};

			if (readyCallback && typeof readyCallback == 'function') {
				var Api = this;
				var wxReadyFunc = function () {
					_hook();
					readyCallback(Api);
				};
				if (typeof window.WeixinJSBridge == "undefined") {
					if (document.addEventListener) {
						document.addEventListener('WeixinJSBridgeReady', wxReadyFunc, false);
					} else if (document.attachEvent) {
						document.attachEvent('WeixinJSBridgeReady', wxReadyFunc);
						document.attachEvent('onWeixinJSBridgeReady', wxReadyFunc);
					}
				} else {
					wxReadyFunc();
				}
			}
		};

		/**
		 * 判断当前网页是否在微信内置浏览器中打开
		 */
		WeixinApi.openInWeixin = function () {
			return /MicroMessenger/i.test(navigator.userAgent);
		};

		/*
		 * 打开扫描二维码
		 * @param       {Object}    callbacks       回调方法
		 * @p-config    {Boolean}   needResult      是否直接获取分享后的内容
		 * @p-config    {String}    desc            扫描二维码时的描述
		 * @p-config    {Function}  fail(resp)      失败
		 * @p-config    {Function}  success(resp)   成功
		 */
		WeixinApi.scanQRCode = function (callbacks) {
			callbacks = callbacks || {};
			WeixinJSBridge.invoke("scanQRCode", {
				needResult: callbacks.needResult ? 1 : 0,
				desc: callbacks.desc || 'WeixinApi Desc'
			}, function (resp) {
				switch (resp.err_msg) {
					// 打开扫描器成功
					case 'scanQRCode:ok':
					case 'scan_qrcode:ok':
						callbacks.success && callbacks.success(resp);
						break;

					// 打开扫描器失败
					default :
						callbacks.fail && callbacks.fail(resp);
						break;
				}
			});
		};

		/**
		 * 检测应用程序是否已安装
		 *         by mingcheng 2014-10-17
		 *
		 * @param       {Object}    data               应用程序的信息
		 * @p-config    {String}    packageUrl      应用注册的自定义前缀，如 xxx:// 就取 xxx
		 * @p-config    {String}    packageName        应用的包名
		 *
		 * @param       {Object}    callbacks       相关回调方法
		 * @p-config    {Function}  fail(resp)      失败
		 * @p-config    {Function}  success(resp)   成功，如果有对应的版本信息，则写入到 resp.version 中
		 * @p-config    {Function}  all(resp)       无论成功失败都会执行的回调
		 */
		WeixinApi.getInstallState = function (data, callbacks) {
			callbacks = callbacks || {};

			WeixinJSBridge.invoke("getInstallState", {
				"packageUrl": data.packageUrl || "",
				"packageName": data.packageName || ""
			}, function (resp) {
				var msg = resp.err_msg, match = msg.match(/state:yes_?(.*)$/);
				if (match) {
					resp.version = match[1] || "";
					callbacks.success && callbacks.success(resp);
				} else {
					callbacks.fail && callbacks.fail(resp);
				}

				callbacks.all && callbacks.all(resp);
			});
		};

		/**
		 * 发送邮件
		 * @param       {Object}  data      邮件初始内容
		 * @p-config    {String}  subject   邮件标题
		 * @p-config    {String}  body      邮件正文
		 *
		 * @param       {Object}    callbacks       相关回调方法
		 * @p-config    {Function}  fail(resp)      失败
		 * @p-config    {Function}  success(resp)   成功
		 * @p-config    {Function}  all(resp)       无论成功失败都会执行的回调
		 */
		WeixinApi.sendEmail = function (data, callbacks) {
			callbacks = callbacks || {};
			WeixinJSBridge.invoke("sendEmail", {
				"title": data.subject,
				"content": data.body
			}, function (resp) {
				if (resp.err_msg === 'send_email:sent') {
					callbacks.success && callbacks.success(resp);
				} else {
					callbacks.fail && callbacks.fail(resp);
				}
				callbacks.all && callbacks.all(resp);
			})
		};

		/**
		 * 开启Api的debug模式，比如出了个什么错误，能alert告诉你，而不是一直很苦逼的在想哪儿出问题了
		 * @param    {Function}  callback(error) 出错后的回调，默认是alert
		 */
		WeixinApi.enableDebugMode = function (callback) {
			/**
			 * @param {String}  errorMessage   错误信息
			 * @param {String}  scriptURI      出错的文件
			 * @param {Long}    lineNumber     出错代码的行号
			 * @param {Long}    columnNumber   出错代码的列号
			 */
			window.onerror = function (errorMessage, scriptURI, lineNumber, columnNumber) {

				// 有callback的情况下，将错误信息传递到options.callback中
				if (typeof callback === 'function') {
					callback({
						message: errorMessage,
						script: scriptURI,
						line: lineNumber,
						column: columnNumber
					});
				} else {
					// 其他情况，都以alert方式直接提示错误信息
					var msgs = [];
					msgs.push("额，代码有错。。。");
					msgs.push("\n错误信息：", errorMessage);
					msgs.push("\n出错文件：", scriptURI);
					msgs.push("\n出错位置：", lineNumber + '行，' + columnNumber + '列');
					alert(msgs.join(''));
				}
			}
		};

})(window);
//
//
//
//
//WeixinApi库结束
//
//
//
//
//
var wxData,wxCallbacksFriend,wxCallbacksTimeline;
function setShre(value){
	if(value == 1){
		wxData = {
			"appId": "", // 服务号可以填写appId
			"imgUrl" : imgUrl,
			"link" : link,
			"desc" : desc,
			"title" : title
		};
	}else{
		wxData = {
			"appId": "", // 服务号可以填写appId
			"imgUrl" : imgUrl,
			"link" : link,
			"desc" : desc,
			"title" : title
		};

	}
	try{
		WeixinApi.shareToFriend(wxData, wxCallbacksFriend);
		WeixinApi.shareToTimeline(wxData, wxCallbacksTimeline);

	}catch(ex){}
};





        // 需要分享的内容，请放到ready里
            WeixinApi.ready(function(Api) {
                // 微信分享的数据
                setShre(1);
                // 分享的回调
                wxCallbacksFriend = {
                    // 收藏操作不执行回调，默认是开启(true)的
					favorite : false,
					// 分享被用户自动取消
					cancel : function(resp) {
						shareTracing(openid,'好友','取消分享',taskname,customer,link);
					},
					// 分享成功
					confirm : function(resp) {
						shareTracing(openid,'好友','分享成功',taskname,customer,link);
						if(fn){fn()};
					}
                };
				wxCallbacksTimeline = {
                    // 收藏操作是否触发回调，默认是开启的
                    favorite : false,
                    // 分享被用户自动取消
                    cancel : function(resp) {
                        shareTracing(openid,'朋友圈','取消分享',taskname,customer,link);
                    },
                    // 分享成功
                    confirm : function(resp) {
                        shareTracing(openid,'朋友圈','分享成功',taskname,customer,link);
						if(fn){fn()};
                    }
                };
				Api.showOptionMenu();
				Api.shareToFriend(wxData, wxCallbacksFriend);
				Api.shareToTimeline(wxData, wxCallbacksTimeline);
            });


	}
}
function shareTracing(openid,type,state,taskname,customer,link){ //追踪分享结果
	$.ajax({
		url : 'http://wesite-analyze.wangfan.com/Addshareinfo.ashx?shareopenid='+openid+'&sharetype='+type+'&sharestate='+state+'&shareterminal='+userAgentIdentify()+'&campaign='+taskname+'&customer='+customer+'&sharepage='+encodeURIComponent(link),
		async: false,
		dataType : 'jsonp',
		jsonpCallback:"jsonpReturnValues",
		success : function(data){
			if(data.result=='success')
			{

			}else{
				return false;
			}
		}
	})
}
function userAgentIdentify(){ //判断终端安卓还是苹果
	var u = navigator.userAgent;
	var cyt_useragent;
	if(u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/)){
		cyt_useragent = 'ios';
	}else if(u.indexOf('Android') > -1 || u.indexOf('Linux') > -1){
		cyt_useragent = 'android';
	}else{
		cyt_useragent = 'others';
	}
	return cyt_useragent;
}
function WXEdition(){ //微信版本判断 套用不同分享方法
	var ua = navigator.userAgent;
	try {
		if(userAgentIdentify()=='ios'){
			var edition_ios = ua.split('MicroMessenger/')[1].split(' ')[0];
			var editionArr_ios = edition_ios.split('.');
			if(editionArr_ios.length<3){
				var newEdition_ios = editionArr_ios[0]*10000+editionArr_ios[1]*1000;
			}else if(editionArr_ios.length==3){
				var newEdition_ios = editionArr_ios[0]*10000+editionArr_ios[1]*1000+editionArr_ios[2]*100;
			}
			if(newEdition_ios>=60200){//新版本微信6.0.2以上
				return true;
			}else{
				return false;
			}
		}else if(userAgentIdentify()=='android'){
			var aaa = ua.split('MicroMessenger/')[1];
			var bbb = aaa.split('_')[0];
			var editionArr = bbb.split('.');
			if(editionArr.length==2){
				var newEdition = editionArr[0]*10000+editionArr[1]*1000;
			}else if(editionArr.length==3){
				var newEdition = editionArr[0]*10000+editionArr[1]*1000+editionArr[2]*100;
			}else if(editionArr.length==4){
				var newEdition = editionArr[0]*10000+editionArr[1]*1000+editionArr[2]*100+editionArr[3]*1;
			}

			if(newEdition>=60258){//新版本微信6.0.2.58以上
				return true;
			}else{
				return false;
			}
		}else{//不是安卓也不是苹果的 都按新版本的微信处理
			return true;
		}
	} catch(e){

	}
}

function WXShareHide(api_url){
	var url = window.location.href;
	if(WXEdition()){//新版本
		$.ajax({
			url:api_url,
			async: false,
			dataType:'jsonp',
			data : {jsapi_url:encodeURIComponent(url)},
			jsonpCallback:"jsonpReturnValues",
			success:function(data){
				wx.config({
					debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
					appId: data.jsonResponse.appid, // 必填，公众号的唯一标识
					timestamp: data.jsonResponse.timestamp, // 必填，生成签名的时间戳
					nonceStr: data.jsonResponse.nonceStr, // 必填，生成签名的随机串
					signature: data.jsonResponse.signature,// 必填，签名，见附录1
					jsApiList: [
						'hideMenuItems'
					  ] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
				})
			},
			complete:function(){
			  wx.ready(function(){
				wx.hideOptionMenu()
			  })
			}
		})
	}else{//旧版本
		/*
		 *	隐藏微信菜单
		*/
		function onBridgeReady(){
			WeixinJSBridge.call('hideOptionMenu');
		}

		if (typeof WeixinJSBridge == "undefined"){
			if( document.addEventListener ){
				document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
			}else if (document.attachEvent){
				document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
				document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
			}
		}else{
			onBridgeReady();
		}
	}

}

// config
try {
	WXShareHide('http://weoper.wangfan.com/mobile.php?act=module&name=yswfcommon&do=ApiJsSignature&weid=33')
} catch(e){

}