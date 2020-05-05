# MT5-Bridge-Bitmex-Bybit-Binance
[REPO MOVED}(https://github.com/fx4btc/CryptoBridgePro)

1. Bitmex
2. Binance, BinanceUS, BinanceFutures, BinanceDEX
3. Bybit 
4. Kucoin 
5. Need another exchange? Contact the [developer](https://t.me/Hedgebitcoin) 

Use the libraries with your own robots 
1. #import "Binance_api.ex5" - See the FX4BTC_Binance_API_v10 mql5 code for a complete example
2. OnInit() add the exchange API function such as **Binance_Get_API_Key(Binance_Api_Key,Binance_Api_Secret);** 
3. OnTick() use the library functions such as Binance_GetOpenOrders(), Binance_GetPrice(), Binance_Open_Trade()

By making your own bot and using the CryptoBridgePro Libraries, you have endless possibilities with your strategy development. 

# Classic UI
![Version_One](https://i.imgur.com/HJ3fDLu.png)

# Notes
## CryptobridgePro 
connects to several crypto exchanges [including binance, bitmex, and bybit](https://github.com/fx4btc/CryptoBridgePro) 

1. Allow webrequests
2. Allow DLL imports
3. Insert your API Keys
4. Press the red Button "Enable Exchange"
5. Press the exchange name, such as Binance
6. Type in the market that you want to trade 
7. Select your volume, contracts, or number of coins for your order size
8. Click the "Orderbook" or "Price" button to receive quotes 
9. Click the "Balance" button to verify your api keys are working
10. Begin trading by clicking the "Buy" or "Sell" button
11. Insert a "Buy Price" for your buy limit order then click "Bid"
12. Click the "B.Bid" button to place your buy limit on top of the orderbook

For Automated Trading

1. Click the red button "EnableBots"

2. If you need to change the symbol, click "Enable Sym" and this will map the symbol from MT5 orders to the market name you have selected within the UI. For example, at EvolveMarkets, their bitcoin/usd market is called "BTCUSD" while Bitmex market is called "XBTUSD" or futures contract symbol. Therefore, within the UI, you enter XBTUSD while your robot trades within MT5 on BTCUSD 

3. Enter the multiplier value. For example, MT5 allows 0.01 Lot which is equal to 0.01 BTC , so if you want to buy 0.01 of BTC at Bitmex, you need to use the Multiplier of 9000. This will place 90 contracts on Bitmex. Using GenesisMarkets MT5 with Binance Exchange is a lot easier , Multiplier is 1 since you are buying and selling coins. 

Datafeeds: Bitmex assets on MT5 at
[Evolve Markets](https://evolve.markets/r/270fefe2)
Open a Demo or Live account

Datafeeds: Binance assets on MT5 at
[Genesis Markets](https://genesismarkets.io/?ref=780028)
Open a Demo or Live account
