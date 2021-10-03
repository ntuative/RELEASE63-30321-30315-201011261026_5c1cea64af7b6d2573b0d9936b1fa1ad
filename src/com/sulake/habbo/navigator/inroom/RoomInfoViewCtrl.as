package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2624:int;
      
      private var var_318:RoomEventViewCtrl;
      
      private var var_235:Timer;
      
      private var var_160:RoomSettingsCtrl;
      
      private var var_234:RoomThumbnailCtrl;
      
      private var var_1004:TagRenderer;
      
      private var var_277:IWindowContainer;
      
      private var var_468:IWindowContainer;
      
      private var var_687:IWindowContainer;
      
      private var var_2365:IWindowContainer;
      
      private var var_2366:IWindowContainer;
      
      private var var_1333:IWindowContainer;
      
      private var var_852:ITextWindow;
      
      private var var_1074:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_856:ITextWindow;
      
      private var var_1337:ITextWindow;
      
      private var var_1076:ITextWindow;
      
      private var var_855:ITextWindow;
      
      private var var_1682:ITextWindow;
      
      private var var_233:IWindowContainer;
      
      private var var_853:IWindowContainer;
      
      private var var_1683:IWindowContainer;
      
      private var var_2033:ITextWindow;
      
      private var var_688:ITextWindow;
      
      private var _rateButton:IContainerButtonWindow;
      
      private var var_1335:IContainerButtonWindow;
      
      private var var_1334:IContainerButtonWindow;
      
      private var var_1336:IContainerButtonWindow;
      
      private var var_1332:IContainerButtonWindow;
      
      private var var_1338:IContainerButtonWindow;
      
      private var var_1686:IButtonWindow;
      
      private var var_1685:IButtonWindow;
      
      private var var_1684:IButtonWindow;
      
      private var var_857:IWindowContainer;
      
      private var var_1339:ITextWindow;
      
      private var var_1077:ITextFieldWindow;
      
      private var var_62:IWindowContainer;
      
      private var var_1075:IButtonWindow;
      
      private var var_854:IButtonWindow;
      
      private var var_2364:String;
      
      private var var_2363:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_318 = new RoomEventViewCtrl(this._navigator);
         this.var_160 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_234 = new RoomThumbnailCtrl(this._navigator);
         this.var_1004 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_160);
         this.var_235 = new Timer(6000,1);
         this.var_235.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_98,this.onToolbarIconState);
         }
         if(this.var_235)
         {
            this.var_235.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_235.reset();
            this.var_235 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_235.reset();
         this.var_318.active = true;
         this.var_160.active = false;
         this.var_234.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_235.reset();
         this.var_160.load(param1);
         this.var_160.active = true;
         this.var_318.active = false;
         this.var_234.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_160.active = true;
         this.var_318.active = false;
         this.var_234.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_235.reset();
         this.var_160.active = false;
         this.var_318.active = false;
         this.var_234.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_920,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_235.reset();
         this.var_318.active = false;
         this.var_160.active = false;
         this.var_234.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_235.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_235.reset();
         this.var_318.active = false;
         this.var_160.active = false;
         this.var_234.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_509,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_277.rectangle + ", " + this.var_233.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_277);
         this.var_277.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_160.refresh(this.var_277);
         this.var_234.refresh(this.var_277);
         Util.moveChildrenToColumn(this.var_277,["room_details","room_buttons"],0,2);
         this.var_277.height = Util.getLowestPoint(this.var_277);
         this.var_277.visible = true;
         Logger.log("XORP: " + this.var_468.visible + ", " + this.var_1333.visible + ", " + this.var_687.visible + ", " + this.var_687.rectangle + ", " + this.var_277.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_233);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_318.refresh(this.var_233);
         if(Util.hasVisibleChildren(this.var_233) && !(this.var_160.active || this.var_234.active))
         {
            Util.moveChildrenToColumn(this.var_233,["event_details","event_buttons"],0,2);
            this.var_233.height = Util.getLowestPoint(this.var_233);
            this.var_233.visible = true;
         }
         else
         {
            this.var_233.visible = false;
         }
         Logger.log("EVENT: " + this.var_233.visible + ", " + this.var_233.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_160.active && !this.var_234.active && !this.var_318.active)
         {
            this.var_857.visible = true;
            this.var_1077.text = this.getEmbedData();
         }
         else
         {
            this.var_857.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_62)
         {
            return;
         }
         if(this.var_160.active)
         {
            this.var_62.visible = false;
            return;
         }
         this.var_62.visible = true;
         if(this.var_1075)
         {
            if(this.var_2364 == "exit_homeroom")
            {
               this.var_1075.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1075.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_854)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_854.visible = _loc1_;
            if(this.var_2363 == "0")
            {
               this.var_854.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_854.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_160.active || this.var_234.active)
         {
            return;
         }
         this.var_852.text = param1.roomName;
         this.var_852.height = this.var_852.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_856.text = param1.description;
         this.var_1004.refreshTags(this.var_468,param1.tags);
         this.var_856.visible = false;
         if(param1.description != "")
         {
            this.var_856.height = this.var_856.textHeight + 5;
            this.var_856.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1335,"facebook_logo_small",_loc3_,null,0);
         this.var_1335.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this._rateButton,"thumb_up",_loc4_,null,0);
         this._rateButton.visible = _loc4_;
         this.var_855.visible = !_loc4_;
         this.var_1682.visible = !_loc4_;
         this.var_1682.text = "" + this._navigator.data.currentRoomRating;
         this._navigator.refreshButton(this.var_468,"home",param2,null,0);
         this._navigator.refreshButton(this.var_468,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_468,["room_name","owner_name_cont","tags","room_desc","rating_cont"],this.var_852.y,0);
         this.var_468.visible = true;
         this.var_468.height = Util.getLowestPoint(this.var_468);
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_160.active || this.var_234.active)
         {
            return;
         }
         this.var_1074.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1074.height = this.var_1074.textHeight + 5;
         this.var_1337.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1337.height = this.var_1337.textHeight + 5;
         Util.moveChildrenToColumn(this.var_687,["public_space_name","public_space_desc"],this.var_1074.y,0);
         this.var_687.visible = true;
         this.var_687.height = Math.max(86,Util.getLowestPoint(this.var_687));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_318.active)
         {
            return;
         }
         this.var_2033.text = param1.eventName;
         this.var_688.text = param1.eventDescription;
         this.var_1004.refreshTags(this.var_853,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_688.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_688.height = this.var_688.textHeight + 5;
            this.var_688.y = Util.getLowestPoint(this.var_853) + 2;
            this.var_688.visible = true;
         }
         this.var_853.visible = true;
         this.var_853.height = Util.getLowestPoint(this.var_853);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_160.active || this.var_234.active)
         {
            return;
         }
         this.var_1686.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1334.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1336.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1332.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1338.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1333.visible = Util.hasVisibleChildren(this.var_1333);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_318.active)
         {
            return;
         }
         this.var_1685.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1684.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1683.visible = Util.hasVisibleChildren(this.var_1683);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_62,false);
         this._window.setParamFlag(HabboWindowParam.const_1296,true);
         this._window.visible = false;
         this.var_277 = IWindowContainer(this.find("room_info"));
         this.var_468 = IWindowContainer(this.find("room_details"));
         this.var_687 = IWindowContainer(this.find("public_space_details"));
         this.var_2365 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2366 = IWindowContainer(this.find("rating_cont"));
         this.var_1333 = IWindowContainer(this.find("room_buttons"));
         this.var_852 = ITextWindow(this.find("room_name"));
         this.var_1074 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_856 = ITextWindow(this.find("room_desc"));
         this.var_1337 = ITextWindow(this.find("public_space_desc"));
         this.var_1076 = ITextWindow(this.find("owner_caption"));
         this.var_855 = ITextWindow(this.find("rating_caption"));
         this.var_1682 = ITextWindow(this.find("rating_txt"));
         this.var_233 = IWindowContainer(this.find("event_info"));
         this.var_853 = IWindowContainer(this.find("event_details"));
         this.var_1683 = IWindowContainer(this.find("event_buttons"));
         this.var_2033 = ITextWindow(this.find("event_name"));
         this.var_688 = ITextWindow(this.find("event_desc"));
         this.var_1335 = IContainerButtonWindow(this.find("facebook_like_button"));
         this._rateButton = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1334 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1336 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1332 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1338 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_1686 = IButtonWindow(this.find("room_settings_button"));
         this.var_1685 = IButtonWindow(this.find("create_event_button"));
         this.var_1684 = IButtonWindow(this.find("edit_event_button"));
         this.var_857 = IWindowContainer(this.find("embed_info"));
         this.var_1339 = ITextWindow(this.find("embed_info_txt"));
         this.var_1077 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_62 = IWindowContainer(this.find("buttons_container"));
         this.var_1075 = IButtonWindow(this.find("exit_room_button"));
         this.var_854 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1334,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1336,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1686,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1332,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1338,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_1685,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1684,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1077,this.method_7);
         Util.setProcDirectly(this._rateButton,this.onThumbUp);
         Util.setProcDirectly(this.var_1335,this.onFacebookLike);
         Util.setProcDirectly(this.var_854,this.onZoomClick);
         Util.setProcDirectly(this.var_1075,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1334,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1336,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1332,"home",true,null,0);
         this._navigator.refreshButton(this.var_1338,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_277,this.onHover);
         Util.setProcDirectly(this.var_233,this.onHover);
         this.var_1076.width = this.var_1076.textWidth;
         Util.moveChildrenToRow(this.var_2365,["owner_caption","owner_name"],this.var_1076.x,this.var_1076.y,3);
         this.var_855.width = this.var_855.textWidth;
         Util.moveChildrenToRow(this.var_2366,["rating_caption","rating_txt"],this.var_855.x,this.var_855.y,3);
         this.var_1339.height = this.var_1339.textHeight + 5;
         Util.moveChildrenToColumn(this.var_857,["embed_info_txt","embed_src_txt"],this.var_1339.y,2);
         this.var_857.height = Util.getLowestPoint(this.var_857) + 5;
         this.var_2624 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function method_7(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1077.setSelection(0,this.var_1077.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_40);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_40);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_98)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2363 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2364 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_235.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_509,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_98,this.onToolbarIconState);
         }
      }
   }
}
