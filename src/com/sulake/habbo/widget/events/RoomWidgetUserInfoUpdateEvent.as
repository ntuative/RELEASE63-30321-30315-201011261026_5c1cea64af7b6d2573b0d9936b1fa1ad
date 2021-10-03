package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_202:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_245:String = "RWUIUE_PEER";
      
      public static const const_1414:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_990:int = 2;
      
      public static const const_1062:int = 3;
      
      public static const const_1386:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1698:String = "";
      
      private var var_1905:int;
      
      private var var_1908:int = 0;
      
      private var var_1907:int = 0;
      
      private var var_574:String = "";
      
      private var var_37:BitmapData = null;
      
      private var var_240:Array;
      
      private var var_1177:int = 0;
      
      private var var_2301:String = "";
      
      private var var_2302:int = 0;
      
      private var var_2303:int = 0;
      
      private var var_1659:Boolean = false;
      
      private var var_1699:String = "";
      
      private var var_2396:Boolean = false;
      
      private var var_2403:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2399:Boolean = false;
      
      private var var_2398:Boolean = false;
      
      private var var_2404:Boolean = false;
      
      private var var_2402:Boolean = false;
      
      private var var_2397:Boolean = false;
      
      private var var_2401:Boolean = false;
      
      private var var_2400:int = 0;
      
      private var var_1661:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_240 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1698 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1698;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1905 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1905;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_1908 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_1908;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_1907 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_1907;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_574 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_574;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_37 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_37;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_240 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_240;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1177 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1177;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2301 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2301;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2396 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2396;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2399 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2399;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2398 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2398;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2404 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2404;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2402 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2402;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2397 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2397;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2401 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2401;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2400 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2400;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2403 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2403;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1661 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1661;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2302 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2302;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2303 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2303;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1659 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1659;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1699 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1699;
      }
   }
}
