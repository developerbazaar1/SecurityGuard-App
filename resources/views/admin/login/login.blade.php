@include('layout.login_header')

  <section class="login-background">
    <div class="container login-box">
      <div class="row">
        <div class="col-md-6">
        <section class="login-content">
          <div class="login-img mt-5">
            <img src="assets/images/secuguardimg.png" alt="Girl_with_dog">
          </div>
        </section>
        </div>
        <div class="col-md-6">
          <section class="login-content">
            <div class="login-box">

              <form class="login-form" action="">
                <div class="logo">
                  <img src="assets/images/Raynet-logo.png" alt="">
                </div>
                <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>SIGN IN</h3>
                <div class="form-group">
                  <input class="form-control" type="email" placeholder="Username" autofocus required>
                </div>
                <div class="form-group">
                  <input class="form-control" type="password" placeholder="Password" required>
                </div>

                <div class="form-group btn-container">
                  <button class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw"></i>Login</button>
                </div>
              </form>
            </div>
          </section>
        </div>

      </div>
    </div>
  </section>

@include('layout.login_footer')