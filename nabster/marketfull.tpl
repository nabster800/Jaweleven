<script>
   jQuery(document).ready(function($) {
       $('#gallery').magnificPopup({
    delegate: 'a',
    type: 'image',
    tLoading: '...',
    gallery: {
        enabled: true,
        navigateByImgClick: true,
        preload: [0, 1]
    }
    });
    if (!$('#gallery').find('div.item').length) {
     $('#ggwp').hide();
    }
   });
</script>
<div class="card text-white bg-puff mb-5 shadow">
   <div class="card-hd">
      <div class="media mb-3">
         <img src="{category-icon}" style="width: 50px;" class="mr-3" alt="...">
         <div class="media-body">
            <h5 class="mt-0 ttle text-truncate"><b>{title limit="33"}</b> <span style="color: #8693a7;" class="ml-3"></span></h5>
            <span style="color: #8693a7;">{full-story limit="45"} ...</span>
         </div>
      </div>
   </div>
   <div class="card-body bg-grad">
      <div class="row row-flex row-flex-wrap">
         <div class="col-md-6">
            <div class="w-100 mb-2">
               <ul class="list-unstyled iff m-0">
                   <li class="text-truncate"><i class="icon-check mr-2"></i> Категория <span class="float-right">{link-category}</span></li>
                  <li class="text-truncate"><i class="icon-check mr-2"></i> Опубликовал <span class="float-right">{author}</span></li>
                  <li class="text-truncate"><i class="icon-check mr-2"></i> Дата публикации <span class="float-right">{date=d.m.Y}</span></li>
                  <li class="text-truncate"><i class="icon-check mr-2"></i> Отзывов <span class="float-right">{comments-num}</span></li>
                  <li class="text-truncate"><i class="icon-check mr-2"></i> Просмотров <span class="float-right">{views}</span></li>
               </ul>
            </div>
         </div>
         <div class="col-md-6">
            <div class="cardl w-100 mb-2">
               <div class="mdl mb-3"><i class="icon-settings mr-2"></i>Информация</div>
               <p class="shlnk">[xfvalue_dopolnenie]</p>
               [edit-date]<div class="mdl mb-3"><i class="icon-refresh mr-2"></i>Обновление</div>
               <p class="shlnk">Последнее обновление: {edit-date}</p>[/edit-date]
            </div>
         </div>
         <div class="col-md-12">
            <div class="cardl w-100 mt-2">
               <div class="mdl mb-3"><i class="icon-graduation mr-2"></i>Описание</div>
               <p class="shlnk">{full-story}</p>
            </div>
         </div>
      </div>
      <div class="cardl w-100 mt-2" id="ggwp">
         <div class="main-content">
            <div class="owl-carousel owl-theme" id="gallery">
               {poster}
            </div>
            <div class="owl-theme" id="ggwp">
               <div class="owl-controls">
                  <div class="custom-nav owl-nav"></div>
               </div>
            </div>
         </div>
      </div>
[xfgiven_youtube]<div class="media cardl w-100 mt-2 er">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/[xfvalue_youtube]" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
[/xfgiven_youtube]
[group=5]
<div class="media cardl w-100 mt-2 er">
  <i class="align-self-center icon-user mr-3" style="color: #fec15e;text-shadow: 2px 1px 25px rgba(254, 193, 94, 0.6);font-size: 2rem;"></i>
  <div class="media-body">
    <h5 class="mt-0"><span class="masha_index masha_index34" rel="34"></span>Привет гость!</h5><span class="masha_index masha_index35" rel="35"></span>
    Для того чтобы Заказать, купить или скачать вам необходимо зарегестрироватся !
  </div>
</div>
[/group]
[xfgiven_stoimost]
<div class="price-tag mt-4 text-light float-right">
 <i class="fa fa-eur mr-2" aria-hidden="true"></i>[xfvalue_stoimost]
</div>
[/xfgiven_stoimost]
[not-group=5][xfgiven_pay]<a href="[xfvalue_pay]" class="btn btn-info mt-4 popup-content">[xfvalue_button]</a> [/xfgiven_pay][/not-group]
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