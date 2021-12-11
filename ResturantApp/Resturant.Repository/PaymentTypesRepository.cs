using Resturant.Common;
using Resturant.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resturant.Repository
{
    public class PaymentTypesRepository
    {
        private RestuarantContext _resturantContext;

        public PaymentTypesRepository(RestuarantContext ResturantContext)
        {
            this._resturantContext = ResturantContext;
        }

        public List<PaymentTypes> GetAllPaymentTypes()
        {
            var objSelectListItem = _resturantContext.PaymentTypes.ToList();
            return objSelectListItem;
        }
    }
}
