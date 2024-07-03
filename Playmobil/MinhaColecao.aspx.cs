using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Playmobil
{
    public partial class MinhaColecao : System.Web.UI.Page
    {
        PlaymobilContext context = new PlaymobilContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CarregarMarcas();
                CarregarColecao();

                BuscarItems();
            }
        }

        private void CarregarMarcas()
        {
            ddlMarca.Items.Add(new ListItem("TODOS", "TODOS"));

            var marcas = context.ColecaoItens.Select(m => m.Marca).Distinct().ToList();
            for (int i = 0; i < marcas.Count; i++)
            {
                ddlMarca.Items.Add(new ListItem(marcas[i], marcas[i]));
            }

            ddlMarca.SelectedValue = "TODOS";
        }

        private void CarregarColecao()
        {
            ddlColecao.Items.Add(new ListItem("TODOS", "TODOS"));

            var Colecao = context.ColecaoItens.Select(m => m.Colecao).Distinct().ToList();
            for (int i = 0; i < Colecao.Count; i++)
            {
                ddlColecao.Items.Add(new ListItem(Colecao[i], Colecao[i]));
            }

            ddlColecao.SelectedValue = "TODOS";
        }
        protected void btPesquisar_Click(object sender, EventArgs e)
        {
            BuscarItems();
        }


        protected void btLimpar_Click(object sender, EventArgs e)
        {
            ddlMarca.SelectedValue = "TODOS";
            ddlColecao.SelectedValue = "TODOS";
            tbItem.Text = "";
            tbSerie.Text = "";
            BuscarItems();
        }

        private void BuscarItems()
        {
            var resultado = context.ColecaoItens.ToList();

            if (ddlMarca.SelectedValue != "TODOS")
                resultado = resultado.Where(w => w.Marca.ToLower() == ddlMarca.SelectedValue.ToLower()).ToList();

            if (ddlColecao.SelectedValue != "TODOS")
                resultado = resultado.Where(w => w.Colecao.ToLower() == ddlColecao.SelectedValue.ToLower()).ToList();

            if (!String.IsNullOrWhiteSpace(tbItem.Text))
                resultado = resultado.Where(w => w.Item.ToUpper().Contains(tbItem.Text.ToUpper())).ToList();

            if (!String.IsNullOrWhiteSpace(tbSerie.Text))
                resultado = resultado.Where(w => w.Serie.ToUpper().Contains(tbSerie.Text.ToUpper())).ToList();

            rpColecao.DataSource = resultado;
            rpColecao.DataBind();
            if (rpColecao.Items.Count == 0)
            {
                lbContResultado.Text = "Nenhum item encontrado :\\";
            }
            else if (rpColecao.Items.Count == 1)
            {
                lbContResultado.Text = "Foi encontrado 1 item.";
            }
            else
            {
                lbContResultado.Text = "Foram encontrados " + rpColecao.Items.Count + " items.";
            }
        }
    }


}
