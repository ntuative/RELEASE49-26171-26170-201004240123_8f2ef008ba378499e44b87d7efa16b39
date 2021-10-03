package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1617:String;
      
      private var var_322:String;
      
      private var var_563:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_322 = param1;
         var_563 = param2;
         var_1617 = param3;
      }
      
      public function get race() : String
      {
         return var_1617;
      }
      
      public function get figure() : String
      {
         return var_322;
      }
      
      public function get gender() : String
      {
         return var_563;
      }
   }
}
