package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_757:int = 1;
      
      public static const const_769:int = 2;
      
      public static const const_731:int = 3;
      
      public static const const_873:int = 4;
      
      public static const const_672:int = 5;
      
      public static const const_898:int = 6;
       
      
      private var _type:int;
      
      private var var_971:int;
      
      private var var_1995:String;
      
      private var var_1994:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_971 = param2;
         this.var_1995 = param3;
         this.var_1994 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1995;
      }
      
      public function get time() : String
      {
         return this.var_1994;
      }
      
      public function get senderId() : int
      {
         return this.var_971;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
