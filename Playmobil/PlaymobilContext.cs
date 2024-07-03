using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace Playmobil
{

    public class PlaymobilContext : DbContext
    {

        public PlaymobilContext() : base("PlaymobilContext")
        {
        }

        public DbSet<Loja> Lojas { get; set; }
        public DbSet<Vaga> Vagas { get; set; }
        public DbSet<ColecaoItem> ColecaoItens { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            Database.SetInitializer<PlaymobilContext>(null);
            base.OnModelCreating(modelBuilder);
        }


        public class Loja
        {
            public int Id { get; set; }
            public string Nome { get; set; }
            public string Endereco { get; set; }
            public string Telefone { get; set; }
            public string Funcionamento { get; set; }
        }

        public class Vaga
        {
            public int Id { get; set; }
            public string Nome { get; set; }
            public string Descricao { get; set; }
            public decimal Remuneracao { get; set; }
            public DateTime DataExpiracao { get; set; }
        }
        
        public class ColecaoItem
        {
            public int Id { get; set; }
            public string Marca { get; set; }
            public string Colecao { get; set; }
            public string Item { get; set; }
            public string Serie { get; set; }
            public string Descricao { get; set; }
            public string Imagem { get; set; }
            public string LinkCompra { get; set; }

            public bool JaTenho { get; set;}

        }
    }

}