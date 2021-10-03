package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1351:int;
      
      private var var_1062:String;
      
      private var var_754:Array;
      
      private var var_1021:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_754.slice();
      }
      
      public function flush() : Boolean
      {
         var_1062 = "";
         var_1021 = [];
         var_754 = [];
         var_1351 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1351;
      }
      
      public function get question() : String
      {
         return var_1062;
      }
      
      public function get choices() : Array
      {
         return var_1021.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1062 = param1.readString();
         var_1021 = [];
         var_754 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1021.push(param1.readString());
            var_754.push(param1.readInteger());
            _loc3_++;
         }
         var_1351 = param1.readInteger();
         return true;
      }
   }
}
