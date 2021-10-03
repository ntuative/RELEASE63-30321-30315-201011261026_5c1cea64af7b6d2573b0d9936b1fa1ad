package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_574:String;
      
      private var var_915:String;
      
      private var var_2475:String;
      
      private var var_1699:String;
      
      private var var_2474:int;
      
      private var var_2476:String;
      
      private var var_2477:int;
      
      private var var_2478:int;
      
      private var var_1965:int;
      
      private var _respectLeft:int;
      
      private var var_673:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_574 = param1.readString();
         this.var_915 = param1.readString();
         this.var_2475 = param1.readString();
         this.var_1699 = param1.readString();
         this.var_2474 = param1.readInteger();
         this.var_2476 = param1.readString();
         this.var_2477 = param1.readInteger();
         this.var_2478 = param1.readInteger();
         this.var_1965 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_673 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_574;
      }
      
      public function get sex() : String
      {
         return this.var_915;
      }
      
      public function get customData() : String
      {
         return this.var_2475;
      }
      
      public function get realName() : String
      {
         return this.var_1699;
      }
      
      public function get tickets() : int
      {
         return this.var_2474;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2476;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2477;
      }
      
      public function get directMail() : int
      {
         return this.var_2478;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1965;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_673;
      }
   }
}
