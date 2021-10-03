package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_112:String = "me_menu_top_view";
      
      public static const const_1403:String = "me_menu_rooms_view";
      
      public static const const_261:String = "me_menu_my_clothes_view";
      
      public static const const_903:String = "me_menu_dance_moves_view";
      
      public static const const_796:String = "me_menu_effects_view";
      
      public static const const_702:String = "me_menu_settings_view";
      
      public static const const_573:String = "me_menu_sound_settings";
       
      
      private var var_36:IMeMenuView;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_211:IEventDispatcher;
      
      private var _destinationSize:Point;
      
      private var var_847:Boolean = false;
      
      private var var_1268:int = 0;
      
      private var var_2187:int = 0;
      
      private var var_2189:int = 0;
      
      private var var_2190:Boolean = false;
      
      private var var_1582:int = 0;
      
      private var var_1014:Boolean = false;
      
      private var var_2188:Boolean = false;
      
      private var var_372:Boolean = false;
      
      private var var_2191:Number = 0;
      
      private var var_2186:Boolean = false;
      
      private var var_1580:int = 0;
      
      private var var_1581:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         this._config = param5;
         this._destinationSize = new Point(0,0);
         this.var_211 = param4;
         if(param5 != null && false)
         {
            this.var_2186 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         this.changeView(const_112);
         this.hide();
      }
      
      override public function dispose() : void
      {
         this.hide();
         this.var_211 = null;
         if(this.var_36 != null)
         {
            this.var_36.dispose();
            this.var_36 = null;
         }
         super.dispose();
      }
      
      override public function get mainWindow() : IWindow
      {
         return this._mainContainer;
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_586,this.onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_751,this.onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_788,this.onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_704,this.onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_317,this.onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_688,this.onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_778,this.onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_207,this.onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_237,this.onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_720,this.onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_202,this.onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_379,this.onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_107,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_421,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_168,this.onCreditBalance);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_116,this.onNormalMode);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_902,this.onGameMode);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_586,this.onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_751,this.onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_788,this.onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_704,this.onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_317,this.onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_207,this.onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_237,this.onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_720,this.onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_688,this.onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_778,this.onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_202,this.onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_379,this.onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_421,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_107,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_168,this.onCreditBalance);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_116,this.onNormalMode);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_116,this.onGameMode);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_592);
         _loc2_.window = this._mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(this.var_36 != null)
         {
            this._mainContainer.removeChild(this.var_36.window);
            this.var_36.dispose();
            this.var_36 = null;
         }
         this.var_372 = false;
         this.var_211.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function show() : void
      {
         if(!this._mainContainer || !this._mainContainer.parent)
         {
            return;
         }
         this.changeView(const_112);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_776);
         _loc1_.window = this._mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         this.var_372 = true;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(this.var_372 && this.var_36.window.name == const_261))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_743);
            if(messageListener != null)
            {
               if(!this.var_1581)
               {
                  messageListener.processWidgetMessage(_loc2_);
               }
            }
         }
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!this.var_372)
         {
            return;
         }
         if(this.var_36.window.name == const_573)
         {
            (this.var_36 as MeMenuSoundSettingsView).updateSettings(param1);
         }
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_421:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + this.var_372 + " view: " + this.var_36.window.name);
               if(this.var_372 != true || this.var_36.window.name != const_112)
               {
                  return;
               }
               (this.var_36 as MeMenuMainView).setIconAssets("clothes_icon",const_112,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_107:
               this.hide();
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               this.var_372 = !this.var_372;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               this.var_372 = false;
               break;
            default:
               return;
         }
         if(this.var_372)
         {
            this.show();
         }
         else
         {
            this.hide();
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         this.var_1014 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               this.var_1014 = true;
            }
         }
         if(this.var_36 != null && this.var_36.window.name == const_796)
         {
            (this.var_36 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(this.var_36 != null && this.var_36.window.name != const_261)
         {
            this.hide();
         }
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_36 != null && this.var_36.window.name == const_261)
         {
            this.changeView(const_112);
         }
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_36 != null && this.var_36.window.name == const_261)
         {
            this.changeView(const_112);
         }
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != this.var_1268;
         this.var_1268 = param1.daysLeft;
         this.var_2187 = param1.periodsLeft;
         this.var_2189 = param1.pastPeriods;
         this.var_2190 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != this.var_1582);
         this.var_1582 = param1.clubLevel;
         if(_loc2_)
         {
            if(this.var_36 != null)
            {
               this.changeView(this.var_36.window.name);
            }
         }
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               this.var_1014 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               this.var_1014 = false;
         }
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.var_1580 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",this.var_1580.toString());
      }
      
      private function onNormalMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1581 = false;
      }
      
      private function onGameMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1581 = true;
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!this.var_847)
         {
            return;
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(this._mainContainer == null)
         {
            this._mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1427,HabboWindowStyle.const_986,HabboWindowParam.const_39,new Rectangle(0,0,170,260)) as IWindowContainer;
            this._mainContainer.tags.push("room_widget_me_menu");
         }
         return this._mainContainer;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_112:
               _loc2_ = new MeMenuMainView();
               this.var_211.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_796:
               _loc2_ = new MeMenuEffectsView();
               this.var_211.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_903:
               _loc2_ = new MeMenuDanceView();
               this.var_211.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_261:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1403:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_702:
               _loc2_ = new MeMenuSettingsMenuView();
               break;
            case const_573:
               _loc2_ = new MeMenuSoundSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(this.var_36 != null)
            {
               this._mainContainer.removeChild(this.var_36.window);
               this.var_36.dispose();
               this.var_36 = null;
            }
            this.var_36 = _loc2_;
            this.var_36.init(this,param1);
         }
         this.updateSize();
      }
      
      public function updateSize() : void
      {
         if(this.var_36 != null)
         {
            this._destinationSize.x = this.var_36.window.width + 10;
            this._destinationSize.y = this.var_36.window.height;
            this.var_36.window.x = 5;
            this.var_36.window.y = 0;
            this._mainContainer.width = this._destinationSize.x;
            this._mainContainer.height = this._destinationSize.y;
         }
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return this.var_2190;
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return this.var_1268 > 0;
      }
      
      public function get habboClubDays() : int
      {
         return this.var_1268;
      }
      
      public function get habboClubPeriods() : int
      {
         return this.var_2187;
      }
      
      public function get habboClubPastPeriods() : int
      {
         return this.var_2189;
      }
      
      public function get habboClubLevel() : int
      {
         return this.var_1582;
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return this.var_2186;
      }
      
      public function get creditBalance() : int
      {
         return this.var_1580;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         this.var_2191 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - this.var_2191 > 5000;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return this.var_1014;
      }
      
      public function get isDancing() : Boolean
      {
         return this.var_2188;
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         this.var_2188 = param1;
      }
   }
}
