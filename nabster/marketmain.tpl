<div class="card text-white bg-puff mb-5 shadow">
   <div class="card-hd">
      <div class="media mb-3">
         <img src="{category-icon}" style="width: 50px;" class="mr-3" alt="...">
         <div class="media-body">
            <h5 class="mt-0 ttle text-truncate"><b>{title limit="33"}</b> <span style="color: #8693a7;" class="ml-3"></span></h5>
            <span style="color: #8693a7;">{link-category}</span>
         </div>
      </div>
   </div>
   <div class="card-body bg-grad">
      <div class="row row-flex row-flex-wrap">
         <div class="col-md-5">
            <div class="w-100 mb-2">
            <a href="{full-link}">
              [ifxfvalue panel="green"]
              <div class="spinner-grow spinner-grow-sm text-success" role="status" style="position: absolute;margin: 10px;">
                <span class="sr-only"></span>
              </div>
              [/ifxfvalue]
              [ifxfvalue panel="yellow"]
              <div class="spinner-grow spinner-grow-sm text-warning" role="status" style="position: absolute;margin: 10px;">
                <span class="sr-only"></span>
              </div>
              [/ifxfvalue]
              [ifxfvalue panel="blue"]
              <div class="spinner-grow spinner-grow-sm text-primary" role="status" style="position: absolute;margin: 10px;">
                <span class="sr-only"></span>
              </div>
              [/ifxfvalue]
              [ifxfvalue panel="red"]
              <div class="spinner-grow spinner-grow-sm text-danger" role="status" style="position: absolute;margin: 10px;">
                <span class="sr-only"></span>
              </div>
              [/ifxfvalue]
                <img class="img-fluid rounded mb-3 mb-md-0 w-100" src="{image-1}" alt="{title}">
            </a>
            </div>
         </div>
         <div class="col-md-7">
            <div class="cardl w-100 mb-2">
               <div class="mdl mb-3"><i class="icon-settings mr-2"></i>Описание</div>
               <p class="shlnk">{short-story limit="130"}</p>
               [edit-date]<div class="mdl mb-3"><i class="icon-refresh mr-2"></i>Обновление</div>
               <p class="shlnk">Последнее обновление: {edit-date}</p>[/edit-date]
            </div>
         </div>
      </div>
      [xfgiven_stoimost]
       <div class="price-tag mt-4 text-light float-right">
        <i class="fa fa-eur mr-2" aria-hidden="true"></i>[xfvalue_stoimost]
       </div>[/xfgiven_stoimost]
      <a href="{full-link}" class="btn btn-info mt-4 popup-content">Подробнее</a>
   </div>
</div>