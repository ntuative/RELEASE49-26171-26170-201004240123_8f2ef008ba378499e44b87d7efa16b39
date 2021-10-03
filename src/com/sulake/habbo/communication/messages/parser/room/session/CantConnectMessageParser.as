package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1452:int = 2;
      
      public static const const_1306:int = 4;
      
      public static const const_1295:int = 1;
      
      public static const const_1250:int = 3;
       
      
      private var var_1032:int = 0;
      
      private var var_858:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1032;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1032 = param1.readInteger();
         if(var_1032 == 3)
         {
            var_858 = param1.readString();
         }
         else
         {
            var_858 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1032 = 0;
         var_858 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_858;
      }
   }
}
