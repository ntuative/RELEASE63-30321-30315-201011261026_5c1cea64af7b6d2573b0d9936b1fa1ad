package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1510:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_175:MsgWithRequestId;
      
      private var var_520:RoomEventData;
      
      private var var_1927:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_1923:int;
      
      private var var_215:GuestRoomData;
      
      private var var_762:PublicRoomShortData;
      
      private var var_1930:int;
      
      private var var_1929:Boolean;
      
      private var var_1922:int;
      
      private var var_1925:Boolean;
      
      private var var_1430:int;
      
      private var var_1926:Boolean;
      
      private var var_1182:Array;
      
      private var var_1183:Array;
      
      private var var_1924:int;
      
      private var var_1181:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_949:Boolean;
      
      private var var_1928:int;
      
      private var var_1921:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1182 = new Array();
         this.var_1183 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_215 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_215 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_762 = null;
         this.var_215 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_762 = param1.publicSpace;
            this.var_520 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_520 != null)
         {
            this.var_520.dispose();
            this.var_520 = null;
         }
         if(this.var_762 != null)
         {
            this.var_762.dispose();
            this.var_762 = null;
         }
         if(this.var_215 != null)
         {
            this.var_215.dispose();
            this.var_215 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_215 != null)
         {
            this.var_215.dispose();
         }
         this.var_215 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_520 != null)
         {
            this.var_520.dispose();
         }
         this.var_520 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_175 != null && this.var_175 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_175 != null && this.var_175 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_175 != null && this.var_175 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_175 = param1;
         this.var_949 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_175 = param1;
         this.var_949 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_175 = param1;
         this.var_949 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_175 == null)
         {
            return;
         }
         this.var_175.dispose();
         this.var_175 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_175 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_175 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_175 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_520;
      }
      
      public function get avatarId() : int
      {
         return this.var_1923;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_1927;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_215;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_762;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_1929;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_1922;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1430;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_1925;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_1928;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_1930;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_1926;
      }
      
      public function get adIndex() : int
      {
         return this.var_1921;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_1923 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_1922 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_1929 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_1927 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_1925 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1430 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_1928 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_1930 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_1926 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_1921 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1182 = param1;
         this.var_1183 = new Array();
         for each(_loc2_ in this.var_1182)
         {
            if(_loc2_.visible)
            {
               this.var_1183.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1182;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1183;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_1924 = param1.limit;
         this.var_1181 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1181 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_215.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_215 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_215.flatId;
         return this.var_1430 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1181 >= this.var_1924;
      }
      
      public function startLoading() : void
      {
         this.var_949 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_949;
      }
   }
}
