using System;
using System.Collections.Generic;

namespace exAlgorithm
{
    class Program
    {
        public class Member : IComparable
        {
            public int order;
            public int age;
            public string name;

            public Member(int order, int age, string name)
            {
                this.order = order;
                this.age = age;
                this.name = name;
            }

            public int CompareTo(Object obj) {
                Member m = (Member)obj;
                if(this.age == m.age) return this.order.CompareTo(m.order);
                return this.age.CompareTo(m.age);
            }
        }

        static void Main(string[] args)
        {
            int cnt = int.Parse(Console.ReadLine());
            List<Member> members = new List<Member>();
            for(int i=0; i<cnt; i++) {
                string[] input = Console.ReadLine().Split();
                members.Add(new Member(i, int.Parse(input[0]), input[1]));
            }

            members.Sort();

            var output = new System.IO.StreamWriter(Console.OpenStandardOutput());
            for(int i=0; i<cnt; i++) {
                output.WriteLine(members[i].age + " " + members[i].name);
            }

            output.Close();
        }
    }
}
