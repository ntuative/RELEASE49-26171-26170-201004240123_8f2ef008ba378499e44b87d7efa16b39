package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1373:int = 2;
      
      public static const const_1566:int = 1;
       
      
      private var var_1800:int;
      
      private var var_1796:int;
      
      private var var_1799:Boolean;
      
      private var var_1801:int;
      
      private var var_1377:String;
      
      private var var_1798:Boolean;
      
      private var var_1797:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1796;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1799;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1797;
      }
      
      public function get memberPeriods() : int
      {
         return var_1801;
      }
      
      public function get productName() : String
      {
         return var_1377;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1798;
      }
      
      public function get responseType() : int
      {
         return var_1800;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1377 = param1.readString();
         var_1796 = param1.readInteger();
         var_1801 = param1.readInteger();
         var_1797 = param1.readInteger();
         var_1800 = param1.readInteger();
         var_1798 = param1.readBoolean();
         var_1799 = param1.readBoolean();
         return true;
      }
   }
}
