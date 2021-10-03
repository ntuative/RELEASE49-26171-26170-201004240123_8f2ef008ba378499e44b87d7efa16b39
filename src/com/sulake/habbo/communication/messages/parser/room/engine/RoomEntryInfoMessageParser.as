package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2190:int;
      
      private var var_444:Boolean;
      
      private var var_2189:Boolean;
      
      private var var_925:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2189 = param1.readBoolean();
         if(var_2189)
         {
            var_2190 = param1.readInteger();
            var_444 = param1.readBoolean();
         }
         else
         {
            var_925 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_925 != null)
         {
            var_925.dispose();
            var_925 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2190;
      }
      
      public function get owner() : Boolean
      {
         return var_444;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2189;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_925;
      }
   }
}
