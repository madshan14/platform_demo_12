using PlatformDemoWebApp.DTOs;

namespace PlatformDemoWebApp.Interfaces
{
    public interface ICustomerService
    {
        List<CustomerResponse> GetCustomers();
    }
}