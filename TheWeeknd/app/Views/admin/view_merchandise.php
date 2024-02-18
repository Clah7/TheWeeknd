<?= $this->extend('/base');?>

<?= $this->section('head');?>
 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Merchandise</title>
    <link rel="stylesheet" href="/css/pages/merch.css">
</head><?= $this->endSection();?>

<?= $this->section('content');?>
<div class="scrollable-container">
    <h1>Our Merchandise</h1>
    <div class="merchandise-items">
        <?php foreach ($merchandise as $item): ?>
            <div class="merchandise-item">
                <img src="<?= $item['merch_image']; ?>" alt="<?= $item['nama_item']; ?>" class="merchandise-image">
                <h2><?= $item['nama_item']; ?></h2>
                <p>Price: $<?= $item['price']; ?></p>
                <p><?= $item['item_desc']; ?></p>
                <a href="<?= $item['link_item']; ?>" class="buy-button">Buy Now</a>
            </div>
        <?php endforeach; ?>
    </div>
</div>
<style>
 
body {
    font-family: 'Oswald', sans-serif;
    margin: 0;
    padding: 0;
    background: #f4f4f4;
    color: #333;
}



.scrollable-container {
    width: 90%;
    margin: 20px auto;
    overflow-y: auto;
}

.merchandise-items {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
}

.merchandise-item {
    background: white;
    border: 1px solid #ddd;
    padding: 15px;
    width: calc(33.333% - 20px); /* 3 items per row, accounting for the gap */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
}

.merchandise-item:hover {
    transform: translateY(-5px);
}

.merchandise-image {
    max-width: 100%;
    height: auto;
    display: block;
    margin-bottom: 15px;
}

.merchandise-item h2 {
    margin: 0;
    padding: 0;
    font-size: 1.2em;
    margin-bottom: 10px;
}

.buy-button {
    display: inline-block;
    padding: 10px 15px;
    background: #5cb85c;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.buy-button:hover {
    background-color: #4cae4c;
}
    </style>
<?= $this->endSection();?>
