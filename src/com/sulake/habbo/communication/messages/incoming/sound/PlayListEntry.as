package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2023:int;
      
      private var var_2329:int;
      
      private var var_2326:String;
      
      private var var_2327:String;
      
      private var var_2328:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2023 = param1;
         this.var_2329 = param2;
         this.var_2326 = param3;
         this.var_2327 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2023;
      }
      
      public function get length() : int
      {
         return this.var_2329;
      }
      
      public function get name() : String
      {
         return this.var_2326;
      }
      
      public function get creator() : String
      {
         return this.var_2327;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2328;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2328 = param1;
      }
   }
}
