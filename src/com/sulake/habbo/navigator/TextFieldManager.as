package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_69:ITextFieldWindow;
      
      private var var_612:Boolean;
      
      private var var_1302:String = "";
      
      private var var_1823:int;
      
      private var var_1822:Function;
      
      private var var_2566:String = "";
      
      private var var_125:IWindowContainer;
      
      private var var_2567:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2565:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_69 = param2;
         this.var_1823 = param3;
         this.var_1822 = param4;
         if(param5 != null)
         {
            this.var_612 = true;
            this.var_1302 = param5;
            this.var_69.text = param5;
         }
         Util.setProcDirectly(this.var_69,this.onInputClick);
         this.var_69.addEventListener(WindowKeyboardEvent.const_153,this.checkEnterPress);
         this.var_69.addEventListener(WindowEvent.const_108,this.checkMaxLen);
         this.var_2567 = this.var_69.textBackground;
         this._orgTextBackgroundColor = this.var_69.textBackgroundColor;
         this.var_2565 = this.var_69.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_69.textBackground = this.var_2567;
         this.var_69.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_69.textColor = this.var_2565;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_69.textBackground = true;
         this.var_69.textBackgroundColor = 4294021019;
         this.var_69.textColor = 4278190080;
         if(this.var_125 == null)
         {
            this.var_125 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_125,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_69.parent).addChild(this.var_125);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_125.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_125.findChildByName("border").width = _loc2_.width + 15;
         this.var_125.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_69.getLocalPosition(_loc3_);
         this.var_125.x = _loc3_.x;
         this.var_125.y = _loc3_.y - this.var_125.height + 3;
         var _loc4_:IWindow = this.var_125.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_125.width / 2 - _loc4_.width / 2;
         this.var_125.x += (this.var_69.width - this.var_125.width) / 2;
         this.var_125.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1302 != null)
         {
            this.var_69.text = this.var_1302;
            this.var_612 = true;
         }
         else
         {
            this.var_69.text = "";
            this.var_612 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_612)
         {
            return this.var_2566;
         }
         return this.var_69.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_612 = false;
         this.var_69.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_125 != null)
         {
            this.var_125.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_69;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_612 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_186)
         {
            return;
         }
         if(!this.var_612)
         {
            return;
         }
         this.var_69.text = this.var_2566;
         this.var_612 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(this.var_1822 != null)
            {
               this.var_1822();
            }
         }
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = this.var_69.text;
         if(_loc2_.length > this.var_1823)
         {
            this.var_69.text = _loc2_.substring(0,this.var_1823);
         }
      }
   }
}
