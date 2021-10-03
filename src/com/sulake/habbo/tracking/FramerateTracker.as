package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1467:int;
      
      private var var_2425:int;
      
      private var var_1095:int;
      
      private var var_421:Number;
      
      private var var_2424:Boolean;
      
      private var var_2426:int;
      
      private var var_1721:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2425 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2426 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2424 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1095;
         var _loc3_:int = getTimer();
         if(this.var_1095 == 1)
         {
            this.var_421 = param1;
            this.var_1467 = _loc3_;
         }
         else
         {
            _loc4_ = Number(this.var_1095);
            this.var_421 = this.var_421 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2424 && _loc3_ - this.var_1467 >= this.var_2425 && this.var_1721 < this.var_2426)
         {
            _loc5_ = 1000 / this.var_421;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1721;
            this.var_1467 = _loc3_;
            this.var_1095 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
