package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1583:int = 1;
      
      public static const const_1682:int = 2;
      
      public static const const_1631:int = 3;
      
      public static const const_1755:int = 4;
      
      public static const const_1397:int = 5;
      
      public static const const_1689:int = 6;
      
      public static const const_1311:int = 7;
      
      public static const const_1265:int = 8;
      
      public static const const_1694:int = 9;
      
      public static const const_1424:int = 10;
      
      public static const const_1264:int = 11;
      
      public static const const_1240:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1493:int;
      
      private var var_2534:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1493 = param1.readInteger();
         this.var_2534 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1493;
      }
      
      public function get info() : String
      {
         return this.var_2534;
      }
   }
}
