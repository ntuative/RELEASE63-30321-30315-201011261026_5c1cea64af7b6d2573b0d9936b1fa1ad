package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SignMessageComposer implements IMessageComposer
   {
       
      
      private var var_1938:int;
      
      public function SignMessageComposer(param1:int)
      {
         super();
         this.var_1938 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1938];
      }
      
      public function dispose() : void
      {
      }
   }
}
