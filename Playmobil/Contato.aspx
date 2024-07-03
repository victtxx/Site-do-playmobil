<%@ Page Title="Contato" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="Playmobil.Contato" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Entrar em contato.</h3>
    <address>
        <br/>
        OBS: Os contatos disponiveis sao apenas por essas informacoes:
        <br />
        <abbr title="Phone">Numero: 98052-6399:</abbr>
        
    </address>


    <div>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">SuporteVictor@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">MarketingVictorpradorm@example.com</a>

        <div class="campo-contato">Nome:<br />
            <asp:TextBox ID="tbNome" runat="server" />
        </div>

        <div class="campo-contato">E-mail:<br />              
            <asp:TextBox ID="tbEmail" runat="server" />
        </div>

        <div class="campo-contato">Assunto:<br />               
            <asp:TextBox ID="tbAssunto" runat="server" />
        </div>

        <div class="campo-contato">Mensagem:<br />
             <asp:TextBox TextMode="MultiLine" ID="tbMenssagem" runat="server" />      
        </div>

        <div class="botao-contato">
            <asp:Button ID="btEnviar" runat="server" Text="Enviar" OnClick="btEnviar_Click" />
        </div>
            

    </div>
</asp:Content>
