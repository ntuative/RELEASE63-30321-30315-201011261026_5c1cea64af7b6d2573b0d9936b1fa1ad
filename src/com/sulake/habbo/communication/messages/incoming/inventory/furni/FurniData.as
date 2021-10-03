package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2156:int;
      
      private var var_1262:String;
      
      private var _objId:int;
      
      private var var_1713:int;
      
      private var _category:int;
      
      private var var_1856:String;
      
      private var var_2458:Boolean;
      
      private var var_2456:Boolean;
      
      private var var_2459:Boolean;
      
      private var var_2457:Boolean;
      
      private var var_2284:int;
      
      private var var_1657:int;
      
      private var var_1622:String = "";
      
      private var var_2023:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2156 = param1;
         this.var_1262 = param2;
         this._objId = param3;
         this.var_1713 = param4;
         this._category = param5;
         this.var_1856 = param6;
         this.var_2458 = param7;
         this.var_2456 = param8;
         this.var_2459 = param9;
         this.var_2457 = param10;
         this.var_2284 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1622 = param1;
         this.var_1657 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2156;
      }
      
      public function get itemType() : String
      {
         return this.var_1262;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1713;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1856;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2458;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2456;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2459;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2457;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2284;
      }
      
      public function get slotId() : String
      {
         return this.var_1622;
      }
      
      public function get songId() : int
      {
         return this.var_2023;
      }
      
      public function get extra() : int
      {
         return this.var_1657;
      }
   }
}
