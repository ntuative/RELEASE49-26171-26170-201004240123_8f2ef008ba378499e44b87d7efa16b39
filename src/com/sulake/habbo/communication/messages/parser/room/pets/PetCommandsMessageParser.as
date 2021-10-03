package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_967:Array;
      
      private var var_1148:int;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1148 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_967 = new Array();
         while(_loc2_-- > 0)
         {
            var_967.push(param1.readInteger());
         }
         return true;
      }
      
      public function get method_2() : Array
      {
         return var_967;
      }
      
      public function get petId() : int
      {
         return var_1148;
      }
      
      public function flush() : Boolean
      {
         var_1148 = -1;
         var_967 = null;
         return true;
      }
   }
}
