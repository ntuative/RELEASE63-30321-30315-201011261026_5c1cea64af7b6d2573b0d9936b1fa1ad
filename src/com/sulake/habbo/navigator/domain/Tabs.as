package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_380:int = 1;
      
      public static const const_214:int = 2;
      
      public static const const_273:int = 3;
      
      public static const const_331:int = 4;
      
      public static const const_217:int = 5;
      
      public static const const_351:int = 1;
      
      public static const const_645:int = 2;
      
      public static const const_712:int = 3;
      
      public static const const_775:int = 4;
      
      public static const const_230:int = 5;
      
      public static const const_714:int = 6;
      
      public static const const_762:int = 7;
      
      public static const const_203:int = 8;
      
      public static const const_352:int = 9;
      
      public static const const_1573:int = 10;
      
      public static const const_575:int = 11;
      
      public static const const_467:int = 12;
       
      
      private var var_380:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_380 = new Array();
         this.var_380.push(new Tab(this._navigator,const_380,const_467,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_525));
         this.var_380.push(new Tab(this._navigator,const_214,const_351,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_525));
         this.var_380.push(new Tab(this._navigator,const_331,const_575,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1065));
         this.var_380.push(new Tab(this._navigator,const_273,const_230,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_525));
         this.var_380.push(new Tab(this._navigator,const_217,const_203,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_618));
         this.setSelectedTab(const_380);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_331;
      }
      
      public function get tabs() : Array
      {
         return this.var_380;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_380)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_380)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_380)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
