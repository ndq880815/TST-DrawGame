using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Helper
{
    public class RandomCode
    {
        private string charSet = "2,3,4,5,6,8,9,A,B,C,D,E,F,G,H,J,K,M,N,P,R,S,U,W,X,Y";

        public string CreateRandomCode(int n)
        {
            string[] CharArray = charSet.Split(',');
            string randomCode = "";
            int temp = -1;
            Random rand = new Random();
            for (int i = 0; i < n; i++)
            {
                if (temp != -1)
                {
                    rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
                }
                int t = rand.Next(CharArray.Length - 1);
                if (temp == t)
                {
                    return CreateRandomCode(n);
                }
                temp = t;
                randomCode += CharArray[t];
            }
            return randomCode;
        }

        public string CreateRandomNum(int n)
        {
            string randomCode = "";
            Random rand = new Random();
            for (int i = 0; i < n; i++)
            {
                randomCode += rand.Next(0, 10);
            }
            return randomCode;
        }
    }
}