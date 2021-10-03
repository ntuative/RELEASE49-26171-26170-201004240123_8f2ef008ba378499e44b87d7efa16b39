package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2078:int;
      
      private var var_2079:int;
      
      private var var_2076:Boolean;
      
      private var var_2075:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2077:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2079 = param1;
         var_2078 = param2;
         var_2075 = param3;
         var_2077 = param4;
         var_2076 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2079,var_2078,var_2075,var_2077,int(var_2076)];
      }
      
      public function dispose() : void
      {
      }
   }
}
