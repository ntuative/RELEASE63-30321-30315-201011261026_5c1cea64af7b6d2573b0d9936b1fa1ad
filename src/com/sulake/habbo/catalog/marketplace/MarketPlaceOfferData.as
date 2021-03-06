package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2335:int;
      
      private var var_1856:String;
      
      private var var_1631:int;
      
      private var var_2217:int;
      
      private var var_2547:int;
      
      private var var_345:int;
      
      private var var_2336:int = -1;
      
      private var var_1811:int;
      
      private var var_37:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2335 = param3;
         this.var_1856 = param4;
         this.var_1631 = param5;
         this.var_345 = param6;
         this.var_2217 = param7;
         this.var_1811 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_37)
         {
            this.var_37.dispose();
            this.var_37 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2335;
      }
      
      public function get stuffData() : String
      {
         return this.var_1856;
      }
      
      public function get price() : int
      {
         return this.var_1631;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2217;
      }
      
      public function get image() : BitmapData
      {
         return this.var_37;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_37 != null)
         {
            this.var_37.dispose();
         }
         this.var_37 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2547 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2547;
      }
      
      public function get status() : int
      {
         return this.var_345;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2336;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2336 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1631 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1811;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1811 = param1;
      }
   }
}
