#
#= require jquery
#= require jquery_ujs
#= require_tree .

$ ->
  $('#pictureInput').on 'change', (event) ->
    files = event.target.files;
    image = files[0]
    reader = new FileReader();
    reader.onload = (file) ->
      img = new Image();
      console.log(file);
      img.src = file.target.result;
      $('#target').html(img);

    reader.readAsDataURL(image);
    console.log(files);

  $window = $(window)
  $stickyEl = $('#menu-button')
  elTop = $stickyEl.offset().top

  $window.scroll ->
    $stickyEl.toggleClass('sticky', $window.scrollTop() > elTop);
