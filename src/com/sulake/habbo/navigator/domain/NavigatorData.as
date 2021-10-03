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
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1438:int = 10;
       
      
      private var var_1580:NavigatorSettingsMessageParser;
      
      private var var_1338:int;
      
      private var var_2193:int;
      
      private var var_2196:Boolean;
      
      private var var_1084:Array;
      
      private var var_926:Dictionary;
      
      private var var_1085:Array;
      
      private var var_2344:int;
      
      private var var_2194:int;
      
      private var var_1900:int;
      
      private var var_2197:int;
      
      private var var_623:PublicRoomShortData;
      
      private var var_442:RoomEventData;
      
      private var var_140:MsgWithRequestId;
      
      private var var_2198:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2195:Boolean;
      
      private var var_209:GuestRoomData;
      
      private var var_762:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1084 = new Array();
         var_1085 = new Array();
         var_926 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2193;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2195;
      }
      
      public function startLoading() : void
      {
         this.var_762 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2195 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_442 != null)
         {
            var_442.dispose();
         }
         var_442 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_140 != null && var_140 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_140 != null && var_140 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_140 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_209;
      }
      
      public function get allCategories() : Array
      {
         return var_1084;
      }
      
      public function onRoomExit() : void
      {
         if(var_442 != null)
         {
            var_442.dispose();
            var_442 = null;
         }
         if(var_623 != null)
         {
            var_623.dispose();
            var_623 = null;
         }
         if(var_209 != null)
         {
            var_209.dispose();
            var_209 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_140 = param1;
         var_762 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1580;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_140 = param1;
         var_762 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_623 = null;
         var_209 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_623 = param1.publicSpace;
            var_442 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2344 = param1.limit;
         this.var_1338 = param1.favouriteRoomIds.length;
         this.var_926 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_926[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_140 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_623;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2196;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_140 = param1;
         var_762 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1900 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_209 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_762;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1085;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1084 = param1;
         var_1085 = new Array();
         for each(_loc2_ in var_1084)
         {
            if(_loc2_.visible)
            {
               var_1085.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2194;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2197;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1580 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_140 == null)
         {
            return;
         }
         var_140.dispose();
         var_140 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_442;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_926[param1] = !!param2 ? "yes" : null;
         var_1338 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_140 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1900;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_140 != null && var_140 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2196 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2194 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2198 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_209 != null)
         {
            var_209.dispose();
         }
         var_209 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_209 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1580.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1338 >= var_2344;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2197 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2198;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_209 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2193 = param1;
      }
   }
}
