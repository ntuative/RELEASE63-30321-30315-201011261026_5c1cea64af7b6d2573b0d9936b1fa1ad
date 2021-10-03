package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_667:TileHeightMap = null;
      
      private var var_1022:LegacyWallGeometry = null;
      
      private var var_1021:RoomCamera = null;
      
      private var var_666:SelectedRoomObjectData = null;
      
      private var var_668:SelectedRoomObjectData = null;
      
      private var var_2206:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1022 = new LegacyWallGeometry();
         this.var_1021 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_667;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_667 != null)
         {
            this.var_667.dispose();
         }
         this.var_667 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1022;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1021;
      }
      
      public function get worldType() : String
      {
         return this.var_2206;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2206 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_666;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_666 != null)
         {
            this.var_666.dispose();
         }
         this.var_666 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_668;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_668 != null)
         {
            this.var_668.dispose();
         }
         this.var_668 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_667 != null)
         {
            this.var_667.dispose();
            this.var_667 = null;
         }
         if(this.var_1022 != null)
         {
            this.var_1022.dispose();
            this.var_1022 = null;
         }
         if(this.var_1021 != null)
         {
            this.var_1021.dispose();
            this.var_1021 = null;
         }
         if(this.var_666 != null)
         {
            this.var_666.dispose();
            this.var_666 = null;
         }
         if(this.var_668 != null)
         {
            this.var_668.dispose();
            this.var_668 = null;
         }
      }
   }
}
