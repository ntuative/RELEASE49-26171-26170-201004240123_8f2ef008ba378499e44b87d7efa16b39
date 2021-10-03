package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_322:String;
      
      private var var_1619:int;
      
      private var var_2052:String;
      
      private var var_1067:int;
      
      private var var_1148:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1148;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1148 = param1.readInteger();
         var_2052 = param1.readString();
         var_1619 = param1.readInteger();
         var_322 = param1.readString();
         var_1067 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2052;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_322;
      }
      
      public function get petType() : int
      {
         return var_1067;
      }
      
      public function get level() : int
      {
         return var_1619;
      }
   }
}
