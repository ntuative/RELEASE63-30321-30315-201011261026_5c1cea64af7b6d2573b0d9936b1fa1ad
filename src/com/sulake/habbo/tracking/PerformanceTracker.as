package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_158:IHabboConfigurationManager = null;
      
      private var var_509:int = 0;
      
      private var var_421:Number = 0;
      
      private var var_2605:Array;
      
      private var var_1204:String = "";
      
      private var var_1463:String = "";
      
      private var var_1987:String = "";
      
      private var var_2296:String = "";
      
      private var var_1644:Boolean = false;
      
      private var var_1468:GarbageMonitor = null;
      
      private var var_1203:int = 0;
      
      private var var_1466:int = 1000;
      
      private var var_1205:int = 0;
      
      private var var_1465:int = 60;
      
      private var var_1467:int = 0;
      
      private var var_1464:int = 10;
      
      private var var_1206:int = 0;
      
      private var var_1986:Number = 0.15;
      
      private var var_1985:Boolean = true;
      
      private var var_1988:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2605 = [];
         super();
         this.var_1463 = Capabilities.version;
         this.var_1987 = Capabilities.os;
         this.var_1644 = Capabilities.isDebugger;
         this.var_1204 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1204 == null)
         {
            this.var_1204 = "unknown";
         }
         this.var_1468 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1467 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1463;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_421;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1466 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this.var_1465 = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1464 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_158 = param1;
         this.var_1465 = int(this.var_158.getKey("performancetest.interval","60"));
         this.var_1466 = int(this.var_158.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1464 = int(this.var_158.getKey("performancetest.reportlimit","10"));
         this.var_1986 = Number(this.var_158.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_1985 = Boolean(int(this.var_158.getKey("performancetest.distribution.enabled","1")));
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1468.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1468.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = this.updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++this.var_1203;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1466)
         {
            ++this.var_1205;
            _loc3_ = true;
         }
         else
         {
            ++this.var_509;
            if(this.var_509 <= 1)
            {
               this.var_421 = param1;
            }
            else
            {
               _loc4_ = Number(this.var_509);
               this.var_421 = this.var_421 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - this.var_1467 > this.var_1465 * 1000 && this.var_1206 < this.var_1464)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_421);
            _loc5_ = true;
            if(this.var_1985 && this.var_1206 > 0)
            {
               _loc6_ = this.differenceInPercents(this.var_1988,this.var_421);
               if(_loc6_ < this.var_1986)
               {
                  _loc5_ = false;
               }
            }
            this.var_1467 = getTimer();
            if(_loc5_ || _loc3_)
            {
               this.var_1988 = this.var_421;
               if(this.sendReport())
               {
                  ++this.var_1206;
               }
            }
         }
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,this.var_1204,this.var_1463,this.var_1987,this.var_2296,this.var_1644,_loc4_,_loc3_,this.var_1203,this.var_421,this.var_1205);
            this._connection.send(_loc1_);
            this.var_1203 = 0;
            this.var_421 = 0;
            this.var_509 = 0;
            this.var_1205 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
