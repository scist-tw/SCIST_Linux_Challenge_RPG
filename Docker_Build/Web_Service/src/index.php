<?php
if (isset($_COOKIE['auth']) && ($_COOKIE['auth'] === "36e681f8154d9445b699030ca77f38a8b4666d070c879bb4f51f1da69618ac2b")) {
  header('Location: profile.php');
  exit();
}
if (isset($_POST['username']) && isset($_POST['password'])) {
  if ($_POST['username'] === "treasure_hunter" && $_POST['password'] === "1337") {
    setcookie('auth', "36e681f8154d9445b699030ca77f38a8b4666d070c879bb4f51f1da69618ac2b");
    header('Location: profile.php');
    exit();
  }
}
if (isset($_COOKIE['auth'])) {
  unset($_COOKIE['auth']);
  setcookie('auth', null, -1, '/');
}
?>
<!DOCTYPE html>
<html>
  <head>
    <title>The Matrix</title>
  </head>
  <body>
    <h1>The Matrix</h1>
    <form action="index.php" method="post">
      username : <input type="text" name="username">
      password : <input type="password" name="password">
      <input type="submit" value="Login !">
    </form>
    <button hidden>SCIST{The devil is in the details ##}</button>
  </body>
</html>
