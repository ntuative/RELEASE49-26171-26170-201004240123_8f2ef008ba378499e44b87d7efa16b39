package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1557:int = 0;
      
      private var var_2113:int = 0;
      
      private var var_1799:Boolean = false;
      
      private var var_2114:int = 0;
      
      private var var_1558:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubPeriods() : int
      {
         return var_1558;
      }
      
      public function get clubDays() : int
      {
         return var_1557;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2113 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2113;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1557 > 0 || var_1558 > 0;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1557 = param1;
      }
      
      public function get credits() : int
      {
         return var_2114;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1799;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1799 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2114 = param1;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1558 = param1;
      }
   }
}
