<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>

    <link rel="stylesheet" type="text/css" href="css/titre.css">

    <script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

    <title>Accueil</title>
  </head>

  <body>
    <div class="form-inline">
      <img src="" alt="Logo"/>
      <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="home-tab" href="Lister_Collaborateurs.html" role="tab" aria-controls="home" aria-selected="true">Collaborateurs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="profile-tab" href="Afficher_Statistiques.html" role="tab" aria-controls="profile" aria-selected="false">Statistiques</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="contact-tab" href="Afficher_Activites.html" role="tab" aria-controls="contact" aria-selected="false">Activités</a>
        </li>
      </ul>
    </div>
    <div class="tab-content" id="myTabContent">
      <div class="tab-pane fade show active" id="Lister_Collaborateurs" role="tabpanel" aria-labelledby="home-tab"></div>
      <div class="tab-pane fade" id="Afficher_Statistiques" role="tabpanel" aria-labelledby="profile-tab"></div>
      <div class="tab-pane fade" id="Afficher_Activites" role="tabpanel" aria-labelledby="contact-tab"></div>
    </div>

    <script>

      var pages = ['Lister_Collaborateurs', 'Afficher_Statistiques', 'Afficher_Activites']

      pages.forEach(function(page){
        $.get(page+'.html', function(data){
          $('#'+page).html(data)
        })
      })

      $('#myTab a').on('click', function (e) {
        e.preventDefault()
        $(this).tab('show')
        $(this).get(href, function(data) {
            $(href).attr('value',data)
        })

      })

    </script>
  </body>
</html>
