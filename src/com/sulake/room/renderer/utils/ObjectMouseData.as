package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1823:String = "";
      
      private var var_155:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1823 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_155 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1823;
      }
      
      public function get objectId() : String
      {
         return var_155;
      }
   }
}
