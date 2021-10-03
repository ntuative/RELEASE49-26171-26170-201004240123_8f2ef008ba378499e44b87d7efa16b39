package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2125:Array;
      
      private var var_2124:String;
      
      private var var_2126:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_2124 = param1;
         var_2125 = param2;
         var_2126 = param3;
      }
      
      public function get menuId() : String
      {
         return var_2124;
      }
      
      public function get yieldList() : Array
      {
         return var_2125;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2126;
      }
   }
}
