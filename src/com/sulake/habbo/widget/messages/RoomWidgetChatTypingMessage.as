package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_709:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_871:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_709);
         this.var_871 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_871;
      }
   }
}
