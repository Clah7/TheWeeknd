<?= $this->extend('/base');?>
<?= $this->section('content'); ?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/pages/tour.css">
</head>
<body>
    <div class="container">
        <div class="landing">
            <img src="/img/Konten/dawnfm.jpg" alt="theweeknd">
            <h2>
                TheWeeknd Tours
            </h2>
        </div>
        <div class="table">
            <table>
                <tr>
                    <th>Time</th>
                    <th>Location</th>
                    <th>City, Country</th>
                    <th>Ticket</th>
                </tr>
                <?php foreach ($tours as $tour): ?>
                    <tr>
                        <td><?= date('d/m/Y', strtotime($tour['tour_time'])); ?></td>
                        <td><?= htmlspecialchars($tour['tour_name']); ?></td>
                        <td><?= htmlspecialchars($tour['tour_place']); ?></td>
                        <td><a href="LINK_TO_TICKET">Ticket</a></td> 
                    </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>
</body>
</html>
<?= $this->endSection(); ?>
