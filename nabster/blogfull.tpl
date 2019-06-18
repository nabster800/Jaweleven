<div class="card mb-5 ">
   <div class="card-body">
      [not-group=5]
      <div class="dropdown float-right">
         <button class="text-black-50 btn btn-sm btn-light dropdown-toggle pt-1" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <i class="fa fa-angle-down" aria-hidden="true"></i>
         </button>
         <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2" style="font-size: 90%;">
            [add-favorites]
            <button class="dropdown-item" type="button">Добавить в закладки</button>
            [/add-favorites]
            [del-favorites]
            <button class="dropdown-item" type="button">Удалить из закладок</button>
            [/del-favorites]
            [group=1,2,3]
            <a class="dropdown-item" href="/ndp-nabster.php?mod=editnews&action=editnews&id={news-id}" target="_blank">Редактировать</a>
            [/group]
            [complaint]
            <button class="dropdown-item" type="button">Пожаловаться</button>
            [/complaint]
            [print-link] <button class="dropdown-item" type="button">Распечатать</button> [/print-link]
         </div>
      </div>
      [/not-group]
      <h1 class="text-dark mb-5">[fixed]<span class="badge badge-warning" data-toggle="tooltip" data-placement="top" title="В топе"><i class="fa fa-angle-double-up" aria-hidden="true"></i></span>[/fixed] {title}</h1>
      {full-story} [pages]<br>{pages}[/pages] [poll]{poll}[/poll]
      [edit-date]
      <div class="alert alert-warning mb-0 mt-3 p-2 pl-3 pr-3 f90" role="alert">
         Новость отредактировал: <b>{editor}</b> - {edit-date}<br>
         [edit-reason]Причина: <i>{edit-reason}</i>[/edit-reason]
      </div>
      [/edit-date]
   </div>
   <div class="card-footer">
      <ul class="list-inline m-0 text-muted isize">
         <li class="list-inline-item auth d-none d-sm-inline"> <img src="{foto}" class="sava"> {author}</li>
         <li class="list-inline-item"><i class="zmdi zmdi-calendar-check" style="font-size: 17px;color: #ac92ec8c;vertical-align: middle;"></i> {date=d.m.Y}</li>
         <li class="list-inline-item"><i class="zmdi zmdi-check-all" style="font-size: 17px;color: #4fc1e994;"></i> {views}</li>
         <li class="list-inline-item"><i class="zmdi zmdi-comment-outline" style="color: #F6BB42;"></i> {comments-num}</li>
         <li class="list-inline-item float-right">
            [rating]
            [rating-type-2]
            <a href="#" onclick="doRate('plus', '{news-id}'); return false;">
            <button class="p-0 pl-2 pr-2 btn btn-sm btn-light" aria-pressed="true">
            <i class="fa fa-heart-o text-danger" style="font-weight: bold;"></i>
            {rating}
            </button>
            </a>
            [/rating-type-2]
            [/rating]
         </li>
      </ul>
   </div>
</div>
[related-news]
<div class="row row-flex row-flex-wrap">
   {related-news}
</div>
[/related-news]
<div class="card w-100 mb-5">
   <div class="card-body pb-0">
      <section id="cd-timeline" class="cd-container">
         [not-allow-comm]
         <div class="cd-timeline-block">
            <div class="cd-timeline-img cd-movie">
               <img src="{THEME}/images/gear.svg" alt="Movie" style="background: #fff;" class="fa-spin">
            </div>
            <div class="cd-timeline-content">
               <h2 style="font-weight:normal;">Комментарии к статье отключены администрацией.</h2>
               <p>Комментарии отключены..</p>
            </div>
         </div>
         [/not-allow-comm]
         [not-comments]
         <div class="cd-timeline-block">
            <div class="cd-timeline-img cd-movie">
               <img src="{THEME}/images/gear.svg" alt="Movie" style="background: #fff;" class="fa-spin">
            </div>
            <div class="cd-timeline-content">
               <h2 style="font-weight:normal;">Нет комментариев. %username_login%, не желаешь оставить первый комментарий?</h2>
               <p>Перед публикацией, советую ознакомится с <a href="/index.php?do=rules" target="_blank">правилами!</a></p>
            </div>
         </div>
         {comments}
         [/not-comments]
         [comments]
         {comments}
         {navigation}
         [/comments]
         {addcomments}
      </section>
   </div>
</div>