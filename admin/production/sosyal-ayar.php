<?php 
include "../../baglan.php"; 
include "header.php"; 
 

 $sosyalsor=$db->prepare("select * from sosyal");
 $sosyalsor->execute();
 





?>


<!-- /top navigation -->

<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Ayarlar</h3>
      </div>
      
      <div class="title_right">
        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">

          <form action="" method="POST">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Ara..." name="aranan">
              <span class="input-group-btn">
                <button class="btn btn-default" type="submit" name="arama">Ara</button>
              </span>
            </div>
          </form>
        </div>
      </div>   



    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="col-md-12 col-sm-12 col-xs-12">


          <div class="x_panel">
            <div class="x_title">
              <h2>Sosyal Medya Ayatrları</h2>

              <div class="clearfix"></div>
            </div>

            <div class="x_content">
              <a href="sosyal-ekle.php" class="btn btn-success" style="margin-bottom:10px;"><i class="fa fa-plus"></i>Yeni Ekle</a>

              <div class="table-responsive">
                <table class="table table-striped jambo_table bulk_action">
                  <thead>
                    <tr class="headings">

                      <th class="column-title">İD </th>
                      <th class="column-title">Bağlantı Adı </th>
                      <th class="column-title">Bağlantı Linki</th>
                      <th class="column-title">Bağlantı İkonu </th>
                      <th class="column-title"></th>
                      <th class="column-title"></th>
                      
                    </tr>
                  </thead>

                  <tbody>

                    <?php 

                    
                    while ($sosyalcek=$sosyalsor->fetch(PDO::FETCH_ASSOC)) {


                     ?>
                     <tr class="even pointer">

                      <td class=" "><?php echo $sosyalcek['id']; ?></td>
                      <td class=" "><?php echo $sosyalcek['ad']; ?></td>
                      <td class=" "><?php echo $sosyalcek['link']; ?></td>
                      <td class=" "><?php echo $sosyalcek['ikon']; ?></td>
                      
                      <td class=" "><a href="sosyal-duzenle.php?id=<?php echo $sosyalcek['id']; ?>"><i class="success fa fa-pencil fa-2x"></i></a></td>

                      <td class=" "><a href="../../islem.php?sosyalsil=ok&id=<?php echo $sosyalcek['id']; ?>"><i class="success fa fa-close fa-2x" style="color:red;"></i></a></td>
                      
                      
                    </tr>

                  <?php } ?>

                  

                </tbody>
              </table>

              
            </div>




          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<!-- /page content -->

<!-- footer content -->
<?php include "footer.php"; ?>