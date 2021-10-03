package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1696:int = 1;
      
      public static const const_1315:int = 2;
       
      
      private var var_892:String;
      
      private var var_2080:int;
      
      private var var_2084:int;
      
      private var var_2089:int;
      
      private var var_2086:int;
      
      private var var_2085:Boolean;
      
      private var var_2083:Boolean;
      
      private var var_2082:int;
      
      private var var_2081:int;
      
      private var var_2088:Boolean;
      
      private var var_2087:int;
      
      private var var_2079:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_892 = param1.readString();
         this.var_2080 = param1.readInteger();
         this.var_2084 = param1.readInteger();
         this.var_2089 = param1.readInteger();
         this.var_2086 = param1.readInteger();
         this.var_2085 = param1.readBoolean();
         this.var_2083 = param1.readBoolean();
         this.var_2082 = param1.readInteger();
         this.var_2081 = param1.readInteger();
         this.var_2088 = param1.readBoolean();
         this.var_2087 = param1.readInteger();
         this.var_2079 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_892;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2080;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2084;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2089;
      }
      
      public function get responseType() : int
      {
         return this.var_2086;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2085;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2083;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2082;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2081;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2088;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2087;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2079;
      }
   }
}
