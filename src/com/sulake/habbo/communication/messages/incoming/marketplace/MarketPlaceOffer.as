package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2335:int;
      
      private var var_1856:String;
      
      private var var_1631:int;
      
      private var var_345:int;
      
      private var var_2336:int = -1;
      
      private var var_2217:int;
      
      private var var_1811:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2335 = param3;
         this.var_1856 = param4;
         this.var_1631 = param5;
         this.var_345 = param6;
         this.var_2336 = param7;
         this.var_2217 = param8;
         this.var_1811 = param9;
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
      
      public function get status() : int
      {
         return this.var_345;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2336;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2217;
      }
      
      public function get offerCount() : int
      {
         return this.var_1811;
      }
   }
}
