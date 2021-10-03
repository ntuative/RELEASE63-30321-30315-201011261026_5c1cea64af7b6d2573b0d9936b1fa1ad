package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_626:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_706)
         {
            _structure = null;
            _assets = null;
            var_241 = null;
            var_248 = null;
            var_574 = null;
            var_498 = null;
            var_285 = null;
            if(!var_1147 && var_37)
            {
               var_37.dispose();
            }
            var_37 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_678 = null;
            var_706 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_626[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_626[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_354:
               switch(_loc3_)
               {
                  case AvatarAction.const_578:
                  case AvatarAction.const_416:
                  case AvatarAction.const_367:
                  case AvatarAction.const_622:
                  case AvatarAction.const_372:
                  case AvatarAction.const_717:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_296:
            case AvatarAction.const_576:
            case AvatarAction.const_232:
            case AvatarAction.const_577:
            case AvatarAction.const_579:
            case AvatarAction.const_696:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
