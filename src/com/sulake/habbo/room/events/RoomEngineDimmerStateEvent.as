package com.sulake.habbo.room.events
{
   public class RoomEngineDimmerStateEvent extends RoomEngineEvent
   {
      
      public static const const_70:String = "REDSE_ROOM_COLOR";
       
      
      private var var_1043:int;
      
      private var _color:uint;
      
      private var var_1042:int;
      
      private var var_1667:int;
      
      private var var_33:int;
      
      public function RoomEngineDimmerStateEvent(param1:int, param2:int, param3:int, param4:int, param5:int, param6:uint, param7:uint, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_70,param1,param2,param8,param9);
         var_33 = param3;
         var_1667 = param4;
         var_1043 = param5;
         _color = param6;
         var_1042 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_1042;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1043;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function get presetId() : int
      {
         return var_1667;
      }
   }
}
