package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2177:Number;
      
      private var var_619:Number = 0;
      
      private var var_2176:Number;
      
      private var var_620:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2177 = param1;
         var_2176 = param2;
      }
      
      public function update() : void
      {
         var_620 += var_2176;
         var_619 += var_620;
         if(var_619 > 0)
         {
            var_619 = 0;
            var_620 = var_2177 * -1 * var_620;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_620 = param1;
         var_619 = 0;
      }
      
      public function get location() : Number
      {
         return var_619;
      }
   }
}
