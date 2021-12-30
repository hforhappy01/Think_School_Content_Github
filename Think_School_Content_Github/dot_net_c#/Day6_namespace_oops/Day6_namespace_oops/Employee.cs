using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day6_namespace_oops
{
    class Employee
    {
        private int emp_id;
        private string emp_name;
        private int salary;
        private int netpaid_salary;
        private int hra;
        private int da;
        private int ta;
        private int pf;


        public Employee()
        {
            emp_id = 123;
            emp_name = "john";
            salary = 10000;

        }

        public Employee(int id, string name, int sal)
        {
            emp_id = id;
            emp_name = name;
            salary = sal;
        }

        public int Netpaid_salary()
        {
            hra = (salary * 20) / 100;
            da  = (salary * 20) / 100;
            ta  = (salary * 25) / 100;
            pf  = (salary * 12) / 100;

            netpaid_salary=  (hra + da + ta) -pf;
            return netpaid_salary;
            //Console.WriteLine(netpaid_salary);
        }
        public override string ToString()
        {
            return "employee detail: " + "Id no - " + emp_id + " " + " name -" + emp_name + " " + " basic salary- " + salary + "  " + "net paid salary  - " + Netpaid_salary();
        }
    }
}
