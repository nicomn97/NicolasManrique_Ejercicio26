#include <iostream>
#include <cmath>
#include <string>
#include <fstream>
#include <chrono>

using namespace std;
using namespace std::chrono;


int main(int argc, char* argv[]) {

   if (argc != 4) return -1;
   high_resolution_clock::time_point t1 = high_resolution_clock::now();
   int a =0;
   int b =0;
   int c =0;
   int d =0;
   int e =0;
   char c1 =49;
   char c2 =50;
   char c3 =51;
   char c4 =52;
   char c5 =53;

   string linea;
   ifstream entrada (argv[1]);
   if (entrada.is_open())
   {
      while ( getline (entrada,linea) )
      {
         for(int i = 0; i < linea.size(); ++i) {
            if(linea[i]==c1)
            {
               a++;
               if(linea[i+1]==c2)
               {
                  b++;
                  if(linea[i+2]==c3)
                  {
                     c++;
                     if(linea[i+3]==c4)
                     {
                        d++;
                        if(linea[i+4]==c5)e++;
                     }
                  }
               }
            }
         }
      }
      entrada.close();
   }   
   else cout << "Unable to open file";       
   ofstream salida;  
   salida.open (argv[2], fstream::app); 
   salida <<a<<endl;
   salida <<b<<endl;
   salida <<c<<endl;
   salida <<d<<endl;
   salida <<e<<endl;
   salida.close();

   ofstream texto;  
   texto.open (argv[3], fstream::app); 

   high_resolution_clock::time_point t2 = high_resolution_clock::now();
   auto duration = duration_cast<microseconds>( t2 - t1 ).count();


   texto <<duration<<endl;
   texto.close();


   
   return 0;

}
