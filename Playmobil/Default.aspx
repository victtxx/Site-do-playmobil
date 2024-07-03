<%@ Page Title="Página Inicial" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Playmobil._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div id="carrossel">
            <div>
                <img src="./Images/maxresdefault.jpg" alt="Nome da Imagem" title="Nome da Imagem" />
            </div>
            <div>
                <img src="./Images/20220105carro-playmobil-mini-cooper-car-02.jpg" alt="Nome da Imagem" title="Nome da Imagem" />
            </div>
            <div>
                <img src="./Images/diverse-playmobil.png" alt="Nome da Imagem" title="Nome da Imagem" />
            </div>
            <div>
                <img src="./Images/maxresdefault1.jpg" alt="Nome da Imagem" title="Nome da Imagem" />
            </div>
            <div>
                <img src="./Images/playmobil428_v-contentxl.png" alt="Nome da Imagem" title="Nome da Imagem" />
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Voce sabia que temos um Filme? </h2>
            <p>
                 Uma jovem viaja ao mundo animado de Playmobil para encontrar seu irmão mais novo, Charlie, que está desaparecido. Para trazê-lo de volta para casa, ela deve embarcar em uma aventura emocionante.
            </p>
            <p>
                <img class="filmes" src="Images/filmes.png" />
            </p>
        </div>
        <div class="col-md-4">
            <h2> Nossa Historia! </h2>
            <p>
                  fundada em 1876 por Andreas Brandstätter em Fürth, Baviera, inicialmente produzia cadeados. Em 1921, produzia principalmente brinquedos metálicos como porquinhos mealheiros, telefones e caixas registradoras. Em 1954, a produção mudou para artigos plásticos.
            </p>
            <p>
                <a class="btn btn-default" href="/Sobre">Saiba mais &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Saquinhos de montao na promocao!</h2>
            <p>
                <img class="fig" src="Images/figuritas.png" />
            </p>
            <p>
                <a class="btn btn-default" href="/Lojas">Saiba mais &raquo;</a>
            </p>
        </div>
    </div>


    <script>
        $('#carrossel').slick({
            dots: true,
            infinite: true,
            speed: 500,
            slidesToShow: 1,
            slidesToScroll: 1,
        });
    </script>
</asp:Content>
