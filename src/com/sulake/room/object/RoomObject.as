package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_962:int = 0;
       
      
      private var _id:int;
      
      private var _type:String = "";
      
      private var var_71:Vector3d;
      
      private var var_216:Vector3d;
      
      private var var_1590:Vector3d;
      
      private var var_1591:Vector3d;
      
      private var var_564:Array;
      
      private var var_61:RoomObjectModel;
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_565:IRoomObjectEventHandler;
      
      private var _updateID:int;
      
      private var _instanceId:int = 0;
      
      public function RoomObject(param1:int, param2:int)
      {
         super();
         this._id = param1;
         this.var_71 = new Vector3d();
         this.var_216 = new Vector3d();
         this.var_1590 = new Vector3d();
         this.var_1591 = new Vector3d();
         this.var_564 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            this.var_564[_loc3_] = 0;
            _loc3_--;
         }
         this.var_61 = new RoomObjectModel();
         this._visualization = null;
         this.var_565 = null;
         this._updateID = 0;
         this._instanceId = var_962++;
      }
      
      public function dispose() : void
      {
         this.var_71 = null;
         this.var_216 = null;
         if(this.var_61 != null)
         {
            this.var_61.dispose();
            this.var_61 = null;
         }
         this.var_564 = null;
         this.setVisualization(null);
         this.setEventHandler(null);
      }
      
      public function getId() : int
      {
         return this._id;
      }
      
      public function getType() : String
      {
         return this._type;
      }
      
      public function getInstanceId() : int
      {
         return this._instanceId;
      }
      
      public function getLocation() : IVector3d
      {
         this.var_1590.assign(this.var_71);
         return this.var_1590;
      }
      
      public function getDirection() : IVector3d
      {
         this.var_1591.assign(this.var_216);
         return this.var_1591;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return this.var_61;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return this.var_61;
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.var_564.length)
         {
            return this.var_564[param1];
         }
         return -1;
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return this._visualization;
      }
      
      public function setType(param1:String) : void
      {
         this._type = param1;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_71.x != param1.x || this.var_71.y != param1.y || this.var_71.z != param1.z)
         {
            this.var_71.x = param1.x;
            this.var_71.y = param1.y;
            this.var_71.z = param1.z;
            ++this._updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_216.x != param1.x || this.var_216.y != param1.y || this.var_216.z != param1.z)
         {
            this.var_216.x = (param1.x % 360 + 360) % 360;
            this.var_216.y = (param1.y % 360 + 360) % 360;
            this.var_216.z = (param1.z % 360 + 360) % 360;
            ++this._updateID;
         }
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < this.var_564.length)
         {
            if(this.var_564[param2] != param1)
            {
               this.var_564[param2] = param1;
               ++this._updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != this._visualization)
         {
            if(this._visualization != null)
            {
               this._visualization.dispose();
            }
            this._visualization = param1;
            if(this._visualization != null)
            {
               this._visualization.object = this;
            }
         }
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == this.var_565)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = this.var_565;
         if(_loc2_ != null)
         {
            this.var_565 = null;
            _loc2_.object = null;
         }
         this.var_565 = param1;
         if(this.var_565 != null)
         {
            this.var_565.object = this;
         }
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return this.var_565;
      }
      
      public function getUpdateID() : int
      {
         return this._updateID;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return this.getEventHandler();
      }
   }
}
