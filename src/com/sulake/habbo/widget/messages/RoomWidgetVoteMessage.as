package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_138:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1634:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_138);
         this.var_1634 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_1634;
      }
   }
}
