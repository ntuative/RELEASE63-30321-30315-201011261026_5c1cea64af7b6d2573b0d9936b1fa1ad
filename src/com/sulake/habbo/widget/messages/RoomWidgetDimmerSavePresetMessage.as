package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_569:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2068:int;
      
      private var var_2069:int;
      
      private var _color:uint;
      
      private var var_939:int;
      
      private var var_2067:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_569);
         this.var_2068 = param1;
         this.var_2069 = param2;
         this._color = param3;
         this.var_939 = param4;
         this.var_2067 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2068;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2069;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_939;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2067;
      }
   }
}
