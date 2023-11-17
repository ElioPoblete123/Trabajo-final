document.getElementById('imagen').onchange = function (e) {
    var input = e.target;
    var reader = new FileReader();

    reader.onload = function () {
        var img = document.getElementById('previewImagen');
        img.src = reader.result;
    };

    reader.readAsDataURL(input.files[0]);
};
