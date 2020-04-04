#property copyright "Copyright 2018, FX4BTC"
#property link "https://github.com/fx4btc"
#property description "Tools=> Options => ExpertAdvisors => Allow Webrequests"
#property description "Add URL: https://api.bybit.com"
#property description "Add URL: https://bitmex.com"
#property description "Add URL: https://api.binance.com"

#property description "You must add files (ExchangeHelper.mqh), (SHA256.mqh), (HEX.mqh),(jason.mqh) to MQL5/Include/ "
#property description "You must add files (binance api.ex5), (bitmex api.ex5), (bybit api.ex5),etc to MQL5/Libraries/ "

#property description "You must make a payment with the FX4BTC_Payment_Bot before using"
#property version   "1.00"

/*
if(exchange_number==0)
     {
      return("BinanceDex");
     }
   if(exchange_number==1)
     {
      return("Binance");
     }
   if(exchange_number==2)
     {
      return("Bybit");
     }
   if(exchange_number==3)
     {
      return("Bitmex");
     }
   if(exchange_number==4)
     {
      return("Kucoin");
     }
     if(exchange_number==5)
     {
      return("BinanceFutures");
     }
*/




#import "Binance_api.ex5"
double Binance_Min_Notional_Lotsize(double binance_notional_min,double ask_bid,int lotDigit);
bool Binance_Cancel_Trade(string sym,long orderId);
bool Binance_Open_Trade(string sym,string side,string orderType,double orderSize,double orderPrice);
bool Binance_Open_Trade_Stop(string sym,string side,string orderType,double orderSize,double stopPrice);
bool Binance_Open_Trade_StopLimit(string sym,string side,string orderType,double orderSize,double orderPrice,double stopPrice);
double Binance_Balance(string sym,string quotebase);
void Binance_GetPriceBest(string sym, int quote_digit);
double Binance_GetPrice(string sym);
void Binance_GetServerTime();
void Binance_Get_API_Key(string key,string secret);
string Binance_GetOpenOrders(string sym);
#import

#import "BinanceFutures_api.ex5"
void   BinanceFutures_Get_API_Key(string key,string secret,string livedemo);
bool   BinanceFutures_Cancel_Trade(string sym,long orderId);
bool   BinanceFutures_Cancel_Trade_ALL(string sym);
bool   BinanceFutures_Open_Trade(string sym,string side,string orderType,double orderSize,double orderPrice);
bool   BinanceFutures_Open_Trade_Stop(string sym,string side,string orderType,double orderSize,double stopPrice);
bool   BinanceFutures_Open_Trade_StopLimit(string sym,string side,string orderType,double orderSize,double orderPrice,double stopPrice);
double BinanceFutures_Balance(string sym,string quotebase);
void   BinanceFutures_GetPriceBest(string sym, int quote_digit);
double BinanceFutures_GetPrice(string sym);
string BinanceFutures_GetOpenOrders(string sym);
void   BinanceFutures_GetServerTime();
string BinanceFutures_Set_Leverage(string sym,double leverage);
#import


#import "Binance_Dex_api.ex5"
double Binance_Dex_Min_Notional_Lotsize(double binance_notional_min,double ask_bid,int lotDigit);
bool Biance_Dex_Cancel_Trade(string sym,int orderId);
bool Binance_Dex_Open_Trade(string sym,string side,string orderType,double orderSize,double orderPrice);
double Binance_Dex_Balance(string sym,string quotebase);
string Binance_Dex_GetPriceBest(string sym);
double Binance_Dex_GetPrice(string sym);
void Binance_Dex_Get_API_Key(string key,string secret);
string Binance_Dex_BlockTime();
string Binance_Dex_Account(string address);
string Binance_Dex_Symbols(int List_total);
string Binance_Dex_Markets(int List_total);
string Binance_Dex_Order_List(string address);
string Binance_Dex_Time_Sales(string symbol,int limit);
#import

#import "Bybit_api.ex5"
double Bybit_Min_Notional_Lotsize(double bybit_notional_min,double ask_bid,int lotDigit);
bool Bybit_Cancel_Trade(string sym,string orderId);
bool Bybit_Open_Trade(string sym,string side,string orderType,double orderSize,double orderPrice);
//  double Bybit_Balance(string sym, string quotebase);
string Bybit_Balance(string sym,string quotebase);
string Bybit_GetOpenOrders(string sym,int liveOne_demoTwo);// returns the users orders lists
void Bybit_GetPriceBest(string sym);
double Bybit_GetPrice(string sym);
void Bybit_GetServerTime();
void Bybit_Get_API_Key(string key,string secret);
double Bybit_Leverage(int liveOne_demoTwo);// returns the users leverage
string Bybit_Positions(string sym,int qt_precision); // returns the users open positions
string Bybit_ClosePosition(string sym,string ordertype);
string Bybit_Set_Leverage(string sym,double leverage);
bool Bybit_Cancel_Trade_All(string sym);

#import

#import "Bitmex_api.ex5"
string Bitmex_GetOpenOrders(string sym);
string Bitmex_Position(string sym);
double Bitmex_Min_Notional_Lotsize(double bybit_notional_min,double ask_bid,int lotDigit);
bool Bitmex_Cancel_Trade(string sym,string orderId);
bool Bitmex_Open_Trade(string sym,string side,string orderType,double orderSize,double orderPrice);
double Bitmex_Balance(string sym,string quotebase);
void Bitmex_GetPriceBest(string sym);
double Bitmex_GetPrice(string sym);
void Bitmex_GetServerTime();
void Bitmex_Get_API_Key(string key,string secret);
string Bitmex_GetAnnouncement();
string Bitmex_GetChat(int id);
string Bitmex_ClosePosition(string sym,string ordertype);
string Bitmex_Set_Leverage(string sym,double leverage);
#import

#import "Kucoin_api.ex5"
double Kucoin_Min_Notional_Lotsize(double binance_notional_min,double ask_bid,int lotDigit);
bool Kucoin_Cancel_Trade(string sym,int orderId);
bool Kucoin_Open_Trade(string sym,string side,string orderType,double orderSize,double orderPrice);
double Kucoin_Balance(string sym,string quotebase);
void Kucoin_GetPriceBest(string sym);
double Kucoin_GetPrice(string sym);
void Kucoin_GetServerTime();
void Kucoin_Get_API_Key(string key,string secret,string passphase);
#import

input string Binance_Api_Key     = "";
input string Binance_Api_Secret  = "";

input string BinanceFutures_Api_Key     = "";
input string BinanceFutures_Api_Secret  = "";
input string BinanceFutures_LiveDemo  = "demo";

input string Bybit_Api_Key     = "";
input string Bybit_Api_Secret  = "";

input string Bitmex_Api_Key     = "";
input string Bitmex_Api_Secret  = "";

input string Kucoin_Api_Key     = "";
input string Kucoin_Api_Secret  = "";
input string Kucoin_Passphase   ="";

input int GLOBAL_QUOTE_PRECISION = 8;

double Binance_MIN_NOTIONAL = 0.0001;

bool DEV_DEBUG = true;


int OnInit()
  {
  /*
  
  set your api keys onInit 
  API keys are stored in memory within the exchange_api library
  
  ExchangeName_Get_API_Key
  
  such as
  
  Binance_Get_API_Key(string key,string secret);
  
  Alternatively 
  
  _MT5_Exchange_Load_API_KEYS(int exchange_number )
  
  */
  
  Binance_Get_API_Key(Binance_Api_Key,Binance_Api_Secret);
  
  
  
  
   return(INIT_SUCCEEDED);
  }


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnTimer()
  {
    // Market name is unqiue for every echange
    string sym = "BTCUSD";
    // Binance Exchange number 
    int Global_ExchangeNumber = 2; 
    // How many coins, contacts, etc 
    double lot = 10; 
    // Price of the limit order
    double GLOBAL_BUYLIMIT_PRICE = 2345;
    // Price of the stoploss 
    double GLOBAL_STOP_PRICE = 1234;
    // Price of the limit order
    double GLOBAL_LIMITORDER_PRICE = 1233;
    // Price of the trigger price, which activates the limit order
    double GLOBAL_TRIGGER_PRICE = 1232;
    // Order ID : some exchanges are numbers, some echanges are string with numbers. 
    // when an order is created, the order ID is returned 
    string GLOBAL_CANCEL_ORDERID = "order_id_1234";
    
    
    /*
    
    EXHCHANGE_Open_Trade(sym,"BUY","MARKET",NormalizeDouble(lot,8),0,Global_ExchangeNumber);
    
    EXHCHANGE_Open_Trade(sym,"BUY","LIMIT",NormalizeDouble(lot,8),GLOBAL_BUYLIMIT_PRICE,Global_ExchangeNumber);
    
    EXHCHANGE_Open_Trade_Stop(sym,"BUY","STOP_LOSS",NormalizeDouble(lot,8),GLOBAL_STOP_PRICE,Global_ExchangeNumber);
    
    EXHCHANGE_Open_Trade_StopLimit(sym,"BUY","STOP_LOSS_LIMIT",NormalizeDouble(lot,8),GLOBAL_LIMITORDER_PRICE,GLOBAL_TRIGGER_PRICE,Global_ExchangeNumber);
    
    EXHCHANGE_Cancel_Trade(sym,GLOBAL_CANCEL_ORDERID,Global_ExchangeNumber);
    
    EXHCHANGE_GetPrice(sym,Global_ExchangeNumber);
    
    EXHCHANGE_GetBalance(sym,"base",Global_ExchangeNumber);

    */  

  }
        
         
    
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void _MT5_Exchange_Load_API_KEYS(int exchange)
  {
   if(exchange==0)
     {

      Binance_Dex_Get_API_Key(Binance_Api_Key,Binance_Api_Secret);
     }
   if(exchange==1)
     {

      Binance_Get_API_Key(Binance_Api_Key,Binance_Api_Secret);
     }
    
     
   if(exchange==2)
     {

      Bybit_Get_API_Key(Bybit_Api_Key,Bybit_Api_Secret);
     }
   if(exchange==3)
     {

      Bitmex_Get_API_Key(Bitmex_Api_Key,Bitmex_Api_Secret);
     }
   if(exchange==4)
     {

      Kucoin_Get_API_Key(Kucoin_Api_Key,Kucoin_Api_Secret,Kucoin_Passphase);
     }
      if(exchange==5)
     {

      BinanceFutures_Get_API_Key(BinanceFutures_Api_Key,BinanceFutures_Api_Secret,BinanceFutures_LiveDemo);
     }

  }

string what_Global_Exchange(int exchange_number)
  {

   if(exchange_number==0)
     {
      return("BinanceDex");
     }
   if(exchange_number==1)
     {
      return("Binance");
     }
   if(exchange_number==2)
     {
      return("Bybit");
     }
   if(exchange_number==3)
     {
      return("Bitmex");
     }
   if(exchange_number==4)
     {
      return("Kucoin");
     }
     if(exchange_number==5)
     {
      return("BinanceFutures");
     }

   return("");
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void EXHCHANGE_Open_Trade(string sym,string side,string orderType,double orderSize,double orderPrice,int ExchangeNumber)
  {

   if(ExchangeNumber==1)
     {
      Binance_Open_Trade(sym,side,orderType,orderSize,orderPrice);
     }
   if(ExchangeNumber==2)
     {
      Bybit_Open_Trade(sym,side,orderType,orderSize,orderPrice);
     }

   if(ExchangeNumber==3)
     {
      Bitmex_Open_Trade(sym,side,orderType,orderSize,orderPrice);
     }

   if(ExchangeNumber==4)
     {
      Kucoin_Open_Trade(sym,side,orderType,orderSize,orderPrice);
     }
     
     if(ExchangeNumber==5)
     {
      BinanceFutures_Open_Trade(sym,side,orderType,orderSize,orderPrice);
     }

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void EXHCHANGE_Open_Trade_Stop(string sym,string side,string orderType,double orderSize,double orderPrice,int ExchangeNumber)
  {

   if(ExchangeNumber==1)
     {
      Binance_Open_Trade_Stop(sym,side,orderType,orderSize,orderPrice);
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void EXHCHANGE_Open_Trade_StopLimit(string sym,string side,string orderType,double orderSize,double orderPrice,double stopPrice,int ExchangeNumber)
  {

   if(ExchangeNumber==1)
     {
      Binance_Open_Trade_StopLimit(sym,side,orderType,orderSize,orderPrice,stopPrice);
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void EXHCHANGE_GetPosition(string sym,int ExchangeNumber)
  {
   if(ExchangeNumber==2)
     {
      Bybit_Positions(sym,GLOBAL_QUOTE_PRECISION);
     }

   if(ExchangeNumber==3)
     {
      Bitmex_Position(sym);
     }
     
      if(ExchangeNumber==5)
     {
    //  BinanceFutures_Position(sym);
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double EXHCHANGE_Min_Notional_Lotsize(double ask_bid,int lotDigit,int ExchangeNumber)
  {

   if(ExchangeNumber==1)
     {
      return( Binance_Min_Notional_Lotsize(Binance_MIN_NOTIONAL, ask_bid, lotDigit) );
     }
  

   return(0);
  }
// return json string to the user
string EXHCHANGE_GetPriceBest(string sym, int ExchangeNumber)
  {
   if(ExchangeNumber==0)
     {
      Binance_Dex_GetPriceBest(sym);
     }
   if(ExchangeNumber==1)
     {
      Binance_GetPriceBest(sym,GLOBAL_QUOTE_PRECISION);
     }
   if(ExchangeNumber==2)
     {
      Bybit_GetPriceBest(sym);
     }
   if(ExchangeNumber==3)
     {
      Bitmex_GetPriceBest(sym);
     }
      if(ExchangeNumber==5)
     {
      BinanceFutures_GetPriceBest(sym,GLOBAL_QUOTE_PRECISION);
     }
   return("");
  }
// return double value  to the user
double EXHCHANGE_GetPrice(string sym,int ExchangeNumber)
  {

 if(DEV_DEBUG)   Print(" Get Exchange Price "+sym+" ExchangeID:"+IntegerToString(ExchangeNumber));

   double value=0;

   if(ExchangeNumber==0)
     {
      value=Binance_Dex_GetPrice(sym);
     }

   if(ExchangeNumber==1)
     {
      value=Binance_GetPrice(sym);
     }
   if(ExchangeNumber==2)
     {
      value=Bybit_GetPrice(sym);
     }
   if(ExchangeNumber==3)
     {
      value=Bitmex_GetPrice(sym);
     }
   if(ExchangeNumber==4)
     {
      value=Kucoin_GetPrice(sym);
     }
     
     if(ExchangeNumber==5)
     {
      value=BinanceFutures_GetPrice(sym);
     }
   return( value);
  }
// return double value  to the user
bool EXHCHANGE_GetBalance(string sym,string quote_base,int ExchangeNumber)
  {

   if(ExchangeNumber==1)
     {
      Binance_Balance(sym,quote_base);
      return(true);
     }
   if(ExchangeNumber==2)
     {
      Bybit_Balance(sym,quote_base);
      return(true);
     }
   if(ExchangeNumber==3)
     {
      Bitmex_Balance(sym,quote_base);
      return(true);
     }
   if(ExchangeNumber==4)
     {
      Kucoin_Balance(sym,quote_base);
      return(true);
     }
     if(ExchangeNumber==5)
     {
      BinanceFutures_Balance(sym,quote_base);
      return(true);
     }
   return(false);
  }
// return double value  to the user
bool EXHCHANGE_Cancel_Trade(string sym,string orderId,int ExchangeNumber)
  {

   if(ExchangeNumber==1)
     {
      return( Binance_Cancel_Trade(sym,StringToInteger(orderId) ) );

     }

   if(ExchangeNumber==2)
     {
      return( Bybit_Cancel_Trade(sym,orderId) );
     }

   if(ExchangeNumber==3)
     {

      return( Bitmex_Cancel_Trade(sym,orderId) );
     }
     
     if(ExchangeNumber==5)
     {
      return( BinanceFutures_Cancel_Trade(sym,StringToInteger(orderId) ) );

     }

   return(false);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool EXHCHANGE_Cancel_Trade_All(string sym,int ExchangeNumber)
  {

   if(ExchangeNumber==2)
     {
      return( Bybit_Cancel_Trade_All(sym) );
     }
     
     
     if(ExchangeNumber==5)
     {
      return( BinanceFutures_Cancel_Trade_ALL(sym) );
     }
     
     
   return(false);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string EXHCHANGE_GetOpenOrders(string sym,int ExchangeNumber)
  {

   if(ExchangeNumber==1)
     {
      return( Binance_GetOpenOrders(sym) );
     }

   if(ExchangeNumber==2)
     {
      return( Bybit_GetOpenOrders(sym,1) );
     }
   if(ExchangeNumber==3)
     {
      return( Bitmex_GetOpenOrders(sym) );
     }
     
      if(ExchangeNumber==5)
     {
      return( BinanceFutures_GetOpenOrders(sym) );
     }

   return("");
  }


string EXHCHANGE_ClosePosition(string sym,string orderType,int ExchangeNumber)
  {

   if(ExchangeNumber==2)
     {
      return( Bybit_ClosePosition(sym,orderType) );
     }
   if(ExchangeNumber==3)
     {
      return( Bitmex_ClosePosition(sym,orderType) );
     }
     
      if(ExchangeNumber==5)
     {
    //  return( BinanceFutures_ClosePosition(sym,orderType) );
     }
     
   return("");
  }