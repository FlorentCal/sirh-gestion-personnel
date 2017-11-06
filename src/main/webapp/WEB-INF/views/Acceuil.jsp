<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>

    <link rel="stylesheet" type="text/css" href="css/titre.css">

   	<jsp:include page="script.jsp"></jsp:include>
    <title>Accueil</title>
  </head>

  <body>
    <div class="form-inline">
      <img src="" alt="Logo"/>
      <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="home-tab" href="/collab/Lister_Collaborateurs.html" role="tab" aria-controls="home" aria-selected="true">Collaborateurs</a>
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

      var pages = ['/collab/Lister_Collaborateurs', 'Afficher_Statistiques', 'Afficher_Activites']

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
