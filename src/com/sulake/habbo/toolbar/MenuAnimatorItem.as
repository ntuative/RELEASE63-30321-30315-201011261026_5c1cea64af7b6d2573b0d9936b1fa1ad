package com.sulake.habbo.toolbar
{
   import com.sulake.core.window.IWindowContainer;
   import flash.geom.Point;
   
   public class MenuAnimatorItem
   {
       
      
      private var _icon:ToolbarIcon;
      
      private var var_2294:String;
      
      private var var_634:String;
      
      private var _window:IWindowContainer;
      
      private var var_2573:Point;
      
      private var _target:Point;
      
      private var _active:Boolean;
      
      private var var_343:Boolean;
      
      private var var_2346:Boolean;
      
      private var var_2345:Array;
      
      public function MenuAnimatorItem(param1:String, param2:ToolbarIcon)
      {
         super();
         this.var_2294 = param1;
         this._icon = param2;
      }
      
      public function get menuId() : String
      {
         return this.var_2294;
      }
      
      public function get margin() : int
      {
         return this._icon.windowMargin;
      }
      
      public function get bottomMargin() : int
      {
         return this._icon.group.windowBottomMargin;
      }
      
      public function get windowOffsetFromIcon() : int
      {
         return this._icon.windowOffsetFromIcon;
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_634 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_634;
      }
      
      public function set window(param1:IWindowContainer) : void
      {
         this._window = param1;
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function set target(param1:Point) : void
      {
         this._target = param1;
      }
      
      public function get target() : Point
      {
         return this._target;
      }
      
      public function set offsetLoc(param1:Point) : void
      {
         this.var_2573 = param1;
      }
      
      public function get offsetLoc() : Point
      {
         return this.var_2573;
      }
      
      public function set active(param1:Boolean) : void
      {
         this._active = param1;
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_343 = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.var_343;
      }
      
      public function set lockToIcon(param1:Boolean) : void
      {
         this.var_2346 = param1;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2346;
      }
      
      public function set yieldList(param1:Array) : void
      {
         this.var_2345 = param1;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2345;
      }
   }
}
