package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2254:Boolean = false;
      
      private var var_2255:int = 0;
      
      private var var_1557:int = 0;
      
      private var var_2253:int = 0;
      
      private var var_1799:Boolean = false;
      
      private var var_1608:int = 0;
      
      private var var_1558:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1608 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2255;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2254;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2254 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1799;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2255 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1557 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1608;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1799 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2253 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1557;
      }
      
      public function get pixelBalance() : int
      {
         return var_2253;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1558 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1558;
      }
   }
}
