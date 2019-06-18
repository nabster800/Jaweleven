<script>
   jQuery(document).ready(function($) {
       $('#skrinshoty').magnificPopup({
    delegate: 'a',
    type: 'image',
    tLoading: '...',
    gallery: {
        enabled: true,
        navigateByImgClick: true,
        preload: [0, 1]
    }
    });
    if (!$('#skrinshoty').find('div.item').length) {
     $('#ggwp').hide();
    }
   });
   
</script>
<div class="card text-white bg-puff mb-5 shadow">
   <div class="card-hd">
      <div class="media mb-3">
         <img src="https://image.flaticon.com/icons/svg/619/619928.svg" style="width: 25px;" class="mr-3" alt="...">
         <div class="media-body">
            [xfgiven_stoimost]
            <div class="price-tag float-right">
               <i class="fa fa-rub mr-2" aria-hidden="true"></i> [xfvalue_stoimost]
            </div>
            [/xfgiven_stoimost]
            [catlist=74,75,76,77]<span class="badge badge-warning text-dark float-right" [category=74,75,76,77]style="display:none;"[/category]><i class="fa fa-usd" aria-hidden="true"></i> Платно</span>[/catlist]
            <h5 class="mt-0 ttle text-truncate" style="font-size: 1.2rem;">{title}</h5>
            <span style="color: #8693a7;">[xfvalue_tematika]</span>
         </div>
      </div>
   </div>
   <div class="card-body bg-grad">
      <div class="main-content">
         <div class="owl-carousel owl-theme" id="skrinshoty">
            {poster}
         </div>
         <div class="owl-theme" id="ggwp">
            <div class="owl-controls">
               <div class="custom-nav owl-nav"></div>
            </div>
         </div>
      </div>
      <div class="row row-flex row-flex-wrap">
         <div class="col-md-12">
            <div class="cardl w-100 mb-4">
               <div class="media">
                  <i class="icon-info mr-2" style="color: #747dca;font-size: 1.5rem;"></i>
                  <div class="media-body">
                     <h5 class="mt-0 text-light">Информация</h5>
                     <span class="no-img">{full-story}</span>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-6">
            <div class="cardl w-100 mb-4">
               <h5 class="mt-0 text-light">Публикация</h5>
               <ul class="list-unstyled lne m-0">
                  <li><i class="zmdi zmdi-calendar-check" style="font-size: 17px;color: #ac92ec8c;vertical-align: middle;"></i> Опубликовано <span class="float-right"> {date} </span></li>
                  <li class="auth"><i class="zmdi zmdi-account" style="font-size: 17px;color: #ac92ec8c;vertical-align: middle;"></i> Автор публикации <span class="float-right"><img src="{foto}" class="sava"> {author} </span></li>
                  <li><i class="zmdi zmdi-comment-outline" style="color: #F6BB42;"></i> Комментариев <span class="float-right"> {comments-num} </span></li>
                  <li><i class="zmdi zmdi-check-all" style="font-size: 17px;color: #4fc1e994;"></i> Просмотров <span class="float-right"> {views} </span></li>
               </ul>
            </div>
         </div>
         <div class="col-md-6">
            <div class="cardl w-100 mb-4">
               <h5 class="mt-0 text-light">Контакты</h5>
               <ul class="list-unstyled lne m-0">
                  [xfgiven_vk]
                  <li>ВК <span class="float-right"> [xfvalue_vk] </span></li>
                  [/xfgiven_vk]
                  [xfgiven_e-mail]
                  <li>Почта <span class="float-right"> [xfvalue_e-mail]</span></li>
                  [/xfgiven_e-mail]
                  [xfgiven_skype]
                  <li>Skype <span class="float-right"> [xfvalue_skype]</span></li>
                  [/xfgiven_skype]
                  [xfgiven_telegram]
                  <li>Телеграм <span class="float-right"> [xfvalue_telegram] </span></li>
                  [/xfgiven_telegram]
                  [xfgiven_prochaya-svyaz]
                  <li>Прочая связь <span class="float-right"> [xfvalue_prochaya-svyaz]</span></li>
                  [/xfgiven_prochaya-svyaz]
               </ul>
            </div>
         </div>
      </div>
      <div class="row row-flex row-flex-wrap">{include file="engine/modules/marketplace/marketplace_products.php?products=[xfvalue_marketplace]"}</div>
      <div class="alert alert-warning m-0" role="alert" style="opacity:0.7;">
         Администрация сайта за проданный товар ответственность не несет. В случае каких либо ситуаций все притензии высказываются напрямую продавцу.
      </div>
   </div>
</div>
<div class="card mb-5">
   <div class="card-body nad">
      <button onclick="history.back();return false;" class="btn btn-secondary btn-sm"><i class="fa fa-reply-all" aria-hidden="true" style="color: #8CC152;"></i> Вернуться назад</button>
      [add-favorites]
      <button type="button" class="btn btn-secondary btn-sm" data-toggle="tooltip" title="Добавить в закладки"><i class="fa fa-star-o" aria-hidden="true" style="color: #60b8e8;
         font-weight: bold;"></i></button>
      [/add-favorites]
      [del-favorites]
      <button type="button" class="btn btn-secondary btn-sm" data-toggle="tooltip" title="Статья сохраненра в закладках. Желаете удалить?"><i class="fa fa-star" aria-hidden="true" style="color: #60b8e8;
         font-weight: bold;"></i></button>
      [/del-favorites]
      [edit]
      <button type="button" class="btn btn-secondary btn-sm" data-toggle="tooltip" title="Редактировать"><i class="fa fa-pencil" aria-hidden="true"></i></button>
      [/edit]
      <div class="share float-right" style="margin: 2px 0px 0 0;">
         <script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
         <script src="//yastatic.net/share2/share.js"></script>
         <div class="ya-share2" data-services="vkontakte,facebook,twitter,whatsapp,skype"></div>
      </div>
   </div>
</div>
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
               <h2 style="font-weight:normal;">Нет комментариев. Не желаешь оставить первый комментарий?</h2>
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