package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_123:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_135:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1127:String;
      
      private var var_1264:Array;
      
      private var var_1061:Array;
      
      private var var_1612:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1127 = param2;
         this.var_1264 = param3;
         this.var_1061 = param4;
         if(this.var_1061 == null)
         {
            this.var_1061 = [];
         }
         this.var_1612 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1127;
      }
      
      public function get choices() : Array
      {
         return this.var_1264.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1061.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1612;
      }
   }
}
