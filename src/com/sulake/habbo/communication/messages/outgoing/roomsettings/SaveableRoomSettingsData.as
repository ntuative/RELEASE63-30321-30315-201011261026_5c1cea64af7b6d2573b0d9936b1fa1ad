package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1424:String;
      
      private var var_2387:int;
      
      private var _password:String;
      
      private var var_1214:int;
      
      private var var_2381:int;
      
      private var var_751:Array;
      
      private var var_2385:Array;
      
      private var var_2388:Boolean;
      
      private var var_2382:Boolean;
      
      private var var_2384:Boolean;
      
      private var var_2389:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2388;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2388 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2382;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2382 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2384;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2384 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2389;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2389 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1424;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1424 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2387;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2387 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1214;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1214 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2381;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2381 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_751;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_751 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2385;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2385 = param1;
      }
   }
}
