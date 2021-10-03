package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2300:int = 0;
      
      private var var_1204:String = "";
      
      private var var_1463:String = "";
      
      private var var_1987:String = "";
      
      private var var_2296:String = "";
      
      private var var_1644:int = 0;
      
      private var var_2298:int = 0;
      
      private var var_2299:int = 0;
      
      private var var_1203:int = 0;
      
      private var var_2297:int = 0;
      
      private var var_1205:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2300 = param1;
         this.var_1204 = param2;
         this.var_1463 = param3;
         this.var_1987 = param4;
         this.var_2296 = param5;
         if(param6)
         {
            this.var_1644 = 1;
         }
         else
         {
            this.var_1644 = 0;
         }
         this.var_2298 = param7;
         this.var_2299 = param8;
         this.var_1203 = param9;
         this.var_2297 = param10;
         this.var_1205 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2300,this.var_1204,this.var_1463,this.var_1987,this.var_2296,this.var_1644,this.var_2298,this.var_2299,this.var_1203,this.var_2297,this.var_1205];
      }
   }
}
