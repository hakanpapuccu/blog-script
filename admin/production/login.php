<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Yönetim Paneli </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="../../islem.php" method="POST">
              <h1>Giriş Yap</h1>
              <div>
                <input type="text" class="form-control" placeholder="Kullanıcı Adı"  name="kulladi" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Şifre"  name="kullpass" />
              </div>
              <div>
                <button style="width:100%; background-color:#73879C; color:white; " type="submit" name="giris" class="btn btn-default submit">Giriş Yap</button>
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                
                <?php if (isset($_GET['durum'])) {

                   if ($_GET['durum']=="no") { ?>
                  
               <p class="change_link">Kayıt bulunamadı.</p>
            
            <?php } }

              ?>

                

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> hakanpapuccu</h1>
                  <p>©2019 | hakanpapuccu tarafından kodlanmıştır.</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        
      </div>
    </div>
  </body>
</html>
