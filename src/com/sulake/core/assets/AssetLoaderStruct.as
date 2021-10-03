package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_793:IAssetLoader;
      
      private var var_1710:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1710 = param1;
         this.var_793 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1710;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_793;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_793 != null)
            {
               if(!this.var_793.disposed)
               {
                  this.var_793.dispose();
                  this.var_793 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
