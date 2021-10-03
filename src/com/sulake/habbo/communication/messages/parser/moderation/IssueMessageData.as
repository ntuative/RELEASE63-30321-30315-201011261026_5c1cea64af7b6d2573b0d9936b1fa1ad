package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_155:int = 1;
      
      public static const const_337:int = 2;
      
      public static const const_1300:int = 3;
       
      
      private var var_2330:int;
      
      private var _state:int;
      
      private var var_1214:int;
      
      private var var_2521:int;
      
      private var var_1625:int;
      
      private var var_2519:int;
      
      private var var_2518:int = 0;
      
      private var var_2522:int;
      
      private var var_2520:String;
      
      private var var_1228:int;
      
      private var var_1491:String;
      
      private var var_2390:int;
      
      private var var_2516:String;
      
      private var _message:String;
      
      private var var_1980:int;
      
      private var var_852:String;
      
      private var var_1646:int;
      
      private var var_2517:String;
      
      private var var_313:int;
      
      private var var_2523:String;
      
      private var var_2322:String;
      
      private var var_2010:int;
      
      private var var_2009:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2330;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1214;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2521;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1625;
      }
      
      public function get priority() : int
      {
         return this.var_2519 + this.var_2518;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2522;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2520;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1228;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1491;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2390;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2516;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1980;
      }
      
      public function get roomName() : String
      {
         return this.var_852;
      }
      
      public function get roomType() : int
      {
         return this.var_1646;
      }
      
      public function get flatType() : String
      {
         return this.var_2517;
      }
      
      public function get flatId() : int
      {
         return this.var_313;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2523;
      }
      
      public function get roomResources() : String
      {
         return this.var_2322;
      }
      
      public function get unitPort() : int
      {
         return this.var_2010;
      }
      
      public function get worldId() : int
      {
         return this.var_2009;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2330 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1214 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2521 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1625 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2519 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2518 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2522 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2520 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1228 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1491 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_2390 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2516 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_1980 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_852 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1646 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2517 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_313 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2523 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_2322 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_2010 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_2009 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1625) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
