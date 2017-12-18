{{extends file='index.tpl'}}

{{block name=blogmain}}
<div class="blog-post">
    <h2 class="blog-post-title">{{$post->title}}</h2>
    <p class="blog-post-meta">{{$post->created_at}} by {{$post->user->username}}</p>
    <p class="blog-post-meta">分类: <a href="/blog/default/catalog?id={{$post->catalog->id}}&surname={{$post->catalog->title}}">{{$post->catalog->title}}</a></p>

    {{$post->content}}
</div>
<nav>
    <ul class="pager">
      <li><a href="#">Previous</a></li>
      <li><a href="#">Next</a></li>
    </ul>
</nav>
{{/block}}