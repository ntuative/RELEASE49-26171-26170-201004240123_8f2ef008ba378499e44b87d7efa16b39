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
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_701:IWindowContainer;
      
      private var var_1026:ITextWindow;
      
      private var var_199:RoomSettingsCtrl;
      
      private var var_1259:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1258:ITextWindow;
      
      private var var_348:IWindowContainer;
      
      private var var_1990:IWindowContainer;
      
      private var var_1991:ITextWindow;
      
      private var var_852:IWindowContainer;
      
      private var var_1504:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_711:ITextWindow;
      
      private var var_1508:IWindowContainer;
      
      private var var_1260:IWindowContainer;
      
      private var var_853:ITextWindow;
      
      private var var_1025:ITextFieldWindow;
      
      private var var_301:IWindowContainer;
      
      private var var_851:ITextWindow;
      
      private var var_1505:IButtonWindow;
      
      private var var_1027:ITextWindow;
      
      private var var_2315:int;
      
      private var var_1257:IContainerButtonWindow;
      
      private var var_850:IWindowContainer;
      
      private var var_1256:ITextWindow;
      
      private var var_1255:IContainerButtonWindow;
      
      private var var_1507:ITextWindow;
      
      private var var_1506:IButtonWindow;
      
      private var var_856:TagRenderer;
      
      private var var_1988:ITextWindow;
      
      private var var_349:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_700:ITextWindow;
      
      private var var_264:RoomThumbnailCtrl;
      
      private var var_1261:IContainerButtonWindow;
      
      private var var_1989:IWindowContainer;
      
      private var var_265:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_349 = new RoomEventViewCtrl(_navigator);
         var_199 = new RoomSettingsCtrl(_navigator,this,true);
         var_264 = new RoomThumbnailCtrl(_navigator);
         var_856 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_199);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_199.active = true;
         this.var_349.active = false;
         this.var_264.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1504.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1506.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1508.visible = Util.hasVisibleChildren(var_1508);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_711.text = param1.roomName;
         var_711.height = NaN;
         _ownerName.text = param1.ownerName;
         var_853.text = param1.description;
         var_856.refreshTags(var_348,param1.tags);
         var_853.visible = false;
         if(param1.description != "")
         {
            var_853.height = NaN;
            var_853.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_348,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_348,"thumb_down",_loc3_,onThumbDown,0);
         var_1991.visible = _loc3_;
         var_851.visible = !_loc3_;
         var_1507.visible = !_loc3_;
         var_1507.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_348,"home",param2,null,0);
         _navigator.refreshButton(var_348,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_348,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_711.y,0);
         var_348.visible = true;
         var_348.height = Util.getLowestPoint(var_348);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_458,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1505.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1259.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1261.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1257.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1255.visible = _navigator.data.canEditRoomSettings && param1;
         var_1260.visible = Util.hasVisibleChildren(var_1260);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_349.active = false;
         this.var_199.active = false;
         this.var_264.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_49,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_349.active = false;
         this.var_199.active = false;
         this.var_264.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_49,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_458,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_301);
         var_301.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_199.refresh(var_301);
         this.var_264.refresh(var_301);
         Util.moveChildrenToColumn(var_301,["room_details","room_buttons"],0,2);
         var_301.height = Util.getLowestPoint(var_301);
         var_301.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1025.setSelection(0,var_1025.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_265);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_349.refresh(var_265);
         if(Util.hasVisibleChildren(var_265) && !this.var_264.active)
         {
            Util.moveChildrenToColumn(var_265,["event_details","event_buttons"],0,2);
            var_265.height = Util.getLowestPoint(var_265);
            var_265.visible = true;
         }
         else
         {
            var_265.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_349.active = true;
         this.var_199.active = false;
         this.var_264.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1026.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1026.height = NaN;
         var_1258.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1258.height = NaN;
         Util.moveChildrenToColumn(var_701,["public_space_name","public_space_desc"],var_1026.y,0);
         var_701.visible = true;
         var_701.height = Math.max(86,Util.getLowestPoint(var_701));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "PetVisualizationData";
         if(_loc1_ && true && true && true)
         {
            var_850.visible = true;
            var_1025.text = this.getEmbedData();
         }
         else
         {
            var_850.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_199.load(param1);
         this.var_199.active = true;
         this.var_349.active = false;
         this.var_264.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_199.active = false;
         this.var_349.active = false;
         this.var_264.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_72,false);
         _window.setParamFlag(HabboWindowParam.const_1278,true);
         _window.visible = false;
         var_301 = IWindowContainer(find("room_info"));
         var_348 = IWindowContainer(find("room_details"));
         var_701 = IWindowContainer(find("public_space_details"));
         var_1989 = IWindowContainer(find("owner_name_cont"));
         var_1990 = IWindowContainer(find("rating_cont"));
         var_1260 = IWindowContainer(find("room_buttons"));
         var_711 = ITextWindow(find("room_name"));
         var_1026 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_853 = ITextWindow(find("room_desc"));
         var_1258 = ITextWindow(find("public_space_desc"));
         var_1027 = ITextWindow(find("owner_caption"));
         var_851 = ITextWindow(find("rating_caption"));
         var_1991 = ITextWindow(find("rate_caption"));
         var_1507 = ITextWindow(find("rating_txt"));
         var_265 = IWindowContainer(find("event_info"));
         var_852 = IWindowContainer(find("event_details"));
         var_1508 = IWindowContainer(find("event_buttons"));
         var_1988 = ITextWindow(find("event_name"));
         var_700 = ITextWindow(find("event_desc"));
         var_1259 = IContainerButtonWindow(find("add_favourite_button"));
         var_1261 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1257 = IContainerButtonWindow(find("make_home_button"));
         var_1255 = IContainerButtonWindow(find("unmake_home_button"));
         var_1505 = IButtonWindow(find("room_settings_button"));
         var_1504 = IButtonWindow(find("create_event_button"));
         var_1506 = IButtonWindow(find("edit_event_button"));
         var_850 = IWindowContainer(find("embed_info"));
         var_1256 = ITextWindow(find("embed_info_txt"));
         var_1025 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1259,onAddFavouriteClick);
         Util.setProcDirectly(var_1261,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1505,onRoomSettingsClick);
         Util.setProcDirectly(var_1257,onMakeHomeClick);
         Util.setProcDirectly(var_1255,onUnmakeHomeClick);
         Util.setProcDirectly(var_1504,onEventSettingsClick);
         Util.setProcDirectly(var_1506,onEventSettingsClick);
         Util.setProcDirectly(var_1025,onEmbedSrcClick);
         _navigator.refreshButton(var_1259,"favourite",true,null,0);
         _navigator.refreshButton(var_1261,"favourite",true,null,0);
         _navigator.refreshButton(var_1257,"home",true,null,0);
         _navigator.refreshButton(var_1255,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_301,onHover);
         Util.setProcDirectly(var_265,onHover);
         var_1027.width = var_1027.textWidth;
         Util.moveChildrenToRow(var_1989,["owner_caption","owner_name"],var_1027.x,var_1027.y,3);
         var_851.width = var_851.textWidth;
         Util.moveChildrenToRow(var_1990,["rating_caption","rating_txt"],var_851.x,var_851.y,3);
         var_1256.height = NaN;
         Util.moveChildrenToColumn(var_850,["embed_info_txt","embed_src_txt"],var_1256.y,2);
         var_850.height = Util.getLowestPoint(var_850) + 5;
         var_2315 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1988.text = param1.eventName;
         var_700.text = param1.eventDescription;
         var_856.refreshTags(var_852,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_700.visible = false;
         if(param1.eventDescription != "")
         {
            var_700.height = NaN;
            var_700.y = Util.getLowestPoint(var_852) + 2;
            var_700.visible = true;
         }
         var_852.visible = true;
         var_852.height = Util.getLowestPoint(var_852);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_999,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
