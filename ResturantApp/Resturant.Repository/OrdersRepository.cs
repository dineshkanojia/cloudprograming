using Resturant.Common;
using Resturant.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resturant.Repository
{
    public class OrdersRepository
    {
        private RestuarantContext _resturantContext;

        public OrdersRepository(RestuarantContext ResturantContext)
        {
            this._resturantContext = ResturantContext;
        }

        public List<Orders> GetAllOrders()
        {
            var orders = _resturantContext.Orders.ToList();

            return orders;
        }

        public int AddOrder(Orders orders)
        {
            Orders objOrders = new Orders();
            objOrders.CustomerId = orders.CustomerId;
            objOrders.FinalTotal = orders.FinalTotal;
            objOrders.OrderDate = DateTime.Now;
            objOrders.OrderNumber = String.Format("{0:ddmmmyyyyhhmmss}", DateTime.Now);
            objOrders.PaymentTypeId = orders.PaymentTypeId;
            _resturantContext.Orders.Add(objOrders);
            _resturantContext.SaveChanges();

            int orderId = objOrders.OrderId;

            foreach (var item in orders.lstOrderDetails)
            {
                OrderDetail orderDetails = new OrderDetail();
                orderDetails.ItemId = item.ItemId;
                orderDetails.Discount = item.Discount;
                orderDetails.OrdersId = orderId;
                orderDetails.Quantity = item.Quantity;
                orderDetails.Total = item.Total;
                orderDetails.UnitPrice = item.UnitPrice;

                _resturantContext.OrderDetail.Add(orderDetails);
                _resturantContext.SaveChanges();


                OrderTransactions orderTransactions = new OrderTransactions();
                orderTransactions.ItemId = item.ItemId;
                orderTransactions.Quantity = (-1) * item.Quantity;
                orderTransactions.TransactionDate = DateTime.Now;
                orderTransactions.TypeId = 2;

                _resturantContext.OrderTransactions.Add(orderTransactions);
                _resturantContext.SaveChanges();
            }

            return orderId;
        }
    }
}
