package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1514:Array;
      
      private var var_1944:int;
      
      private var var_2006:int;
      
      private var var_2008:int;
      
      private var var_2005:int;
      
      private var _dayOffsets:Array;
      
      private var var_2007:int;
      
      private var var_1515:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1514;
      }
      
      public function get furniTypeId() : int
      {
         return var_2006;
      }
      
      public function get historyLength() : int
      {
         return var_2005;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2008;
      }
      
      public function get offerCount() : int
      {
         return var_2007;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1515;
      }
      
      public function get averagePrice() : int
      {
         return var_1944;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1944 = param1.readInteger();
         var_2007 = param1.readInteger();
         var_2005 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1514 = [];
         var_1515 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1514.push(param1.readInteger());
            var_1515.push(param1.readInteger());
            _loc3_++;
         }
         var_2008 = param1.readInteger();
         var_2006 = param1.readInteger();
         return true;
      }
   }
}
