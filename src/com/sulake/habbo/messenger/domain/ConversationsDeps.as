package com.sulake.habbo.messenger.domain
{
   import com.sulake.habbo.messenger.HabboMessenger;
   
   public class ConversationsDeps implements IConversationsDeps
   {
       
      
      private var var_114:HabboMessenger;
      
      public function ConversationsDeps(param1:HabboMessenger)
      {
         super();
         this.var_114 = param1;
      }
      
      public function getTabCount() : int
      {
         return this.var_114.messengerView.getTabCount();
      }
      
      public function getText(param1:String) : String
      {
         return this.var_114.getText(param1);
      }
      
      public function createConversation(param1:int) : Conversation
      {
         return this.var_114.createConversation(param1);
      }
      
      public function refresh(param1:Boolean) : void
      {
         this.var_114.messengerView.refresh();
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         this.var_114.messengerView.addMsgToView(param1,param2);
      }
   }
}
