package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_711:String;
      
      private var var_1759:int;
      
      private var var_1510:Boolean;
      
      private var _roomId:int;
      
      private var var_1760:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1510 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_711 = param1.readString();
         var_1760 = param1.readInteger();
         var_1759 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1510;
      }
      
      public function get roomName() : String
      {
         return var_711;
      }
      
      public function get enterMinute() : int
      {
         return var_1759;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1760;
      }
   }
}
