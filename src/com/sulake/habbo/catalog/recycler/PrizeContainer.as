package com.sulake.habbo.catalog.recycler
{
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   
   public class PrizeContainer extends PrizeGridItem
   {
       
      
      private var var_2036:String;
      
      private var var_1670:int;
      
      private var var_2347:int;
      
      private var _furnitureData:IFurnitureData;
      
      private var var_2622:PrizeGridItem;
      
      public function PrizeContainer(param1:String, param2:int, param3:IFurnitureData, param4:int)
      {
         super();
         this.var_2036 = param1;
         this.var_1670 = param2;
         this._furnitureData = param3;
         this.var_2347 = param4;
      }
      
      public function setIcon(param1:IRoomEngine) : void
      {
         initProductIcon(param1,this._furnitureData.type,this.var_1670);
      }
      
      public function get productItemType() : String
      {
         return this.var_2036;
      }
      
      public function get productItemTypeId() : int
      {
         return this.var_1670;
      }
      
      public function get gridItem() : PrizeGridItem
      {
         return this.var_2622;
      }
      
      public function get oddsLevelId() : int
      {
         return this.var_2347;
      }
      
      public function get title() : String
      {
         if(this._furnitureData == null)
         {
            return "";
         }
         return this._furnitureData.title;
      }
   }
}
