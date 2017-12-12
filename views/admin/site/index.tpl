<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="{{$url.static}}/H-ui.admin/favicon.ico" >
<link rel="Shortcut Icon" href="{{$url.static}}/H-ui.admin/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="{{$url.static}}/H-ui.admin/lib/html5shiv.js"></script>
<script type="text/javascript" src="{{$url.static}}/H-ui.admin/lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="{{$url.static}}/H-ui.admin/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="{{$url.static}}/H-ui.admin/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="{{$url.static}}/H-ui.admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="{{$url.static}}/H-ui.admin/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="{{$url.static}}/H-ui.admin/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="{{$url.static}}/H-ui.admin/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>后台管理 H-ui.admin v3.1</title>
<meta name="keywords" content="H-ui.admin v3.1,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.1，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<header class="navbar-wrapper">
  <div class="navbar navbar-fixed-top">
    <div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="/">后台管理 H-ui.admin</a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/">H-ui</a>
      <span class="logo navbar-slogan f-l mr-10 hidden-xs">v3.1</span>
      <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667; aaaaaa</a>
      <nav class="nav navbar-nav">
        <ul class="cl">
          {{*<li class="dropDown dropDown_hover"><a href="javascript:;" class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> 新增 <i class="Hui-iconfont">&#xe6d5;</i></a>
            <ul class="dropDown-menu menu radius box-shadow">
              <li><a href="javascript:;" onclick="article_add('添加资讯','article-add.html')"><i class="Hui-iconfont">&#xe616;</i> 资讯</a></li>
              <li><a href="javascript:;" onclick="picture_add('添加资讯','picture-add.html')"><i class="Hui-iconfont">&#xe613;</i> 图片</a></li>
              <li><a href="javascript:;" onclick="product_add('添加资讯','product-add.html')"><i class="Hui-iconfont">&#xe620;</i> 产品</a></li>
              <li><a href="javascript:;" onclick="member_add('添加用户','member-add.html','','510')"><i class="Hui-iconfont">&#xe60d;</i> 用户</a></li>
            </ul>
          </li>*}}
          {{*<li class="dropDown dropDown_hover">
            <a href="javascript:;" class="dropDown_A">工具 <i class="Hui-iconfont">&#xe6d5;</i></a>
            <ul class="dropDown-menu menu radius box-shadow">
              <li>
                <a href="http://www.h-ui.net/bug.shtml" target="_blank">Bug兼容性汇总</a>
              </li>
              <li>
                <a href="http://www.h-ui.net/websafecolors.shtml" target="_blank">web安全色</a>
              </li>
              <li>
                <a href="http://www.h-ui.net/Hui-3.7-Hui-iconfont.shtml" target="_blank">Hui-iconfont</a>
              </li>
              <li>
                <a href="javascript:;">web工具箱<i class="arrow Hui-iconfont">&#xe6d7;</i></a>
                <ul class="menu">
                  <li>
                    <a href="http://www.h-ui.net/tools/jsformat.shtml" target="_blank">JS/HTML格式化工具</a>
                  </li>
                  <li>
                    <a href="http://www.h-ui.net/tools/HTMLtoJS.shtml" target="_blank">HTML/JS转换工具</a>
                  </li>
                  <li>
                    <a href="http://www.h-ui.net/tools/cssformat.shtml" target="_blank">CSS代码格式化工具</a>
                  </li>
                  <li>
                    <a href="http://www.h-ui.net/tools/daxiaoxie.shtml" target="_blank">字母大小写转换工具</a>
                  </li>
                  <li>
                    <a href="http://www.h-ui.net/tools/fantizhuanhuan.shtml" target="_blank">繁体字、火星文转换</a>
                  </li>
                  <li>
                    <a href="javascript:;">三级菜单<i class="arrow Hui-iconfont">&#xe6d7;</i></a>
                    <ul class="menu">
                      <li>
                        <a href="javascript:;">四级菜单</a>
                      </li>
                      <li>
                        <a href="javascript:;">四级菜单</a>
                      </li>
                      <li>
                        <a href="javascript:;">四级菜单</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">三级导航</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="#">二级导航</a>
              </li>
              <li class="disabled">
                <a href="javascript:;">二级菜单</a>
              </li>
            </ul>
          </li>*}}
        </ul>
      </nav>
    <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
      <ul class="cl">
        <li>{{$userInfo.role}}</li>
        <li class="dropDown dropDown_hover">
          <a href="#" class="dropDown_A">{{$userInfo.name}} <i class="Hui-iconfont">&#xe6d5;</i></a>
          <ul class="dropDown-menu menu radius box-shadow">
            <li><a href="javascript:;" onClick="myselfinfo({{$userInfo.id}})">个人信息</a></li>
            {{*<li><a href="#">切换账户</a></li>*}}
            <li><a href="/site/logout">退出</a></li>
          </ul>
        </li>
        {{*<li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
        <li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
          <ul class="dropDown-menu menu radius box-shadow">
            <li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
            <li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
            <li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
            <li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
            <li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
            <li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
          </ul>
        </li>*}}
      </ul>
    </nav>
  </div>
</div>
</header>
<aside class="Hui-aside">
  <div class="menu_dropdown bk_2">
    {{foreach $menu as $_m}}
    <dl id="menu-article">
      <dt><i class="Hui-iconfont">&#xe616;</i> {{$_m.label}}<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
      <dd>
        <ul>
          {{foreach $_m.items as $_m1}}
          <li><a data-href="{{$_m1.url.0}}" data-title="{{$_m1.label}}" href="javascript:void(0)">{{$_m1.label}}</a></li>
          {{/foreach}}
        </ul>
      </dd>
    </dl>
    {{/foreach}}
</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
  <div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
    <div class="Hui-tabNav-wp">
      <ul id="min_title_list" class="acrossTab cl">
        <li class="active">
          <span title="我的桌面" data-href="/admin_system/site/main">我的桌面</span>
          <em></em></li>
    </ul>
  </div>
    <div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
</div>
  <div id="iframe_box" class="Hui-article">
    <div class="show_iframe">
      <div style="display:none" class="loading"></div>
      <iframe scrolling="yes" frameborder="0" src="/admin_system/site/main"></iframe>
  </div>
</div>
</section>

<div class="contextMenu" id="Huiadminmenu">
  <ul>
    <li id="closethis">关闭当前 </li>
    <li id="closeall">关闭全部 </li>
</ul>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="{{$url.static}}/H-ui.admin/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="{{$url.static}}/H-ui.admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="{{$url.static}}/H-ui.admin/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="{{$url.static}}/H-ui.admin/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="{{$url.static}}/H-ui.admin/lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>
<script type="text/javascript">
$(function(){
  /*$("#min_title_list li").contextMenu('Huiadminmenu', {
    bindings: {
      'closethis': function(t) {
        console.log(t);
        if(t.find("i")){
          t.find("i").trigger("click");
        }
      },
      'closeall': function(t) {
        alert('Trigger was '+t.id+'\nAction was Email');
      },
    }
  });*/
});
/*个人信息*/
{{*function myselfinfo(){
  layer.open({
    type: 1,
    area: ['300px','200px'],
    fix: false, //不固定
    maxmin: true,
    shade:0.4,
    title: '查看信息',
    content: '<div>管理员信息</div>'
  });
}*}}
function myselfinfo(id){
  layer_show('查看信息','/admin/user/update?id='+id,'','500');
}

/*资讯-添加*/
function article_add(title,url){
  var index = layer.open({
    type: 2,
    title: title,
    content: url
  });
  layer.full(index);
}
/*图片-添加*/
function picture_add(title,url){
  var index = layer.open({
    type: 2,
    title: title,
    content: url
  });
  layer.full(index);
}
/*产品-添加*/
function product_add(title,url){
  var index = layer.open({
    type: 2,
    title: title,
    content: url
  });
  layer.full(index);
}
/*用户-添加*/
function member_add(title,url,w,h){
  layer_show(title,url,w,h);
}


</script>

</body>
</html>