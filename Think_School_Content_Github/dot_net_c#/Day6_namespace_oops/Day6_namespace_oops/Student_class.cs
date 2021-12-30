using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day6_namespace_oops
{
    class Student_class
    {
        private int student_rollno;
        private string student_name;
        private int studnet_class;


        public void Setdata4student()
        {
            Console.WriteLine("enter the student roll no");
            student_rollno = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("enter the student name ");
            student_name = Console.ReadLine();
            Console.WriteLine("enter the class ");
            studnet_class = Convert.ToInt32(Console.ReadLine());

        }

       public string data()
        {
            return "student detail: " + "Name- " + student_name + " " + "roll-no -" + student_rollno + " " + " class -" + studnet_class;
        }
    }
}
