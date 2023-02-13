<?php
if ((!isset($_COOKIE['auth'])) || ($_COOKIE['auth'] !== "36e681f8154d9445b699030ca77f38a8b4666d070c879bb4f51f1da69618ac2b")) {
  header('Location: /');
  exit();
}
?>
<!DOCTYPE html>
<html>
  <head>
    <title>The Matrix</title>
  </head>
  <body>
    <h1>Welcome treasure_hunter !</h1>
    profile : <a href="/a9e7a8af89a3e21f6b9ed2fc082a3bf5959de96015da2ab4d571b611398c0677/profile">profile</a>
  </body>
</html>
