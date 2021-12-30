using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day6_namespace_oops
{
  public class Date // default access specifier is private
    {
        //data members 
        private int day, year;
        private string month;

        //non parametric constructor

        public Date() // constructor have same name as class
        {
            day = 13;
            month = "jan";
            year = 1999;
        }

        //parametric constructor
        public Date(int dd , string mm, int yy )
        {
            day = dd;
            month = mm;
            year = yy;

        }

        //method to initialize values to member

       /* public void SetData()
        {
            day = 12; // day is accessible because function calling is happening under the same class
                      // but we can not access the day outside of the class date as it is private
            month = "dec"; // 3 bytes
            year = 2021;   // 4 bytes

        }*/

        // method which get values of date class
        public string GetData()
        {
            return "date is :" + day + "/" + month + "/" + year;
            // date is : 12/dec/2021 ===>>>output
        }

    }
}
