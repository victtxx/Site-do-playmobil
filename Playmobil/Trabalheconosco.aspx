<%@ Page Title="Trabalhe Conosco" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Trabalheconosco.aspx.cs" Inherits="Playmobil.Trabalheconosco" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3> Vagas Disponiveis!</h3>
       

    <asp:Repeater ID="rpVagas" runat="server">
            <ItemTemplate>
                <div class="bloco-vaga">
                    <h4><%# DataBinder.Eval(Container.DataItem, "Nome") %></h4>
                   <strong> <%# DataBinder.Eval(Container.DataItem, "Descricao") %> </strong><br />
                    <strong>Remuneração:</strong> R$ <%# DataBinder.Eval(Container.DataItem, "Remuneracao") %><br />
                   <strong> Expira em:</strong> <%# DataBinder.Eval(Container.DataItem, "DataExpiracao", "{0:dd/MM/yyyy}") %>
                   <br />
                    <a href="mailto:victorpradorm@gmail.com&subject=Vaga <%# DataBinder.Eval(Container.DataItem, "Nome") %>">Envie seu currículo</a>
                </div>
            </ItemTemplate>
        </asp:Repeater>

       
</asp:Content>
