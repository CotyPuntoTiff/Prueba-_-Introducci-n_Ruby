
def build_web_page(data)
    '
        <!DOCTYPE html>
    <html lang="es">
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta author="Constanza Mardones">
        <title>Fotos de la NASA</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    
    <body style="background-color: rgb(34, 34, 34); color: white;">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container">
    
                <a class="navbar-brand text-center font-weight-bold" href="#" style="font-size: xx-large;"><i class="far fa-images p-3 fa-1x"></i>Fotos de la NASA</i></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
    
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
    
                    </div>
                </div>
            </div>
        </nav>
        <main>
                <h1 class="text-center m-4" style="color: #db6400;"><u>Planeta marte</u></h1>
    <section class="container">
        <div class="m-4">
        
        <p class="text-justify">Estas son imagenes recopiladas por los rovers Curiosity, Opportunity y Spirit de la NASA en este planeta. Estas en total cuentan con 9 camaras, donde recopilamos las fotos de 5 de ellas, estas se llaman FHAZ, RHAZ, MAST, CHEMCAM, NAVCAM.
        </p>
        </div>
        </section>
        </main>
        
        <ul class="container text-dark" style= "list-style-type: none;">
        '+ photo(data) +'
        </ul>
        
    <footer>
        <p class="bg-primary text-white text-center py-4"><span class="font-weight-bold">NASA</span> 2021, todos los derechos reservados.</p>
        
    </footer>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
        </script>
    </body>
    
    </html>
    '
    end
    
    def photo(data)
        char_cards = ''
        data["photos"].each_slice(3) do |photo_group|
            char_cards += '<div class = "card-deck" style="margin-left: 71px;" >'
    
            photo_group.each do |data|
                char_cards += cards(data["img_src"], data["earth_date"], data["rover"]["name"], data["camera"]["name"],)
            end
    
            char_cards += "</div> \n\n"
        end
        return char_cards
    end
    
    def cards(img, earth,camera_name, rover_name)
        ' 
        <li>
        <div class="card m-3" style="width: 18rem; border-color: rgb(248, 35, 7);border-width: 3px;">
            <img src="' + img + '" class="card-img-top" alt="'+earth+'">
            <div class="card-body">
              <h5 style="color:rgb(248, 35, 7);">Fecha de la captura: <br>'+ earth +'</h5>
              <hr class="text-danger">
              <h6> Nombre Rover: '+ rover_name + '</h6>
              <p class="card-text"> Nombre de la camara: '+ camera_name +'.</p>
            </div>
        </div>
        </li>
    '
     end

