using System;
using System.Collections.Generic;

namespace PlatformDemoClassLibrary.Models;

public partial class Order
{
    public int OrderId { get; set; }

    public long OrderNumber { get; set; }

    public double? Amount { get; set; }

    public int CustomerId { get; set; }
}
