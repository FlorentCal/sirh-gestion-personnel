<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="css/detail.css">
  <link rel="stylesheet" type="text/css" href="css/titre.css">

  <script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/js/bootstrapValidator.min.js"></script>

  <title>Détail collaborateur</title>
</head>
<body>
    <div class="container">
      <form class="form-inline">
        <img class="col-3 top" src="https://randomuser.me/api/portraits/women/19.jpg"/>
        <h1 class="col-6">Nom Prénom - Matricule</h1>
        <div class="form-inline">
          <span class="input-group-addon col-3">
            <input type="checkbox">
          </span>
          <label class="border-label">Désactiver</label>
        </div>
      </form>
      <form>
        <div id="accordion" role="tablist">
          <div class="card">
            <div class="card-header" role="tab" id="headingOne">
              <h5 class="mb-0">
                <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                  Identité
                </a>
              </h5>
            </div>

            <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
              <div class="card-body">
                <form class="well form-horizontal" action=" " method="post"  id="contact_form">
                  <fieldset>
                    <form class="form-inline">
                      <div class="form-group">
                        <label class="control-label">Civilité :</label>
                        <div class="selectContainer">
                          <div class="input-group">
                            <select name="civilite" class="form-control selectpicker" >
                              <option>Monsieur</option>
                              <option>Madame</option>
                              <option >Mademoiselle</option>
                            </select>
                          </div>
                        </div>
                      </div>
                    </form>

                    <div class="form-group">
                      <label class="control-label">Nom :</label>
                      <div class="inputGroupContainer">
                        <div class="input-group">
                          <input  name="nom" placeholder="Nom" class="form-control"  type="text">
                        </div>
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label" >Prénom :</label>
                      <div class="inputGroupContainer">
                        <div class="input-group">
                          <input name="prenom" placeholder="Prénom" class="form-control"  type="text">
                        </div>
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label">Adresse :</label>
                      <div class="inputGroupContainer">
                        <div class="input-group">
                          <textarea class="form-control" name="adresse" placeholder="Adresse"></textarea>
                        </div>
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label">Date de naissance :</label>
                      <div class="inputGroupContainer">
                        <div class="input-group">
                          <input name="date_naissance" placeholder="Date de naissance" class="form-control"  type="text">
                        </div>
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label">Numéro de sécurité sociale :</label>
                      <div class="inputGroupContainer">
                        <div class="input-group">
                          <input name="secu" placeholder="Numéro de sécurité sociale" class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label">Téléphone :</label>
                      <div class="inputGroupContainer">
                        <div class="input-group">
                          <input name="phone" placeholder="04 73 97 28 54" class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-header" role="tab" id="headingTwo">
              <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  Poste
                </a>
              </h5>
            </div>
            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
              <div class="card-body">
                <form class="well form-horizontal" action=" " method="post"  id="contact_form">
                  <fieldset>
                    <form class="form-inline">
                      <div class="form-group">
                        <label class="control-label">Departement :</label>
                        <div class="selectContainer">
                          <div class="input-group">
                            <select name="departemet" class="form-control selectpicker" >
                              <option>Comptabilité</option>
                              <option>Ressources Humaines</option>
                              <option>Informatique</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label">Nom :</label>
                        <div class="inputGroupContainer">
                          <div class="input-group">
                            <input  name="nom_poste" placeholder="Nom" class="form-control"  type="text">
                          </div>
                        </div>
                      </div>
                    </form>
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-header" role="tab" id="headingThree">
              <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Coordonnées bancaires
                </a>
              </h5>
            </div>
            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
              <div class="card-body">
                <form class="well form-horizontal" action=" " method="post"  id="contact_form">
                  <fieldset>
                    <form class="form-inline">
                      <div class="form-group">
                        <label class="control-label">IBAN :</label>
                        <div class="selectContainer">
                          <div class="input-group">
                            <input  name="iban" placeholder="IBAN" class="form-control"  type="text">
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label">BIC :</label>
                        <div class="inputGroupContainer">
                          <div class="input-group">
                            <input  name="bic" placeholder="BIC" class="form-control"  type="text">
                          </div>
                        </div>
                      </div>
                    </form>
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
            <div >
              <button class="right bottom btn btn-outline-success" type="submit">Sauvegarder</button>
            </div>
        </div>
      </form>
    </div>
</body>
</html>
