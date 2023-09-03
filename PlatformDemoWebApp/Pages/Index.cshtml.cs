using Microsoft.AspNetCore.Mvc.RazorPages;
using PlatformDemoClassLibrary.Models;

namespace PlatformDemoWebApp.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private readonly PlatformDemoContext context;

        public IndexModel(ILogger<IndexModel> logger, PlatformDemoContext context)
        {
            _logger = logger;
            this.context = context;
        }

        public List<Customer> Customers { get; set; }
        public List<Order> Orders { get; set; }

        public void OnGet()
        {
            this.Customers = this.context.Customers.ToList();
            this.Orders = this.context.Orders.ToList();
        }
    }
}