package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1103:int;
      
      private var var_1371:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1103 = param1;
         var_1371 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1103;
      }
      
      public function get itemName() : String
      {
         return var_1371;
      }
   }
}
