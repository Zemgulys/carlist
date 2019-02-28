<?php require APPROOT . '/views/inc/header.php'; ?>
<div class="container mt-5">



<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Numeriai</th>
      <th scope="col">Metai</th>
      <th scope="col">Modelis</th>
      <th scope="col">Dabartinis valdytojas</th>
      <th scope="col">Buklė</th>
      <th scope="col">Ankstesnis valdytojas</th>
    </tr>
  </thead>
  <tbody>
<?php foreach($data as $car): ?>
    <tr>
      <td style="text-transform: uppercase;"><?php echo $car->number;?></td>
      <td><?php echo $car->year_made; ?></td>
      <td><?php echo $car->model; ?></td>
      <td><?php echo $car->owner; ?></td>
      <td><?php echo $car->status; ?></td>
      <td><?php echo $car->prevOwner; ?></td>
    </tr>
<?php endforeach; ?>
</tbody>
</table>
</div>

<?php require APPROOT . '/views/inc/footer.php'; ?>
