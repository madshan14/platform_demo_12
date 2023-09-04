using PlatformDemoClassLibrary.Models;
using PlatformDemoWebApp.DTOs;
using PlatformDemoWebApp.Interfaces;

namespace PlatformDemoWebApp.Services
{
    public class CustomerService : ICustomerService
    {
        private readonly PlatformDemoContext context;

        public CustomerService(PlatformDemoContext context)
        {
            this.context = context;
        }

        public List<CustomerResponse> GetCustomers()
        {
            var result = new List<CustomerResponse>();
            var customers = this.context.Customers.ToList();
            var orders = this.context.Orders.ToList();

            // Loop through Customers
            foreach (var customer in customers)
            {
                var totalOrder = orders.Count(order => order.CustomerId == customer.CustomerId); //Get the total number of orders per customer
                var totalAmount = orders.Where(order => order.CustomerId == customer.CustomerId).Sum(order => order.Amount); // Adds the total amount ordered per Customer

                //Appends each customer to result.
                result.Add(new CustomerResponse()
                {
                    Name = customer.Name,
                    PhoneNumber = customer.PhoneNumber,
                    TotalAmount = totalAmount,
                    TotalOrder = totalOrder
                });
            }
            return result;
        }
    }
}
