﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Playmobil
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PlaymobilEntities1 : DbContext
    {
        public PlaymobilEntities1()
            : base("name=PlaymobilEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Loja> Loja { get; set; }
        public virtual DbSet<Vaga> Vaga { get; set; }
        public virtual DbSet<ColecaoItem> ColecaoItem { get; set; }
    }
}
