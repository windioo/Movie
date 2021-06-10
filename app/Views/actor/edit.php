<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="my-3">Edit Actor Form</h2>
            <form action="/actors/update/<?= $actor['id']; ?>" method="POST">
                <?= csrf_field(); ?>
                <div class="row mb-3">
                    <label for="name" class="col-sm-2 col-form-label">Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('name')) ? 'is-invalid' : ''; ?>" id="name" name="name" autofocus value="<?= (old('name')) ? old('name') : $actor['name'] ?>">
                        <div class="invalid-feedback"><?= $validation->getError('name'); ?></div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="gender" class="col-sm-2 col-form-label">gender</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('gender')) ? 'is-invalid' : ''; ?>" id="gender" name="gender" value="<?= (old('gender')) ? old('gender') : $actor['gender'] ?>">
                        <div class="invalid-feedback"><?= $validation->getError('age'); ?></div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="age" class="col-sm-2 col-form-label">Age</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('age')) ? 'is-invalid' : ''; ?>" id="age" name="age" value="<?= (old('age')) ? old('age') : $actor['age'] ?>">
                        <div class="invalid-feedback"><?= $validation->getError('age'); ?></div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary submit">Edit Actor</button>
            </form>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>