<html>
   <head>
      <title>Menampilkan Data Tabel MySQL Dengan mysqli_fetch_array</title>
      <style>
         body {font-family:tahoma, arial}
         table {border-collapse: collapse}
         th, td {font-size: 13px; border: 1px solid #DEDEDE; padding: 3px 5px; color: #303030}
         th {background: #CCCCCC; font-size: 12px; border-color:#B0B0B0}
      </style>
   </head>
   <body>
      <h3>Tabel Customer (mysqli_fetch_array)</h3>
      <table>
         <thead>
            <tr>
               <th>ID Customer</th>
               <th>Nama Customer</th>
            </tr>
         </thead>
         <?php
            include 'koneksi.php';     
            $sql = 'SELECT  * FROM customer';
            $query = mysqli_query($conn, $sql);    
            while ($row = mysqli_fetch_array($query))
            {
               ?>
         <tbody>
            <tr>
               <td><?php echo $row['ID_CUSTOMER'] ?></td>
               <td><?php echo $row['NAMA_CUSTOMER'] ?></td>
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>
      <h3>Tabel Barang (mysqli_fetch_row)</h3>
      <table>
         <thead>
            <tr>
               <th>ID Barang</th>
               <th>Nama Barang</th>
               <th>Harga Barang</th>
               <th>Qty</th>
            </tr>
         </thead>
         <?php
            $sql = 'SELECT  * FROM barang';
            $query = mysqli_query($conn, $sql);    
            while ($row = mysqli_fetch_array($query))
            {
               ?>
         <tbody>
            <tr>
               <td><?php echo $row[0] ?></td>
               <td><?php echo $row[1] ?></td>
               <td><?php echo $row[2] ?></td>
               <td><?php echo $row[3] ?></td>
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>
      </table>
      <h3>Inner Join (mysqli_fetch_assoc)</h3>
      <h4> (menampilkan semua data pelanggan dari tabel pelanggan yang melakukan Pesanan)</h4>
      <table>
         <thead>
            <tr>
               <th>ID Customer</th>
               <th>Nama </th>
               <th>Tgl Transaksi</th>
               <th>Total Harga</th>
            </tr>
         </thead>
         <?php
            $sql = 'SELECT pl.ID_CUSTOMER, NAMA_CUSTOMER, TGL_TRANSAKSI, TOTAL_HARGA
            FROM customer pl
            JOIN transaksi pn USING(ID_CUSTOMER)';
            $query = mysqli_query($conn, $sql);    
            while ($row = mysqli_fetch_assoc($query))
            {
               ?>
         <tbody>
            <tr>
               <td><?php echo $row['ID_CUSTOMER'] ?></td>
               <td><?php echo $row['NAMA_CUSTOMER'] ?></td>
               <td><?php echo $row['TGL_TRANSAKSI'] ?></td>
               <td><?php echo $row['TOTAL_HARGA'] ?></td>
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>
      </table>
      </table>
      <h3>left outer Join </h3>
      <h4> (manampilkan semua data pelanggan dari tabel pelanggan beserta data transaksinya dari tabel penjulan )</h4>
      <table>
         <thead>
            <tr>
               <th>ID Customer</th>
               <th>Nama </th>
               <th>Tgl transaksi</th>
               <th>Total harga</th>
            </tr>
         </thead>
         <?php
            $sql = 'SELECT pl.ID_CUSTOMER, NAMA_CUSTOMER, TGL_TRANSAKSI, TOTAL_HARGA
            FROM customer pl
            LEFT JOIN transaksi USING(ID_CUSTOMER)';
            $query = mysqli_query($conn, $sql);    
            while ($row = mysqli_fetch_assoc($query))
            {
               ?>
         <tbody>
            <tr>
               <td><?php echo $row['ID_CUSTOMER'] ?></td>
               <td><?php echo $row['NAMA_CUSTOMER'] ?></td>
               <td><?php echo $row['TGL_TRANSAKSI'] ?></td>
               <td><?php echo $row['TOTAL_HARGA'] ?></td>
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>
   </body>
</html>