using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resturant.Common
{
    public class OrderTransactions
    {
        [Key]
        public int TransactionId { get; set; }
        public int ItemId { get; set; }
        public decimal Quantity { get; set; }
        public DateTime TransactionDate { get; set; }
        public int TypeId { get; set; }
    }
}
