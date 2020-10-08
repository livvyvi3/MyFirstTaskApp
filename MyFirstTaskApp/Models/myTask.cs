using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyFirstTaskApp.Models
{
    /// <summary>
    /// This class hold information of the object we are dealing with. In this case
    /// it holds data for a task.
    /// </summary>
    public class myTask
    {
        // public anyone that has access to the class can use this property.
        public int Id { get; set; } //you can get or edit the value.
        public string Name { get; set; }
        public DateTime DueDate { get; set; }
        public string Status { get; set; }
    }
}