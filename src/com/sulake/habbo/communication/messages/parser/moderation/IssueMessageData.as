package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_140:int = 1;
      
      public static const const_1212:int = 3;
      
      public static const const_410:int = 2;
       
      
      private var var_2085:int;
      
      private var var_1949:int;
      
      private var var_2087:int;
      
      private var var_1830:int;
      
      private var var_33:int;
      
      private var var_443:int;
      
      private var var_1376:int;
      
      private var var_2040:int;
      
      private var var_1076:int;
      
      private var _roomResources:String;
      
      private var var_1741:int;
      
      private var var_2082:int;
      
      private var var_2083:String;
      
      private var var_2084:String;
      
      private var var_2081:int = 0;
      
      private var var_1326:String;
      
      private var _message:String;
      
      private var var_2086:int;
      
      private var var_2088:String;
      
      private var var_1200:int;
      
      private var var_711:String;
      
      private var var_2080:String;
      
      private var var_1406:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1076 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2081 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2082;
      }
      
      public function set roomName(param1:String) : void
      {
         var_711 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1741 = param1;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_711;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1830 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_33 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1949;
      }
      
      public function get priority() : int
      {
         return var_2085 + var_2081;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2040 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2084;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1406) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1200;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2082 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1376;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2083 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1741;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1830;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2080 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1326 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2040;
      }
      
      public function set priority(param1:int) : void
      {
         var_2085 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1949 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2083;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2087 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2084 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2086 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1326;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1376 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2087;
      }
      
      public function set flatId(param1:int) : void
      {
         var_443 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1200 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1406 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2086;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2088 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1406;
      }
      
      public function get reportedUserId() : int
      {
         return var_1076;
      }
      
      public function get flatId() : int
      {
         return var_443;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2080;
      }
      
      public function get reporterUserName() : String
      {
         return var_2088;
      }
   }
}
