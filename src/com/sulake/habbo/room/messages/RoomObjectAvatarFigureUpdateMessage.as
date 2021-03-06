package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_574:String;
      
      private var var_2077:String;
      
      private var var_834:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_574 = param1;
         this.var_834 = param2;
         this.var_2077 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_574;
      }
      
      public function get race() : String
      {
         return this.var_2077;
      }
      
      public function get gender() : String
      {
         return this.var_834;
      }
   }
}
