package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_224:String = "RWUIUE_PEER";
      
      public static const const_201:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1237:String = "BOT";
      
      public static const const_902:int = 2;
      
      public static const const_1165:int = 0;
      
      public static const const_1005:int = 3;
       
      
      private var var_322:String = "";
      
      private var var_1203:String = "";
      
      private var var_1888:Boolean = false;
      
      private var var_1813:int = 0;
      
      private var var_1895:int = 0;
      
      private var var_1896:Boolean = false;
      
      private var var_1201:String = "";
      
      private var var_1890:Boolean = false;
      
      private var var_829:int = 0;
      
      private var var_1889:Boolean = true;
      
      private var var_975:int = 0;
      
      private var var_1899:Boolean = false;
      
      private var var_1222:Boolean = false;
      
      private var var_1894:Boolean = false;
      
      private var var_1892:int = 0;
      
      private var var_1897:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_277:Array;
      
      private var var_1219:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1814:int = 0;
      
      private var var_1891:Boolean = false;
      
      private var var_1893:int = 0;
      
      private var var_1898:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_277 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1895;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1895 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1888;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1889;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1889 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1890 = param1;
      }
      
      public function get motto() : String
      {
         return var_1203;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1899 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1222;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1203 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1891;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1898;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1222 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1897;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1892 = param1;
      }
      
      public function get badges() : Array
      {
         return var_277;
      }
      
      public function get amIController() : Boolean
      {
         return var_1896;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1896 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1891 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1893 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1898 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1201 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1890;
      }
      
      public function set figure(param1:String) : void
      {
         var_322 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1892;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1219;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1899;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_829 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1893;
      }
      
      public function get realName() : String
      {
         return var_1201;
      }
      
      public function get figure() : String
      {
         return var_322;
      }
      
      public function set webID(param1:int) : void
      {
         var_1814 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_277 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1894 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1897 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_829;
      }
      
      public function get webID() : int
      {
         return var_1814;
      }
      
      public function set groupId(param1:int) : void
      {
         var_975 = param1;
      }
      
      public function get xp() : int
      {
         return var_1813;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1888 = param1;
      }
      
      public function get groupId() : int
      {
         return var_975;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1894;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1219 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1813 = param1;
      }
   }
}
