<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="my-3">Add Movie Form</h2>
            <form action="/movies/update/<?= $movie['id']; ?>" method="POST" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <input type="hidden" name="oldImg" value="<?= $movie['img']; ?>">
                <div class="row mb-3">
                    <label for="title" class="col-sm-2 col-form-label">Title</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('title')) ? 'is-invalid' : ''; ?>" id="title" name="title" autofocus value="<?= (old('title')) ? old('title') : $movie['title'] ?>">
                        <div class="invalid-feedback"><?= $validation->getError('title'); ?></div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="director" class="col-sm-2 col-form-label">Director</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('director')) ? 'is-invalid' : ''; ?>" id=" director" name="director" value="<?= (old('director')) ? old('director') : $movie['director'] ?>">
                        <div class="invalid-feedback"><?= $validation->getError('director'); ?></div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="year" class="col-sm-2 col-form-label">Year</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('year')) ? 'is-invalid' : ''; ?>" id="year" name="year" value="<?= (old('year')) ? old('year') : $movie['year'] ?>">
                        <div class="invalid-feedback"><?= $validation->getError('year'); ?></div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="img" class="col-sm-2 col-form-label">Cover</label>
                    <div class="col-sm-10">
                        <!-- <input type="text" class="form-control" id="img" name="img" "> -->
                        <input class="form-control <?= ($validation->hasError('img')) ? 'is-invalid' : ''; ?>" type="file" id="img" name="img" value="<?= (old('img')) ? old('img') : $movie['img'] ?>">
                        <div class="invalid-feedback"><?= $validation->getError('img'); ?></div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Add Movie</button>
            </form>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>