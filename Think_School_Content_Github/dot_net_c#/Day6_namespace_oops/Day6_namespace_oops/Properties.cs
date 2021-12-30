using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day6_namespace_oops
{
    class Properties
    {
        public int roll_no;
        public int Id;
        public string emp_name;

        // auto implemented property 
        // we don't need to create the variable here. Percentage property will act as a var too.
        public int Percentage { get; set; }
        public string  parentname{ get; set; }


        // property
        public int Roll_no
        {
           set { roll_no = value; }
            get { return roll_no; }
        }


      

        private string name;
        public string Name { get => name; set => name = value; }


       /* public override string ToString()
        {
            return "details: "+ roll_no+" " + name +" "+ parentname+ " "+ Percentage;
        }*/
        public override string ToString()
        {
            return "details: "  + parentname + " " + Percentage;
        }
    }
}
