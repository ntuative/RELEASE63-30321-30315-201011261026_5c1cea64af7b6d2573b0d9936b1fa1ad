package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_150:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_574:String = "";
      
      private var var_834:String = "";
      
      private var var_1826:String = "";
      
      private var var_1905:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_150,param1,param7,param8);
         this._userId = param2;
         this.var_574 = param3;
         this.var_834 = param4;
         this.var_1826 = param5;
         this.var_1905 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_574;
      }
      
      public function get gender() : String
      {
         return this.var_834;
      }
      
      public function get customInfo() : String
      {
         return this.var_1826;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1905;
      }
   }
}
