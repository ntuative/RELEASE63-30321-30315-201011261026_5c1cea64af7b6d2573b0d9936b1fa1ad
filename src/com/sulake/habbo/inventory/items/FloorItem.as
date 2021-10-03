package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_1856:String;
      
      protected var var_1657:Number;
      
      protected var var_2582:Boolean;
      
      protected var var_2583:Boolean;
      
      protected var var_2317:Boolean;
      
      protected var var_2581:Boolean;
      
      protected var var_2584:int;
      
      protected var var_2315:int;
      
      protected var var_2320:int;
      
      protected var var_2319:int;
      
      protected var var_1622:String;
      
      protected var var_2023:int;
      
      protected var var_898:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2317 = param5;
         this.var_2583 = param6;
         this.var_2582 = param7;
         this.var_2581 = param8;
         this.var_1856 = param9;
         this.var_1657 = param10;
         this.var_2584 = param11;
         this.var_2315 = param12;
         this.var_2320 = param13;
         this.var_2319 = param14;
         this.var_1622 = param15;
         this.var_2023 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_1856;
      }
      
      public function get extra() : Number
      {
         return this.var_1657;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2582;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2583;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2317;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2581;
      }
      
      public function get expires() : int
      {
         return this.var_2584;
      }
      
      public function get creationDay() : int
      {
         return this.var_2315;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2320;
      }
      
      public function get creationYear() : int
      {
         return this.var_2319;
      }
      
      public function get slotId() : String
      {
         return this.var_1622;
      }
      
      public function get songId() : int
      {
         return this.var_2023;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_898 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_898;
      }
   }
}
