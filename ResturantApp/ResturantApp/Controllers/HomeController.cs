using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json.Linq;
using Resturant.Common;
using Resturant.Infrastructure;
using Resturant.Repository;
using ResturantApp.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AuthorizeAttribute = Microsoft.AspNetCore.Authorization.AuthorizeAttribute;

namespace ResturantApp.Controllers
{
    [Authorize]
    public class HomeController : Microsoft.AspNetCore.Mvc.Controller
    {
        private RestuarantContext _resturantContext;

        public HomeController(RestuarantContext RestuarantContext)
        {
            _resturantContext = RestuarantContext;
        }

        public IActionResult Index()
        {
            var customerRepository = new CustomerRepository(_resturantContext);
            var itemRepository = new ItemsRepository(_resturantContext);
            var paymentTypeRepository = new PaymentTypesRepository(_resturantContext);

            var custDropDown = customerRepository.GetAllCustomers();
            custDropDown.Insert(0, new Customers { CustomerId = 0, CustomerName = "-- Select --" });


            var itemDropDown = itemRepository.GetAllItems();
            itemDropDown.Insert(0, new Items { ItemId = 0, ItemName = "-- Select --" });



            var paymentDropDown = paymentTypeRepository.GetAllPaymentTypes();
            paymentDropDown.Insert(0, new PaymentTypes { PaymentTyepId = 0, PaymentTypeName = "-- Select --" });


            var tuple = new Tuple<IEnumerable<Customers>, IEnumerable<Items>, IEnumerable<PaymentTypes>>(
                custDropDown,
                itemDropDown,
                paymentDropDown
                );


            return View(tuple);
        }

        [HttpGet]
        public JsonResult getItemUnitPrice(int itemId)
        {
            decimal unitPrice = _resturantContext.Items.FirstOrDefault(i => i.ItemId == itemId).ItemPrice;
            return Json(unitPrice);
        }

        [HttpPost]
        public JsonResult Index([FromBody] Orders orders)
        {
            OrdersRepository ordersRepository = new OrdersRepository(_resturantContext);
            var ordenumber = ordersRepository.AddOrder(orders);
            if(ordenumber > 0)
            {
                Utility.AWSNotification aWSNotification = new Utility.AWSNotification();

                var customer = _resturantContext.Customers.FirstOrDefault(c => c.CustomerId == orders.CustomerId);


                //Mobile Notification
                aWSNotification.CreateTopic("ResturantTopic", "Invoice");
                aWSNotification.CreateMobileSubscription("ResturantTopic", customer.Mobile);
                aWSNotification.PublishMobileMessage("Your Invoice number: " + ordenumber, customer.Mobile);


                StringBuilder sb = new StringBuilder();
                sb.Append("Dear " + customer.CustomerName);
                sb.Append(Environment.NewLine);
                sb.Append("You have place an order and we are deighted that our transaction completed successfully.");
                sb.Append(Environment.NewLine);
                sb.Append("Pleasure to have a business with you.");
                sb.Append(Environment.NewLine);
                sb.Append(Environment.NewLine);
                sb.Append("Thanks.");

                //Email Notification
                aWSNotification.CreateEmailSubscription("ResturantTopic", customer.Email);
                aWSNotification.PublishEmailMessage("ResturantTopic", sb.ToString(), "Your Invoice number: " + ordenumber);

                return Json("Order created successfully.");
            }
            return Json("Order not saved.");
        }


        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
