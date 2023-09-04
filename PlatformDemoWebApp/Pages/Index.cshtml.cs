using Microsoft.AspNetCore.Mvc.RazorPages;
using PlatformDemoWebApp.DTOs;
using PlatformDemoWebApp.Interfaces;

namespace PlatformDemoWebApp.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private readonly ICustomerService customerService;

        public IndexModel(ILogger<IndexModel> logger, ICustomerService customerService)
        {
            _logger = logger;
            this.customerService = customerService;
        }

        public List<CustomerResponse> Customers { get; set; }

        public void OnGet()
        {
            this.Customers = this.customerService.GetCustomers(); // Retrieved all customers with total amount ordered.
        }
    }
}