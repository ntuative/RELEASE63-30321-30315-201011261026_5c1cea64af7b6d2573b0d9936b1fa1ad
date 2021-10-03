package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.core.utils.Map;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class FurniturePlane
   {
       
      
      private var var_1423:int = -1;
      
      private var var_1176:Number = 0.0;
      
      private var var_1895:Number = 0.0;
      
      private var var_1897:Number = 0.0;
      
      private var var_1898:Number = 0.0;
      
      private var var_942:Vector3d = null;
      
      private var var_71:Vector3d = null;
      
      private var var_256:Vector3d = null;
      
      private var var_257:Vector3d = null;
      
      private var var_623:Vector3d = null;
      
      private var var_622:Vector3d = null;
      
      private var var_517:Vector3d = null;
      
      private var _isVisible:Boolean = true;
      
      private var _bitmapData:BitmapData = null;
      
      private var var_174:Map = null;
      
      private var _offset:Point = null;
      
      private var var_1899:Number = 0;
      
      private var _color:uint = 0;
      
      private var var_1896:Boolean = false;
      
      private var _id:String = null;
      
      private var var_132:Vector3d = null;
      
      private var var_100:Vector3d = null;
      
      private var var_79:Vector3d = null;
      
      private var var_101:Vector3d = null;
      
      private var _width:Number = 0.0;
      
      private var _height:Number = 0.0;
      
      public function FurniturePlane(param1:IVector3d, param2:IVector3d, param3:IVector3d)
      {
         super();
         this.var_942 = new Vector3d();
         this.var_71 = new Vector3d();
         this.var_71.assign(param1);
         this.var_256 = new Vector3d();
         this.var_256.assign(param2);
         this.var_257 = new Vector3d();
         this.var_257.assign(param3);
         this.var_623 = new Vector3d();
         this.var_623.assign(param2);
         this.var_622 = new Vector3d();
         this.var_622.assign(param3);
         this.var_517 = Vector3d.crossProduct(this.var_256,this.var_257);
         if(this.var_517.length > 0)
         {
            this.var_517.mul(1 / this.var_517.length);
         }
         this._offset = new Point();
         this.var_132 = new Vector3d();
         this.var_100 = new Vector3d();
         this.var_79 = new Vector3d();
         this.var_101 = new Vector3d();
         this.var_174 = new Map();
      }
      
      public function get bitmapData() : BitmapData
      {
         if(this._isVisible)
         {
            if(this._bitmapData != null)
            {
               return this._bitmapData.clone();
            }
         }
         return null;
      }
      
      public function get visible() : Boolean
      {
         return this._isVisible;
      }
      
      public function get offset() : Point
      {
         return this._offset;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1899;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function set color(param1:uint) : void
      {
         this._color = param1;
      }
      
      public function get leftSide() : IVector3d
      {
         return this.var_256;
      }
      
      public function get rightSide() : IVector3d
      {
         return this.var_257;
      }
      
      public function get location() : IVector3d
      {
         return this.var_71;
      }
      
      public function get normal() : IVector3d
      {
         return this.var_517;
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this._bitmapData != null)
         {
            this._bitmapData.dispose();
            this._bitmapData = null;
         }
         if(this.var_174 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_174.length)
            {
               _loc2_ = this.var_174.getWithIndex(_loc1_) as BitmapData;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            this.var_174.dispose();
            this.var_174 = null;
         }
         this.var_942 = null;
         this.var_71 = null;
         this.var_256 = null;
         this.var_257 = null;
         this.var_623 = null;
         this.var_622 = null;
         this.var_517 = null;
         this.var_132 = null;
         this.var_100 = null;
         this.var_79 = null;
         this.var_101 = null;
      }
      
      public function setRotation(param1:Boolean) : void
      {
         if(param1 != this.var_1896)
         {
            if(!param1)
            {
               this.var_256.assign(this.var_623);
               this.var_257.assign(this.var_622);
            }
            else
            {
               this.var_256.assign(this.var_623);
               this.var_256.mul(this.var_622.length / this.var_623.length);
               this.var_257.assign(this.var_622);
               this.var_257.mul(this.var_623.length / this.var_622.length);
            }
            this.var_1423 = -1;
            this.var_1176 = this.var_1176 - 1;
            this.var_1896 = param1;
            this.resetTextureCache();
         }
      }
      
      private function cacheTexture(param1:String, param2:BitmapData) : Boolean
      {
         var _loc3_:BitmapData = this.var_174.remove(param1) as BitmapData;
         if(_loc3_ != null && param2 != _loc3_)
         {
            _loc3_.dispose();
         }
         this.var_174.add(param1,param2);
         return true;
      }
      
      private function resetTextureCache() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this.var_174 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_174.length)
            {
               _loc2_ = this.var_174.getWithIndex(_loc1_) as BitmapData;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            this.var_174.reset();
         }
      }
      
      private function getTextureIdentifier(param1:IRoomGeometry) : String
      {
         if(param1 == null)
         {
            return null;
         }
         return String(param1.scale);
      }
      
      private function needsNewTexture(param1:IRoomGeometry) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:String = this.getTextureIdentifier(param1);
         var _loc3_:BitmapData = this.var_174.getValue(_loc2_) as BitmapData;
         if(this._width > 0 && this._height > 0)
         {
            if(_loc3_ == null)
            {
               return true;
            }
         }
         return false;
      }
      
      private function getTexture(param1:IRoomGeometry, param2:int) : BitmapData
      {
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:String = this.getTextureIdentifier(param1);
         var _loc4_:* = null;
         if(this.needsNewTexture(param1))
         {
            _loc5_ = Number(this.var_256.length * param1.scale);
            _loc6_ = Number(this.var_257.length * param1.scale);
            if(_loc5_ < 1)
            {
               _loc5_ = 1;
            }
            if(_loc6_ < 1)
            {
               _loc6_ = 1;
            }
            _loc7_ = param1.getCoordinatePosition(this.var_517);
            _loc4_ = this.var_174.getValue(_loc3_) as BitmapData;
            if(_loc4_ == null)
            {
               _loc4_ = new BitmapData(_loc5_,_loc6_,true,4278190080 | this._color);
               if(_loc4_ != null)
               {
                  this.cacheTexture(_loc3_,_loc4_);
               }
            }
         }
         else
         {
            _loc4_ = this.var_174.getValue(_loc3_) as BitmapData;
         }
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         return null;
      }
      
      public function update(param1:IRoomGeometry, param2:int) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = null;
         if(param1 == null || this.var_71 == null && this.var_942 != null || this.var_256 == null || this.var_257 == null || this.var_517 == null)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.updateId != this.var_1423)
         {
            this.var_1423 = param1.updateId;
            _loc4_ = param1.direction;
            if(_loc4_ != null && (_loc4_.x != this.var_1176 || _loc4_.y != this.var_1895 || _loc4_.z != this.var_1897 || param1.scale != this.var_1898))
            {
               this.var_1176 = _loc4_.x;
               this.var_1895 = _loc4_.y;
               this.var_1897 = _loc4_.z;
               this.var_1898 = param1.scale;
               _loc3_ = true;
               _loc5_ = 0;
               _loc5_ = Number(Vector3d.cosAngle(param1.directionAxis,this.normal));
               if(_loc5_ > -0.001)
               {
                  if(this._isVisible)
                  {
                     this._isVisible = false;
                     return true;
                  }
                  return false;
               }
               this.updateCorners(param1);
               _loc6_ = param1.getScreenPosition(this.var_942);
               _loc7_ = _loc6_.z;
               _loc8_ = Math.max(this.var_132.z - _loc7_,this.var_100.z - _loc7_,this.var_79.z - _loc7_,this.var_101.z - _loc7_);
               this.var_1899 = _loc8_;
               this._isVisible = true;
            }
         }
         if(this.needsNewTexture(param1) || _loc3_)
         {
            if(this._bitmapData == null || this._width != this._bitmapData.width || this._height != this._bitmapData.height)
            {
               if(this._bitmapData != null)
               {
                  this._bitmapData.dispose();
                  this._bitmapData = null;
                  if(this._width < 1 || this._height < 1)
                  {
                     return true;
                  }
               }
               else if(this._width < 1 || this._height < 1)
               {
                  return false;
               }
               this._bitmapData = new BitmapData(this._width,this._height,true,16777215);
               this._bitmapData.lock();
            }
            else
            {
               this._bitmapData.lock();
               this._bitmapData.fillRect(this._bitmapData.rect,16777215);
            }
            _loc9_ = this.getTexture(param1,param2);
            if(_loc9_ != null)
            {
               this.renderTexture(param1,_loc9_);
            }
            this._bitmapData.unlock();
            return true;
         }
         return false;
      }
      
      private function updateCorners(param1:IRoomGeometry) : void
      {
         this.var_132.assign(param1.getScreenPosition(this.var_71));
         this.var_100.assign(param1.getScreenPosition(Vector3d.sum(this.var_71,this.var_257)));
         this.var_79.assign(param1.getScreenPosition(Vector3d.sum(Vector3d.sum(this.var_71,this.var_256),this.var_257)));
         this.var_101.assign(param1.getScreenPosition(Vector3d.sum(this.var_71,this.var_256)));
         this._offset = param1.getScreenPoint(this.var_942);
         this.var_132.x = Math.round(this.var_132.x);
         this.var_132.y = Math.round(this.var_132.y);
         this.var_100.x = Math.round(this.var_100.x);
         this.var_100.y = Math.round(this.var_100.y);
         this.var_79.x = Math.round(this.var_79.x);
         this.var_79.y = Math.round(this.var_79.y);
         this.var_101.x = Math.round(this.var_101.x);
         this.var_101.y = Math.round(this.var_101.y);
         this._offset.x = Math.round(this._offset.x);
         this._offset.y = Math.round(this._offset.y);
         var _loc2_:Number = Math.min(this.var_132.x,this.var_100.x,this.var_79.x,this.var_101.x);
         var _loc3_:Number = Math.max(this.var_132.x,this.var_100.x,this.var_79.x,this.var_101.x);
         var _loc4_:Number = Math.min(this.var_132.y,this.var_100.y,this.var_79.y,this.var_101.y);
         var _loc5_:Number = Math.max(this.var_132.y,this.var_100.y,this.var_79.y,this.var_101.y);
         _loc3_ -= _loc2_;
         this._offset.x -= _loc2_;
         this.var_132.x -= _loc2_;
         this.var_100.x -= _loc2_;
         this.var_79.x -= _loc2_;
         this.var_101.x -= _loc2_;
         _loc5_ -= _loc4_;
         this._offset.y -= _loc4_;
         this.var_132.y -= _loc4_;
         this.var_100.y -= _loc4_;
         this.var_79.y -= _loc4_;
         this.var_101.y -= _loc4_;
         this._width = _loc3_;
         this._height = _loc5_;
      }
      
      private function renderTexture(param1:IRoomGeometry, param2:BitmapData) : void
      {
         if(this.var_132 == null || this.var_100 == null || this.var_79 == null || this.var_101 == null || param2 == null || this._bitmapData == null)
         {
            return;
         }
         var _loc3_:Number = this.var_101.x - this.var_79.x;
         var _loc4_:Number = this.var_101.y - this.var_79.y;
         var _loc5_:Number = this.var_100.x - this.var_79.x;
         var _loc6_:Number = this.var_100.y - this.var_79.y;
         if(Math.abs(_loc5_ - param2.width) <= 1)
         {
            _loc5_ = param2.width;
         }
         if(Math.abs(_loc6_ - param2.width) <= 1)
         {
            _loc6_ = param2.width;
         }
         if(Math.abs(_loc3_ - param2.height) <= 1)
         {
            _loc3_ = param2.height;
         }
         if(Math.abs(_loc4_ - param2.height) <= 1)
         {
            _loc4_ = param2.height;
         }
         var _loc7_:Number = _loc5_ / param2.width;
         var _loc8_:Number = _loc6_ / param2.width;
         var _loc9_:Number = _loc3_ / param2.height;
         var _loc10_:Number = _loc4_ / param2.height;
         var _loc11_:Matrix = new Matrix();
         _loc11_.a = _loc7_;
         _loc11_.b = _loc8_;
         _loc11_.c = _loc9_;
         _loc11_.d = _loc10_;
         _loc11_.translate(this.var_79.x,this.var_79.y);
         this.draw(param2,_loc11_);
      }
      
      private function draw(param1:BitmapData, param2:Matrix) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(this._bitmapData != null)
         {
            if(param2.a == 1 && param2.d == 1 && param2.c == 0 && param2.b != 0 && Math.abs(param2.b) <= 1)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               _loc5_ = 0;
               _loc6_ = 0;
               if(param2.b > 0)
               {
                  ++param2.ty;
               }
               _loc7_ = 0;
               while(_loc3_ < param1.width)
               {
                  _loc3_++;
                  _loc5_ += Math.abs(param2.b);
                  if(_loc5_ >= 1)
                  {
                     this._bitmapData.copyPixels(param1,new Rectangle(_loc4_ + _loc6_,0,_loc3_ - _loc4_,param1.height),new Point(param2.tx + _loc4_,param2.ty + _loc7_),null,null,true);
                     _loc4_ = _loc3_;
                     if(param2.b > 0)
                     {
                        _loc7_++;
                     }
                     else
                     {
                        _loc7_--;
                     }
                     _loc5_ = 0;
                  }
               }
               if(_loc5_ > 0)
               {
                  this._bitmapData.copyPixels(param1,new Rectangle(_loc4_,0,_loc3_ - _loc4_,param1.height),new Point(param2.tx + _loc4_,param2.ty + _loc7_),null,null,true);
               }
               return;
            }
            this._bitmapData.draw(param1,param2,null,null,null,false);
         }
      }
   }
}