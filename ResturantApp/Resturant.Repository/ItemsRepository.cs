using Resturant.Common;
using Resturant.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
//using Microsoft.;

namespace Resturant.Repository
{
    public class ItemsRepository
    {
        private RestuarantContext _resturantContext;

        public ItemsRepository(RestuarantContext RestuarantContext)
        {
            this._resturantContext = RestuarantContext;
        }

        public List<Items> GetAllItems()
        {
            List<Items> objSelectListItem = _resturantContext.Items.ToList();

            return objSelectListItem;
        }
    }
}
