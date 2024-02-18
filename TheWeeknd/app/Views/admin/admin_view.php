<?= $this->extend('/base');?>
<?= $this->section('content'); ?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminView</title>
    <link rel="stylesheet" href="/css/admin/main.css">
</head>
<body>
    <div class="cContainer">
        <!-- Users Section -->
        <section class="users">
            <div class="header"><h2>Users</h2></div>
            <div class="table">
                <table>
                    <tr>
                        <th>Username</th>
                        <th>Level</th>
                    </tr>
                    <?php foreach ($users as $user): ?>
                    <tr>
                        <td><?= htmlspecialchars($user['username']) ?></td>
                        <td><?= htmlspecialchars($user['level']) ?></td>
                    </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </section>

        <!-- Album Section -->
        <section class="album">
            <div class="header"><h2>Album</h2></div>
            <a href="/AlbumController/create" class="btn btn-primary">Create New Album</a>
            <div class="table">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Release Year</th>
                        <th>Image</th>
                    </tr>   
                    <?php foreach ($albums as $album): ?>
                    <tr>
                        <td><?= htmlspecialchars($album['id_album']) ?></td>
                        <td><?= htmlspecialchars($album['nama_album']) ?></td>
                        <td><?= htmlspecialchars($album['tahun_rilis']) ?></td>
                        <td><?= htmlspecialchars($album['album_image']) ?></td>
                        <td>
                            <a href="/AlbumController/edit/<?= $album['id_album']; ?>" class="btn btn-sm btn-primary">Edit</a>
                            <a href="/AlbumController/delete/<?= $album['id_album']; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this item?')">Delete</a>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </section>

        <!-- Lagu Section -->
        <section class="lagu">
            <div class="header"><h2>Lagu</h2></div>
            <div class="table">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Duration</th>
                        <th>Album ID</th>
                        <th>Image</th>
                    </tr>
                    <?php foreach ($lagus as $lagu): ?>
                    <tr>
                        <td><?= htmlspecialchars($lagu['id_lagu']) ?></td>
                        <td><?= htmlspecialchars($lagu['nama_lagu']) ?></td>
                        <td><?= htmlspecialchars($lagu['durasi_lagu']) ?></td>
                        <td><?= htmlspecialchars($lagu['id_album']) ?></td>
                        <td><?= htmlspecialchars($lagu['lagu_image']) ?></td>
                        
                    </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </section>

        <!-- Merchandise Section -->
        <section class="merch">
            <div class="header"><h2>Merchandise</h2></div>
            <a href="/MerchandiseController/create" class="btn btn-primary">Create New Merchandise</a>
            <div class="table">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Item Name</th>
                        <th>Price</th>
                        <th>Description</th>
                        <th>Link</th>
                        <th>Image</th>
                    </tr>
                    <?php foreach ($merchandise as $merch): ?>
                    <tr>
                        <td><?= htmlspecialchars($merch['id_item']) ?></td>
                        <td><?= htmlspecialchars($merch['nama_item']) ?></td>
                        <td><?= htmlspecialchars($merch['price']) ?></td>
                        <td><?= htmlspecialchars($merch['item_desc']) ?></td>
                        <td><?= htmlspecialchars($merch['link_item']) ?></td>
                        <td><?= htmlspecialchars($merch['merch_image']) ?></td>
                        <td>
                            <a href="/MerchandiseController/edit/<?= $merch['id_item']; ?>" class="btn btn-sm btn-primary">Edit</a>
                            <a href="/MerchandiseController/delete/<?= $merch['id_item']; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this item?')">Delete</a>
                        </td>

                    </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </section>

        <!-- Tour Section -->
        <section class="tour">
            <div class="header"><h2>Tour</h2></div>
            <a href="/TourController/create/" class="btn btn-primary">Create New Tour</a>
            <div class="table">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Tour Name</th>
                        <th>Place</th>
                        <th>Date</th>
                    </tr>
                    <?php foreach ($tours as $tour): ?>
                    <tr>
                        <td><?= htmlspecialchars($tour['tour_id']) ?></td>
                        <td><?= htmlspecialchars($tour['tour_name']) ?></td>
                        <td><?= htmlspecialchars($tour['tour_place']) ?></td>
                        <td><?= htmlspecialchars($tour['tour_time']) ?></td>
                        <td>
                    <a href="/TourController/edit/<?= $tour['tour_id']; ?>" class="btn btn-sm btn-primary">Edit</a>
 
                    <a href="/TourController/delete/<?= $tour['tour_id']; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this item?')">Delete</a>
                       </td>
                    </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </section>
    </div>
</body>
</html>
<?= $this->endSection(); ?>