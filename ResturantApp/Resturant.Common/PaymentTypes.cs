using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resturant.Common
{
    public class PaymentTypes
    {
        [Key]
        public int PaymentTyepId { get; set; }
        public string PaymentTypeName { get; set; }
    }
}
