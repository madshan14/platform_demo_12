using System;
using System.Collections.Generic;

namespace PlatformDemoClassLibrary.Models;

public partial class Customer
{
    public int CustomerId { get; set; }

    public string? Name { get; set; }

    public string? PhoneNumber { get; set; }
}
