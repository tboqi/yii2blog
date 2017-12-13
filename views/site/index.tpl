<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">

    <title>{{$title}}</title>

    <!-- Bootstrap core CSS -->
    <link href="{{$url.static}}/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="{{$url.static}}/bootstrap/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/blog.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="{{$url.static}}/bootstrap/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="{{$url.static}}/bootstrap/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
          {{*<a class="blog-nav-item active" href="#">Home</a>*}}
          {{foreach $mainMenu as $m}}
          <a class="blog-nav-item{{if $m.active}} active{{/if}}" href="{{$m.url}}">{{$m.label}}</a>
          {{/foreach}}
        </nav>
      </div>
    </div>

    <div class="container">
      <div class="blog-header">
        <h1 class="blog-title">{{$title}}</h1>
        {{*<p class="lead blog-description">The official example template of creating a blog with Bootstrap.</p>*}}
      </div>
      <div class="row">
        <div class="col-sm-8 blog-main">
          {{foreach $posts as $post}}
          <div class="blog-post">
            <h2 class="blog-post-title">{{$post->title}}</h2>
            <p class="blog-post-meta">
              {{$post->created_at}} {{$post->user->username}} {{$post->user->username}} 阅读{{$post->click}}次
              <a href="/site/catalog?id={{$post->catalog->id}}&surname={{$post->catalog->title}}">{{$post->catalog->title}}</a>
              评论{{$post->commentsCount}}条
              {{foreach $post->tags as $tag}}
              <a href="/site/index?tag={{$tag}}">{{$tag}}</a>

              {{/foreach}}
            </p>

            {{$post->content}}
          </div><!-- /.blog-post -->
          {{/foreach}}

          <nav>
            {{$pagination}}
          </nav>

        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
          <div class="sidebar-module">
            <h4>标签云</h4>
            <ol class="list-unstyled">
              {{foreach $tags as $tagname => $tagid}}
              <li><a href="/site/index?tag={{$tagname}}">{{$tagname}}</a></li>
              {{/foreach}}
            </ol>
          </div>
          <div class="sidebar-module">
            <h4>最新博文</h4>
            <ol class="list-unstyled">
              {{foreach $recentPosts as $post}}
              <li><a href="/blog/default/view?id={{$post->id}}">{{$post->title}}</a></li>
              {{/foreach}}
            </ol>
          </div>
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
      <p>Blog template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"></script>
    <script>window.jQuery || document.write('<script src="{{$url.static}}/bootstrap/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="{{$url.static}}/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="{{$url.static}}/bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
