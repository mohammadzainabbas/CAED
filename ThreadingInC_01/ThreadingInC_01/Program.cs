using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace ThreadingInC_01
{
    class PrimeNumber
    {
        static int start, end;
        static bool check = false;
        static void CheckPrime(int a)
        { 
            if(a%2 !=0 && a%3 !=0 && a%5 !=0 && a%7 !=0 && a%11 !=0)
            {
                Console.WriteLine(a + " is a prime number\n");
            }
        }
        static void SetTime()
        {
            Console.WriteLine("Enter start point:\t");
           string s_start= Console.ReadLine();
           start = Convert.ToInt32(s_start);
           Console.WriteLine("Enter end point:\t");
           string s_end = Console.ReadLine();
           end = Convert.ToInt32(s_end);
        }
    
    }
    class Program
    {
        static void function1()
        {
            int a = 0;
            while (a < 10)
            {
                Console.WriteLine("*****\n");
                a++;
                Thread.Sleep(300);
            }
        }
        static void function2()
        {
            int a = 0;
            while (a < 10)
            {
                Console.WriteLine(a+"\n");
                a++;
                Thread.Sleep(300);
            }
        }
       
        static int[] MergeSort(int[] array)
        {
            if (array.Length <= 1)
            {
                return array;
            }

            int MiddleIndex = (array.Length) / 2;
            int[] Left = new int[MiddleIndex];
            int[] Right = new int[array.Length - MiddleIndex];


            Array.Copy(array, Left, MiddleIndex);
            Array.Copy(array, MiddleIndex, Right, 0, Right.Length);

            Left = MergeSort(Left);
            Right = MergeSort(Right);

            //return Merge(Left,Right);

            List<int> left = Left.OfType<int>().ToList();
            List<int> right = Right.OfType<int>().ToList();
            int[] Result = new int[Quicksort(left).Length + Quicksort(right).Length];
            Array.Copy(Quicksort(left), Result, Quicksort(left).Length);
            Array.Copy(Quicksort(right), 0, Result, Quicksort(left).Length, Quicksort(right).Length);
            return Result ;
        }

        static int[] Merge(int[] Left, int[] Right)
        {
            List<int> LeftList = Left.OfType<int>().ToList();
            List<int> RightList = Right.OfType<int>().ToList();

            List<int> ResultList = new List<int>();

            while(LeftList.Count >0||RightList.Count >0)
            {
                if(LeftList.Count >0 && RightList.Count >0)
                {
                    if(LeftList[0] <= RightList[0])
                    {
                        ResultList.Add(LeftList[0]);
                        LeftList.RemoveAt(0);
                    }
                    else
                    {
                        ResultList.Add(RightList[0]);
                        RightList.RemoveAt(0);
                    }
                }
                else if(LeftList.Count >0)
                {
                    ResultList.Add(LeftList[0]);
                    LeftList.RemoveAt(0);
                }
                else if(RightList.Count>0)
                {
                    ResultList.Add(RightList[0]);
                    RightList.RemoveAt(0);
                }
            }

            int[] Result = ResultList.ToArray();
            return Result;
        }

        static int Partition(int[] array, int left, int right)
        {
            int Pivot = array[left];
            while (true)
            {
                while (array[left] < Pivot)
                    left++;

                while (array[right] > Pivot)
                    right--;

                if (left < right)
                {
                    int temp = array[right];
                    array[right] = array[left];
                    array[left] = temp;
                }
                else
                {
                    return right;
                }
            }
        }

        static void QuickSort(int[] array, int Left, int Right)
        {
            if (Left < Right)
            {
                int Pivot = Partition(array, Left, Right);

                if (Pivot > 1)
                {
                    QuickSort(array, Left, Pivot - 1);
                }
                if (Pivot + 1 < Right)
                {
                    QuickSort(array, Pivot + 1, Right);
                }
            }
        }

        static int[] Quicksort(List<int> array)
        {
            if (array.Count <= 1)
            {
                int[] sorted = new int[array.Count];
                array.CopyTo(sorted);
                return sorted;
            }

            int Pivot = array.Count / 2;
            int PivotValue = array[Pivot];

            array.RemoveAt(Pivot);

            List<int> Less = new List<int>();
            List<int> Great = new List<int>();

            foreach (int element in array)
            {
                if (element.CompareTo(PivotValue) < 0)
                {
                    Less.Add(element);
                }
                else
                {
                    Great.Add(element);
                }
            }

            List<int> result = new List<int>();
            result.AddRange(Quicksort(Less));
            result.Add(PivotValue);
            result.AddRange(Quicksort(Great));

            int[] sortedarray = new int[array.Count];
            result.CopyTo(sortedarray);
            return sortedarray;
        }

        static int findMax(int Start, int End, int[] myarray)
        {
            int max = myarray[Start];
            for (int i = 0; i < End;i++ )
            {
                if (myarray[i] > max)
                {
                    max = myarray[i];
                }
            }
            return max;
        }

        static void Main(string[] args)                         //Static main coz it's accessable without making any class Program's object
        {
            Console.WriteLine("M Zain Abbas");                  //cout

            const int size = 10;
            int[] array = new int[size];                      //Array declaration --> Dynamic array


            //{
            //    //Multi-threading

            //    //Creating threads
            //    //Thread mythread1 = new Thread(new ThreadStart(function1));           
            //    Thread mythread1 = new Thread(() => function1());
            //    Thread mythread2 = new Thread(new ThreadStart(function2));

            //    //Starting thread
            //    mythread1.Start();
            //    mythread2.Start();
            //}

            //Lab Task

            Random randomnumber = new Random();

            for (int i = 0; i < size; i++)
            {
                array[i] = randomnumber.Next(0, size);
            }

            //Finding maximum using threads
            int maximum = 0;
            int[] maxarray = new int[3];

            Thread t1 = new Thread(() => { maxarray[0] = findMax(0,333,array); });
            Thread t2 = new Thread(() => { maxarray[1] = findMax(334,667, array); });
            Thread t3 = new Thread(() => { maxarray[2] = findMax(668,999, array); });
            Thread t4 = new Thread(() => { maximum = findMax(0, 3, maxarray); });
            t1.Start();
            t2.Start();
            t3.Start();
            t4.Start();

            t1.Join();
            t2.Join();
            t3.Join();
            t4.Join();

            Console.WriteLine("Maximum is :\t"+ maximum);
            //array = MergeSort(array);

            //Print Sorted Array

            //for (int index = 0; index < array.Length; index++)
            //{
            //    Console.WriteLine("Element[{0}] = {1}", index, array[index]);
            //}
            //Console.WriteLine("\n\n\nBy Quick Sort\n");

            //QuickSort(array, 0, size - 1);
            //for (int j = 0; j < size; j++)
            //{
            //    Console.WriteLine(array[j] + "\t");
            //}

       
            


        }
    }
}
