package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1198:int;
      
      private var var_1178:int;
      
      private var var_1199:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1198;
      }
      
      public function flush() : Boolean
      {
         var_1178 = 0;
         var_1198 = 0;
         var_1199 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1178;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1198 = param1.readInteger();
         var_1178 = param1.readInteger();
         var_1199 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1199;
      }
   }
}
