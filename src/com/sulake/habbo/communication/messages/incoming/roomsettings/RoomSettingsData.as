package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_469:int = 0;
      
      public static const const_109:int = 2;
      
      public static const const_161:int = 1;
      
      public static const const_588:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2204:Boolean;
      
      private var var_2206:Boolean;
      
      private var var_2217:int;
      
      private var var_2207:Array;
      
      private var var_2216:int;
      
      private var var_1675:Boolean;
      
      private var var_1165:String;
      
      private var var_2205:int;
      
      private var var_1677:int;
      
      private var var_1200:int;
      
      private var _roomId:int;
      
      private var var_639:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2205;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2205 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_639;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1675;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2216 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2207 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_639 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2204;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2206;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2217;
      }
      
      public function get categoryId() : int
      {
         return var_1200;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1675 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2216;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2207;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1677 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2204 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2206 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2217 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1677;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1200 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1165 = param1;
      }
      
      public function get description() : String
      {
         return var_1165;
      }
   }
}
