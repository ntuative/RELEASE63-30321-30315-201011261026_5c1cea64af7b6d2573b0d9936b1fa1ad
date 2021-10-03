package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectMoveUpdateMessage extends RoomObjectUpdateMessage
   {
       
      
      private var var_290:IVector3d;
      
      public function RoomObjectMoveUpdateMessage(param1:IVector3d, param2:IVector3d, param3:IVector3d)
      {
         super(param1,param3);
         this.var_290 = param2;
      }
      
      public function get targetLoc() : IVector3d
      {
         if(this.var_290 == null)
         {
            return loc;
         }
         return this.var_290;
      }
      
      public function get realTargetLoc() : IVector3d
      {
         return this.var_290;
      }
   }
}
