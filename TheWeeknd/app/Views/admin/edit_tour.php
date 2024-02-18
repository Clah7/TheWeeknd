<form action="/TourController/update/<?= $tour['tour_id']; ?>" method="post">
    <label for="tour_name">Tour Name:</label>
    <input type="text" name="tour_name" id="tour_name" value="<?= $tour['tour_name']; ?>">

    <label for="tour_place">Tour Place:</label>
    <input type="text" name="tour_place" id="tour_place" value="<?= $tour['tour_place']; ?>">

    <label for="tour_time">Tour Time:</label>
    <input type="date" name="tour_time" id="tour_time" value="<?= $tour['tour_time']; ?>">

    <button type="submit">Update Tour</button>
</form>
