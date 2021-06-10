<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-6">
            <h1 class="mt-5">Movie List</h1>
            <a href="/movie/create" class="btn btn-primary my-2">Add Movie</a>
            <form action="" method="POST">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search name" name="keyword">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" id="basic-addon2" type="submit" name="submit">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="conta mt-3">

                <?php if (session()->getFlashdata('msg')) : ?>
                    <div class="alert alert-success" role="alert">
                        <?= session()->getFlashdata('msg'); ?>
                    </div>
                <?php endif ?>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">Cover</th>
                            <th scope="col">Title</th>
                            <th scope="col">Director</th>
                            <th scope="col">Year</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1 ?>
                        <?php foreach ($movie as $m) :  ?>
                            <tr>
                                <th scope="row"><?= $i++; ?></th>
                                <td><img src="/img/<?= $m['img']; ?>" alt="" class="cover"></td>
                                <td><?= $m['title']; ?></td>
                                <td><?= $m['director']; ?></td>
                                <td><?= $m['year']; ?></td>
                                <td>
                                    <a href="/movie/edit/<?= $m['id']; ?>" class="btn btn-success">Edit</a>
                                    <a href="/movies/delete/<?= $m['id']; ?>" class="btn btn-danger" onclick="return confirm( 'Are you sure?');">Delete</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
                <?= $pager->links('movie', 'cust_pagination'); ?>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>