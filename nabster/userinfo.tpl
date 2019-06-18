<div class="row">
   <div class="col-md-3">
      <div class="card mb-5">
         <div class="card-body">
            <img src="{foto}{uniqid}" alt="{Usertitle}" class="w-100">
         </div>
      </div>
      <div class="card mb-5">
         <div class="list-group list-group-flush">
            [not-group=5]{pm}[/not-group]
            [not-logged]<button type="button" data-toggle="modal" data-target="#setting" class="list-group-item list-group-item-action"> <i class="icon-settings mr-2"></i> Настройки </button>[/not-logged]
            <a href="/index.php?subaction=allnews&amp;user={usertitle}" class="list-group-item list-group-item-action"><i class="icon-book-open mr-2"></i> Публикации</a>
            <a href="/index.php?do=lastcomments&userid={usrid}" class="list-group-item list-group-item-action"><i class="icon-bubbles mr-2"></i> Комментарии</a>
         </div>
      </div>
      <div class="media mb-5 rounded" style="background: #fff;padding: 1rem;">
         <i class="icon-bubbles align-self-center mr-3" style="font-size: 2rem;color: #000;"></i>
         <div class="media-body">
            <h5 class="mt-0 f90">[declination={comm-num}]Комментари|й|ев[/declination]</h5>
            {comm-num}
         </div>
      </div>
      <div class="media mb-5 rounded" style="background: #fff;padding: 1rem;">
         <i class="icon-book-open align-self-center mr-3" style="font-size: 2rem;color: #000;"></i>
         <div class="media-body">
            <h5 class="mt-0 f90">[declination={news-num}]Публикаци|я|й[/declination]</h5>
            {news-num}
         </div>
      </div>
      <div class="media mb-5 rounded" style="background: #fff;padding: 1rem;">
         <i class="icon-star align-self-center mr-3" style="font-size: 2rem;color: #000;"></i>
         <div class="media-body">
            <h5 class="mt-0 f90">Рейтинг</h5>
            {rate}
         </div>
      </div>
   </div>
   <div class="col-md-9">
      <div class="card mb-5">
         <div class="card-body">
            [online]
            <div class="spinner-grow spinner-grow-sm text-success float-right" role="status">
               <span class="sr-only"></span>
            </div>
            [/online]
            [offline]
            <div class="float-right f90" style="color: #c5c5da;"> Был на сайте: {lastdate} </div>
            [/offline]
            <h5 class="card-title"><span class="text-muted mr-2">Пользователь</span> {Usertitle}</h5>
            <p class="text-primary">@{fullname}[not-fullname]Без имени[/not-fullname]</p>
            [info]
            <div class="arrow_box f90" style="color: #898b96;">{info}</div>
            [/info]
         </div>
         [signature]
         <div class="card-footer">
            <span class="text-muted mr-2"><i class="icon-pencil mr-1"></i>Моя подпись:</span> {signature}
         </div>
         [/signature]
      </div>
      [not-logged]
      <div class="modal fade" id="setting" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Настройки профиля</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="fullname">Ваше имя</label>
                           <input type="text" name="fullname" id="fullname" value="{fullname}" class="form-control">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="email">Ваш E-mail</label>
                           <input type="email" name="email" id="email" value="{editmail}" class="form-control" required>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="land">Место проживания</label>
                           <input type="text" name="land" id="land" value="{land}" class="form-control">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label>Часовой пояс</label>
                           {timezones}
                        </div>
                     </div>
                  </div>
                  <br>
                  <div class="row">
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="altpass">Старый пароль</label>
                           <input type="password" name="altpass" id="altpass" class="form-control">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="password1">Новый пароль</label>
                           <input type="password" name="password1" id="password1" class="form-control">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="password2">Повторите новый пароль</label>
                           <input type="password" name="password2" id="password2" class="form-control">
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <div class="form-group mb-3" style="background: #ebedf2;padding: 1rem;">
                           <label for="image">Загрузите аватар</label>
                           <input type="file" name="image" id="image" class="wide">
                           <div class="custom-control custom-switch mt-2">
                              <input type="checkbox" class="custom-control-input" name="del_foto" id="del_foto" value="yes">
                              <label class="custom-control-label" for="del_foto">Удалить аватар</label>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="info">О себе</label>
                           <textarea name="info" id="info" rows="5" class="form-control">{editinfo}</textarea>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="signature">Подпись</label>
                           <textarea name="signature" id="signature" rows="3" class="form-control">{editsignature}</textarea>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="signature">Список игнорируемых пользователей:</label>
                           {ignore-list}
                        </div>
                     </div>
                     <div class="col-md-12">
                        <table class="table table-bordered" style="width:100%">
                           {xfields}
                        </table>
                     </div>
                     <div class="col-md-12 f90">
                        <div>{news-subscribe}</div>
                        <div>{comments-reply-subscribe}</div>
                        <div>{unsubscribe}</div>
                     </div>
                  </div>
               </div>
               <div class="modal-footer">
                  <button class="btn btn-primary" name="submit" type="submit">Сохранить</button>
                  <input name="submit" type="hidden" id="submit" value="submit">
               </div>
            </div>
         </div>
      </div>
      [/not-logged]
      <div class="card mb-5">
         <div class="card-body">
            <table class="table table-hover mb-0 f90 text-muted">
               <tbody>
                  <tr>
                     <td style="border:0px;"> Имя/Ник</td>
                     <td style="border:0px;">[fullname]{fullname}[/fullname][not-fullname]<i>Не указано</i>[/not-fullname]</td>
                  </tr>
                  <tr>
                     <td> Группа</td>
                     <td>{status}</td>
                  </tr>
                  <tr>
                     <td> Место жительства</td>
                     <td>[land]{land}[/land][not-land]<i>Не указано</i>[/not-land]</td>
                  </tr>
                  <tr>
                     <td> Дата регистрации</td>
                     <td>{registration}</td>
                  </tr>
                  <tr>
                     <td> Последняя активность</td>
                     <td>{lastdate}</td>
                  </tr>
                  <tr>
                     <td> Web сайт</td>
                     <td>[xfvalue_web-site][xfnotgiven_web-site]<i>Не указано</i>[/xfnotgiven_web-site]</td>
                  </tr>
                  <tr>
                     <td>E-mail</td>
                     <td>{editmail}</td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>
   </div>
</div>