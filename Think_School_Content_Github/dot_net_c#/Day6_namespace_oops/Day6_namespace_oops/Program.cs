using System;
using System.Linq;

namespace Day6_namespace_oops //class,delegate,enum,struct,interface all comes inside the namspace
{
    class Program //member of class var,method,event,property comes inside the class
    {
       /* static void Main(string[] args) // code comes inside this
        {
            // creation of object for date class
            // class_name object_name = new class_name();
            // remove the comments according to the requirement
            //  Date date = new Date();
            //  Date date2 = new Date(24, "july", 2019);
            // date.SetData(); // object will call the function setdata
            // Console.WriteLine(date.GetData()); //printing the values returned by getdata function
            // Console.WriteLine(date2.GetData());



            *//*
                        Student_class student_details = new Student_class();
                        student_details.Setdata4s tudent();
                        Console.WriteLine(student_details.data());*/
            /*
                        Employee emp1 = new Employee();
                        Employee emp2 = new Employee(100, "mario", 50000);

                        Console.WriteLine(emp1.ToString());
                        Console.WriteLine(emp2.ToString());*//*
            // Console.WriteLine(emp1.Netpaid_salary());

            *//* Properties obj = new Properties();
             obj.Roll_no = 1; // property initialization
             obj.Name = "himanshu";
             Console.WriteLine(obj.Roll_no);
             Console.WriteLine(obj.Name);

             //object intialization

             Properties obj2 = new Properties { Roll_no = 2, Name = "happy" };
             Console.WriteLine(obj2);

 */
            /*int[]nums = {16,9,25 };
            var posNums = from n in nums
                          where n > 0
                         
                          select Math.Sqrt(n);
            Console.Write("the positive values in nums:");
            foreach (int i in posNums)
                Console.WriteLine(i + " ");
            Console.WriteLine();
            Console.ReadLine();
*//*
        
        }*/

        public static void Main(string[] args)  // properties and related...
        {
           /* Properties object1 = new Properties();
            object1.Roll_no = 25;
            object1.Name = "Himanshu";
            Console.WriteLine(object1.Name);
            Console.WriteLine(object1.Roll_no);

          

            Properties obj2 = new Properties { Roll_no = 2, Name = "happy" };
            Console.WriteLine(obj2);*/

            Properties Object3 = new Properties { Percentage = 84, parentname = "ps" };

            Console.WriteLine( Object3.ToString());
        }
    }
}
