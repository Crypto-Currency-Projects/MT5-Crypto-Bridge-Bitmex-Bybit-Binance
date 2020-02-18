#include <SHA256.mqh>
#include <jason.mqh>
#include <HEX.mqh>

SHA256 hash256;




string urlencode(string value) {
      int len = StringLen(value);
      string concatenate ="";
      uchar characters[];
      StringToCharArray(value,characters);
      for (int i = 0; i<len ;i++) {
         concatenate+= (StringFormat("%%%02x", characters[i]));
      }
      return(concatenate);
   }




string in(string message){
   
  double number =  StringToDouble(message);
  string result ="";
  if(number>0){
     result =  DoubleToString(number,0);
  }else{
   return( message); // Letters. 
  }
  return(result);
}




int Get_Trailing_Zeros_digits(double has_zeros){
/*
   this string has zeros, 
*/
   double zeros = has_zeros;
   
 //  Print(" has+Zeros(in): " + has_zeros + " double(out): " + DoubleToString( zeros,8) );
   
   
   
   
  /*
   
  string A =  DoubleToString(has_zeros);
  
  int decimal_location = StringFind(A,".",0);
  
  int z8 = StringFind(A,"0",decimal_location+8);
  int z7 = StringFind(A,"0",decimal_location+7);
  int z6 = StringFind(A,"0",decimal_location+6);
  int z5 = StringFind(A,"0",decimal_location+5);
  int z4 = StringFind(A,"0",decimal_location+4);
  int z3 = StringFind(A,"0",decimal_location+3);
  int z2 = StringFind(A,"0",decimal_location+2);
  int z1 = StringFind(A,"0",decimal_location+1);
  int z0 = StringFind(A,"0",decimal_location+0);
  
  Print(" String: " + A + " dec: " + decimal_location + 
  "\mZero Location8" + z8 + 
  "\mZero Location8" + z7 + 
  "\mZero Location8" + z6 + 
  "\mZero Location8" + z5 + 
  "\mZero Location8" + z4 + 
  "\mZero Location8" + z3 + 
  "\mZero Location2: " + z2 + 
  "\mZero Location1: " + z1 + 
  "\mZero Location0: " + z0 );
 
  int length = StringLen(A);
  */
   if( zeros > 1 ) {
    //  Print(" has+Zeros(out): " +  DoubleToString(zeros,1) );
      return( 1 );
   
   }
   if( zeros > 0.1 ) {
    //  Print(" has+Zeros(out): " +  DoubleToString(zeros,2) );
      return( 2 );
   
   }
   if( zeros > 0.01 ) {
     // Print(" has+Zeros(out): " +  DoubleToString(zeros,3) );
      return( 3 );
   
   }
   if( zeros > 0.001 ) {
    //  Print(" has+Zeros(out): " +  DoubleToString(zeros,4) );
      return( 4);
   
   }
   if( zeros > 0.0001 ) {
    //   Print(" has+Zeros(out): " +  DoubleToString(zeros,5) );
      return( 5 );
   
   }
   if( zeros > 0.00001 ) {
     // Print(" has+Zeros(out): " +  DoubleToString(zeros,6) );
      return( 6 );
   
   }
   if( zeros > 0.000001 ) {
    //  Print(" has+Zeros(out): " +  DoubleToString(zeros,7) );
      return( 7 );
   
   }
   if( zeros > 0.0000001 ) {
    //  Print(" has+Zeros(out): " +  DoubleToString(zeros,8) );
      return( 8 );
   
   }

   return(0);
}


      
string Get_Trailing_ZerosB(string has_zeros){
/*
   this string has zeros, 
*/
 int digit=0;
   double zeros = StringToDouble(has_zeros);
   
   if(zeros==0) return(has_zeros);
   
   
  string  format_string=StringFormat("%%.%df",
                              zeros);
   return(format_string);
   
   
   
   
   if( zeros > 1 ) {
   
      return( DoubleToString(zeros,1) );
   
   }
   if( zeros > 0.1 ) {
   
      return( DoubleToString(zeros,2) );
   
   }
   if( zeros > 0.01 ) {
   
      return( DoubleToString(zeros,3) );
   
   }
   if( zeros > 0.001 ) {
   
      return( DoubleToString(zeros,4) );
   
   }
   if( zeros > 0.0001 ) {
   
      return( DoubleToString(zeros,5) );
   
   }
   if( zeros > 0.00001 ) {
   
      return( DoubleToString(zeros,6) );
   
   }
   if( zeros > 0.000001 ) {
   
      return( DoubleToString(zeros,7) );
   
   }
   if( zeros > 0.0000001 ) {
   
      return( DoubleToString(zeros,8) );
   
   }

   return("");
}


string Get_Trailing_ZerosC(string has_zeros){


   return( StringSubstr(has_zeros,0,8) );

/*
   this string has zeros, 
*/
 int digit=0;
   double zeros = StringToDouble(has_zeros);
   string out = "";
   
   Print(" String In: " + has_zeros + "  DoubleOut: " + DoubleToString(zeros,8) );
   
   if( zeros > 1  ) {
      out = DoubleToString(zeros,1);
      Print(" String Out: " + out);
      return( out );
   
   }
   if( zeros > 0.1 && zeros <= 1  ) {
   
      out = DoubleToString(zeros,2);
      Print(" String Out: " + out);
      return( out );
   
   }
   if( zeros > 0.01 && zeros <= 0.1  ) {
   
      out = DoubleToString(zeros,3);
      Print(" String Out: " + out);
      return( out );
   }
   if( zeros > 0.001 && zeros <= 0.01  ) {
   
      out = DoubleToString(zeros,4);
      Print(" String Out: " + out);
      return( out );
   
   }
   if( zeros > 0.0001 && zeros <= 0.001  ) {
   
      out = DoubleToString(zeros,5);
      Print(" String Out: " + out);
      return( out );
   
   }
   if( zeros > 0.00001 && zeros <= 0.0001  ) {
   
      out = DoubleToString(zeros,6);
      Print(" String Out: " + out);
      return( out );
   
   }
   if( zeros > 0.000001 && zeros <= 0.00001  ) {
   
      out = DoubleToString(zeros,7);
      Print(" String Out: " + out);
      return( out );
   
   }
   if( zeros > 0.0000001 && zeros <= 0.000001  ) {
      Print(" String Out: " + out);
      out = DoubleToString(zeros,8);
      Print(" String Out: " + out);
      return( out );
   
   }

   return(DoubleToString(zeros,8));
}


string build_hash(string message_body, string secret){

   // BUILD THE HASH KEY
  
   Print(" Build hash from string: " + message_body);
   string hash = hash256.hmac(message_body,secret);
   
   /*
    Try to convert the hash into a HEX value string
   */
   
   string HEX =  convert_String_HEX(hash);
   
   
   Print(" Hash result:  " + hash + "\nHEX: " + HEX);
   return(HEX);

}





