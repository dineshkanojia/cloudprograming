using System;
using System.ComponentModel.DataAnnotations;

namespace Resturant.Common
{
    public class Items
    {
        [Key]
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public decimal ItemPrice { get; set; }
    }
}
