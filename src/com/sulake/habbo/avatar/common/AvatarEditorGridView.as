package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class AvatarEditorGridView
   {
       
      
      private const const_1142:int = 2;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _view:IWindowContainer;
      
      private var var_1087:Boolean = true;
      
      private var var_61:IAvatarEditorCategoryModel;
      
      private var var_1214:String;
      
      private var var_533:IItemGridWindow;
      
      private var var_429:Array;
      
      public function AvatarEditorGridView(param1:IAvatarEditorCategoryModel, param2:String, param3:IHabboWindowManager, param4:IAssetLibrary)
      {
         super();
         this.var_61 = param1;
         this.var_1214 = param2;
         this._assetLibrary = param4;
         this._windowManager = param3;
         var _loc5_:XmlAsset = this._assetLibrary.getAssetByName("AvatarEditorGrid") as XmlAsset;
         this._view = IWindowContainer(this._windowManager.buildFromXML(_loc5_.content as XML));
         if(this._view != null)
         {
            this.var_533 = this._view.findChildByName("part_thumbs") as IItemGridWindow;
            this.var_429 = new Array();
            this.var_429.push(this._view.findChildByName("palette0") as IItemGridWindow);
            this.var_429.push(this._view.findChildByName("palette1") as IItemGridWindow);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this.var_533)
         {
            this.var_533.dispose();
            this.var_533 = null;
         }
         if(this.var_429)
         {
            for each(_loc1_ in this.var_429)
            {
               if(_loc1_ != null)
               {
                  _loc1_.dispose();
                  _loc1_ = null;
               }
            }
            this.var_429 = null;
         }
         this.var_61 = null;
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         this._windowManager = null;
         this._assetLibrary = null;
      }
      
      public function get window() : IWindowContainer
      {
         if(this._view == null)
         {
            return null;
         }
         if(this._view.disposed)
         {
            return null;
         }
         return this._view;
      }
      
      public function initFromList() : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc1_:CategoryData = this.var_61.getCategoryData(this.var_1214);
         if(!_loc1_)
         {
            return;
         }
         this.var_533.removeGridItems();
         for each(_loc2_ in _loc1_.parts)
         {
            if(_loc2_)
            {
               this.var_533.addGridItem(_loc2_.view);
               _loc2_.view.procedure = this.partEventProc;
               if(_loc2_.isSelected)
               {
                  this.showPalettes(_loc2_.colorLayerCount);
               }
            }
         }
         _loc3_ = 0;
         while(_loc3_ < this.const_1142)
         {
            _loc4_ = _loc1_.getPalette(_loc3_);
            _loc5_ = this.var_429[_loc3_] as IItemGridWindow;
            if(!(!_loc4_ || !_loc5_))
            {
               for each(_loc6_ in _loc4_)
               {
                  _loc5_.addGridItem(_loc6_.view);
                  _loc6_.view.procedure = this.paletteEventProc;
               }
            }
            _loc3_++;
         }
         this.var_1087 = false;
      }
      
      public function showPalettes(param1:int) : void
      {
         var _loc2_:IWindowContainer = this._view.findChildByName("palette_container0") as IWindowContainer;
         var _loc3_:IWindowContainer = this._view.findChildByName("palette_container1") as IWindowContainer;
         if(!_loc2_ || !_loc3_)
         {
            return;
         }
         var _loc4_:ITextWindow = this._view.findChildByName("palette_desc_0") as ITextWindow;
         var _loc5_:ITextWindow = this._view.findChildByName("palette_desc_1") as ITextWindow;
         if(!_loc4_ || !_loc5_)
         {
            return;
         }
         if(param1 <= 1)
         {
            _loc2_.width = 318;
            _loc3_.visible = false;
            _loc4_.visible = false;
            _loc5_.visible = false;
         }
         else
         {
            _loc2_.width = 156;
            _loc3_.width = 156;
            _loc3_.visible = true;
            _loc4_.visible = true;
            _loc5_.visible = true;
         }
      }
      
      public function get firstView() : Boolean
      {
         return this.var_1087;
      }
      
      public function updatePart(param1:int, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = this.var_533.getGridItemAt(param1);
         if(!_loc3_)
         {
            return;
         }
         _loc3_ = param2;
      }
      
      private function partEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         if(param1.type == WindowMouseEvent.const_41)
         {
            _loc3_ = this.var_533.getGridItemIndex(param1.window);
            this.var_61.selectPart(this.var_1214,_loc3_);
         }
      }
      
      private function paletteEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         if(param1.type == WindowMouseEvent.const_41)
         {
            _loc6_ = param1.window;
            _loc7_ = 0;
            while(_loc7_ < this.const_1142)
            {
               if(this.var_429.length > _loc7_)
               {
                  _loc4_ = this.var_429[_loc7_] as IItemGridWindow;
                  _loc5_ = _loc4_.getGridItemIndex(_loc6_);
                  if(_loc5_ > -1)
                  {
                     this.var_61.selectColor(this.var_1214,_loc5_,_loc7_);
                     return;
                  }
               }
               _loc7_++;
            }
         }
      }
   }
}
