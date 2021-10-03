package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2240:int;
      
      private var var_2237:int = 0;
      
      private var var_2238:String;
      
      private var var_2239:int;
      
      private var var_2241:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2240 = param1;
         var_2239 = param2;
         var_2241 = param3;
         var_2238 = param4;
      }
      
      public function get length() : int
      {
         return var_2239;
      }
      
      public function get name() : String
      {
         return var_2241;
      }
      
      public function get creator() : String
      {
         return var_2238;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2237;
      }
      
      public function get id() : int
      {
         return var_2240;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2237 = param1;
      }
   }
}
