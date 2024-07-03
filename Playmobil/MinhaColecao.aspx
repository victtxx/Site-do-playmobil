<%@ Page Title="Minha Coleção" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MinhaColecao.aspx.cs" Inherits="Playmobil.MinhaColecao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Aqui você pode compartilhar sua paixão pelo Playmobil!</h3>

    <div class="pesquisa">
        <div class="pesquisa-campo">
            Marca:<br />
            <asp:DropDownList ID="ddlMarca" runat="server"></asp:DropDownList>
        </div>
        <div class="pesquisa-campo">
            Coleção:<br />
            <asp:DropDownList ID="ddlColecao" runat="server"></asp:DropDownList>
        </div>
        <div class="pesquisa-campo">
            Item:<br />
            <asp:TextBox ID="tbItem" runat="server"></asp:TextBox>
        </div>
        <div class="pesquisa-campo">
            Série:<br />
            <asp:TextBox ID="tbSerie" runat="server"></asp:TextBox>
        </div>
        <div class="pesquisa-campo">
            <asp:CheckBox ID="cbJaTenho" runat="server" Text=" Já tenho"></asp:CheckBox>
        </div>
        <div class="pesquisa-botao">
            <asp:Button ID="btPesquisar" runat="server" Text="Pesquisar" OnClick="btPesquisar_Click" />
            <asp:Button ID="btLimpar" runat="server" Text="Limpar" OnClick="btLimpar_Click" />
        </div>
    </div>

    <div class="colecao">
        <br />
        <asp:Label ID="lbContResultado" runat="server" Text=""></asp:Label>
        <br />
        <asp:Repeater ID="rpColecao" runat="server">
            <ItemTemplate>
                <div class="colecao-item">
                    <div class="colecao-item-img">
                        <img src="<%# DataBinder.Eval(Container.DataItem, "Imagem") %>" />
                    </div>
                    <div class="colecao-item-texto">
                        <b>Marca: </b><%# DataBinder.Eval(Container.DataItem, "Marca") %><br />
                        <b>Coleção: </b><%# DataBinder.Eval(Container.DataItem, "Colecao") %><br />
                        <b>Item: </b><%# DataBinder.Eval(Container.DataItem, "Item") %><br />
                        <b>Série: </b><%# DataBinder.Eval(Container.DataItem, "Serie") %><br />
                        <b>Descrição: </b><%# DataBinder.Eval(Container.DataItem, "Descricao") %> <%# (Eval("JaTenho") as bool?) == true ? "Já tenho" : "Ainda não tenho" %><br />
                        <a href="<%# DataBinder.Eval(Container.DataItem, "LinkCompra") %>" target="_blank" <%# string.IsNullOrEmpty(Eval("LinkCompra") as string) ? "style=\"display: none;\"" : "" %>>
                            <img src="Images/compre-aqui-NEW.png" class="compre-aqui"/>
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
