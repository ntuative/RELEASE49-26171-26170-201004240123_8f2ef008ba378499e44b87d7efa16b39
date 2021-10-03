package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1739:int;
      
      private var var_1150:PetData;
      
      private var var_1740:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1739;
      }
      
      public function get petData() : PetData
      {
         return var_1150;
      }
      
      public function flush() : Boolean
      {
         var_1150 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1740;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1739 = param1.readInteger();
         var_1740 = param1.readInteger();
         var_1150 = new PetData(param1);
         return true;
      }
   }
}
