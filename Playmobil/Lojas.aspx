<%@ Page Title="Lojas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lojas.aspx.cs" Inherits="Playmobil.Lojas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Encontre uma loja próxima a você.</h3>
    
    <div>

        <asp:Repeater ID="rpLojas" runat="server">
            <ItemTemplate>
                <div class="bloco-loja">
                    <h4><%# DataBinder.Eval(Container.DataItem, "Nome") %></h4>
                   <strong> <%# DataBinder.Eval(Container.DataItem, "Endereco") %> </strong><br />
                    <strong>Telefone:</strong> <%# DataBinder.Eval(Container.DataItem, "Telefone") %><br />
                   <strong> Funcionamento:</strong> <%# DataBinder.Eval(Container.DataItem, "Funcionamento") %>
     
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>

</asp:Content>
