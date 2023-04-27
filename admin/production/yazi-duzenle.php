<?php 
include "../../baglan.php";
include "header.php"; 
$id=$_GET['id'];
$yazisor=$db->prepare("select * from yazilar where id=?");
$yazisor->execute(array($id));
$yazicek=$yazisor->fetch(PDO::FETCH_ASSOC);

?>
<!-- /top navigation -->

<!-- page content -->

<head>
  <script src="../ckeditor/ckeditor.js" type="text/javascript"></script>
  <link href="../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
</head>
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Yazı Ayarları</h3>
      </div>


    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="col-md-12 col-sm-12 col-xs-12">


          <div class="x_panel">
            <div class="x_title">
              <h2>Yazı Düzenle</h2>

              <div class="clearfix"></div>
            </div>

            <div class="x_content">

              <?php if (isset($_GET['durum'])) {

              if ($_GET['durum']=="ok") { ?>
                <div class="alert alert-success alert-dismissible fade in" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                  </button>
                  <strong>Güncelleme işlemi başarıyla tamamlandı...</strong>
                </div>
              <?php } elseif ($_GET['durum']=="no") { ?>
                <div class="alert alert-danger alert-dismissible fade in" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                  </button>
                  <strong>Güncelleme işlemi başarısız...</strong>
                </div>

              <?php } }?>

              <form action="../../islem.php" method="POST" enctype="multipart/form-data" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                <div class="form-group">
                  <label class="control-label col-md-1 col-sm-1 col-xs-12" for="first-name">Yazı Resmi: <span class="">*</span>
                  </label>
                  <div class="col-md-3 col-sm-3 col-xs-12">
                    <img style="width: 200px;" src="../../img/<?php echo $yazicek['resim']; ?>" alt="<?php echo $yazicek['resim']; ?>">
                    <input type="file" id="first-name" class="form-control col-md-7 col-xs-12" name="resim" >
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-md-1 col-sm-1 col-xs-12">Yazı Kategorisi</label>
                  <div class="col-md-3 col-sm-3 col-xs-12">
                    <select class="select2_single form-control" tabindex="-1" required="" name="kategori">
                      <option></option>
                      
                      <?php
                      $kategorisor=$db->prepare("select * from kategoriler order by kategori_id ASC");
                      $kategorisor->execute();
                      while ($kategoricek=$kategorisor->fetch(PDO::FETCH_ASSOC)) {
                        ?>
                        <option value="<?php echo $kategoricek['kategori_id']; ?>"><?php echo $kategoricek['ad']; ?></option>
                      <?php } ?>

                      </select>
                    </div>
                  </div>

                <div class="form-group">
                  <label class="control-label col-md-1 col-sm-1 col-xs-12" for="first-name">Yazı Başlığı: <span class="required">*</span>
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12" name="baslik" value="<?php echo $yazicek['baslik']; ?>">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-md-1 col-sm-1 col-xs-12" for="first-name">Yazı İçeriği <span class="required">*</span>
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                    <textarea id="editor1" required="required" name="icerik"><?php echo $yazicek['icerik']; ?></textarea>

                    <script>
                      CKEDITOR.replace ('editor1',

                        {filebrowserBrowseUrl : '../../ckfinder/ckfinder.html',
                        filebrowserImageBrowseUrl : '../../ckfinder/ckfinder.html?type=Images',
                        filebrowserFlashBrowseUrl : '../../ckfinder/ckfinder.html?type=Flash',
                        filebrowserUploadUrl : '../../ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
                        filebrowserImageUploadUrl : '../../ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                        filebrowserFlashUploadUrl : '../../ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
                        forcePasteAsPlainText: true}
                       
                       );

                    </script>
                  </div>
                </div>


                

                <div class="form-group">
                  <label class="control-label col-md-1 col-sm-1 col-xs-12" for="first-name">Yazı Etiketleri: <span class="required">*</span>
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12" name="etiket" value="<?php echo $yazicek['etiket']; ?>">
                  </div>
                </div>

                <input type="hidden" name="id" value="<?php echo $yazicek['id']; ?>">

                <div class="form-group">
                  <div class="col-md-1 col-sm-1 col-xs-12 col-md-offset-1">
                    <button type="submit" class="btn btn-success" name="yaziguncelle">Kaydet</button>
                  </div>
                </div>

              </form>


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
<script src="../vendors/select2/dist/js/select2.full.min.js"></script>
  <script>
    $(document).ready(function() {
      $(".select2_single").select2({
        placeholder: "Üst menü seçin",
        allowClear: true
      });
      $(".select2_group").select2({});
      $(".select2_multiple").select2({
        maximumSelectionLength: 4,
        placeholder: "With Max Selection limit 4",
        allowClear: true
      });
    });
  </script>