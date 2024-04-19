<!DOCTYPE html>
<head>

   <tittle>Halaman Login</title>
   <link rel="stylesheet" href="background.css">
   </head>
   <form action="validasi.php" method="POST">
      <h1>Selamat Datang!</h1>
      <div class="kotak">
      <style>
div {
   margin-left: 50px;
  background-color: lightgrey;
  width: 300px;
  border: 15px solid green;
  padding: 50px;
  margin: 20px;
}
</style>
         <table>
            <tr>
               <td>Username</td>
               <td><input type="text" name="username"></td>
            </tr>
            <tr>
               <td>Password</td>
               <td><input type="password" name="password"></td>
            </tr>
            <tr>
               <td colspan="2">
                  <button type="submit">LOGIN</button>
                  <button type="reset">CLEAR</button>
               </td>
            </tr>
         </table>
      </div>
   </form>
</body>
