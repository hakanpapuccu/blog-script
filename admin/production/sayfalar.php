<?php 
include "../../baglan.php"; 
include "header.php"; 


 $sayfasor=$db->prepare("select * from sayfalar order by id DESC ");
 $sayfasor->execute();

?>


<!-- /top navigation -->

<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Sayfa Ayarları</h3>
      </div>
      
      



    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="col-md-12 col-sm-12 col-xs-12">


          <div class="x_panel">
            <div class="x_title">
              <h2>Sayfalar</h2>

              <div class="clearfix"></div>
            </div>

            <div class="x_content">
              <a href="sayfa-ekle.php" class="btn btn-success" style="margin-bottom:10px;"><i class="fa fa-plus"></i>Yeni Ekle</a>

              <div class="table-responsive">
                <table class="table table-striped jambo_table bulk_action">
                  <thead>
                    <tr class="headings">

                      <th class="column-title">Sayfa İD </th>
                      <th class="column-title">Sayfa Başlığı </th>
                      <th class="column-title">Sayfa Linki </th>
                      <th class="column-title">Sayfa Durumu </th>
                      <th class="column-title"></th>
                      <th class="column-title"></th>
                      
                    </tr>
                  </thead>

                  <tbody>

                    <?php 

                    
                    while ($sayfacek=$sayfasor->fetch(PDO::FETCH_ASSOC)) {


                     ?>
                     <tr class="even pointer">

                      <td class=" "><?php echo $sayfacek['id']; ?></td>
                      <td class=" "><?php echo $sayfacek['baslik']; ?></td>
                      <td class=" "><?php echo seo($sayfacek['baslik']).'/'.$sayfacek['id']; ?></td>
                      <td class=" "><?php echo $sayfacek['durum']; ?></td>
                      
                      <td class=" "><a href="sayfa-duzenle.php?id=<?php echo $sayfacek['id']; ?>"><i class="success fa fa-pencil fa-2x"></i></a></td>

                      <td class=" "><a href="../../islem.php?sayfasil=ok&id=<?php echo $sayfacek['id']; ?>"><i class="success fa fa-close fa-2x" style="color:red;"></i></a></td>
                      
                      
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