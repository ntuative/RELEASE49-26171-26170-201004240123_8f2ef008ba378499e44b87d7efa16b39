package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1404:int = -1;
      
      private var var_1127:Boolean;
      
      private var var_1128:String;
      
      private var var_1659:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1659 = String(param1["set-type"]);
         var_1128 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1127 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1404 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1128;
      }
      
      public function get staticId() : int
      {
         return var_1404;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1404 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1127;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1127 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1128 = param1;
      }
      
      public function get method_6() : String
      {
         return var_1659;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
