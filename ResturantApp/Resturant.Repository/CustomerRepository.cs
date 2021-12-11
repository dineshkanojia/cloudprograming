using Resturant.Common;
using Resturant.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Resturant.Repository
{
    public class CustomerRepository
    {
        private RestuarantContext _resturantContext;

        public CustomerRepository(RestuarantContext ResturantContext)
        {
            this._resturantContext = ResturantContext;
        }

        public List<Customers> GetAllCustomers()
        {
            var objSelectListItem = _resturantContext.Customers.ToList();

            return objSelectListItem;
        }
    }
}
