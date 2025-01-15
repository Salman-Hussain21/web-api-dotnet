using System;
using System.Collections.Generic;

namespace StudentWebapi.Models;

public partial class Student
{
    public int StuId { get; set; }

    public string? Name { get; set; }

    public string? Email { get; set; }

    public int? Age { get; set; }
}
