package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_443:int;
      
      private var var_1210:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_443;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_443 = param1.readInteger();
         var_1210 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_443 = 0;
         var_1210 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1210;
      }
   }
}
