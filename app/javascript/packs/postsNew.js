function loadFile(event) {
  const preview = document.getElementById('preview');
  preview.src = URL.createObjectURL(event.target.files[0]);
  preview.onload = function() {
    URL.revokeObjectURL(preview.src)
  }
};
