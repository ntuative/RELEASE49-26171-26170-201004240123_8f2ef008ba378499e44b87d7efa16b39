package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2167:String;
      
      private var var_858:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2167 = param1;
         var_858 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2167;
      }
      
      public function get parameter() : String
      {
         return var_858;
      }
   }
}
