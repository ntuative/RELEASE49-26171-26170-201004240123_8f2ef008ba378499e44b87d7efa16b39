package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2021:int;
      
      private var var_1518:int;
      
      private var var_2022:int;
      
      private var var_2024:int;
      
      private var var_2023:int;
      
      private var var_1519:int;
      
      private var var_1773:int;
      
      private var var_1135:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2021;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1518;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1773;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2024;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2023;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1519;
      }
      
      public function get commission() : int
      {
         return var_2022;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1135 = param1.readBoolean();
         var_2022 = param1.readInteger();
         var_1518 = param1.readInteger();
         var_1519 = param1.readInteger();
         var_2024 = param1.readInteger();
         var_2021 = param1.readInteger();
         var_2023 = param1.readInteger();
         var_1773 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1135;
      }
   }
}
