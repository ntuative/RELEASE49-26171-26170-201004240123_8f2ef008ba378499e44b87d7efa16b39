package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1931:Boolean;
      
      private var var_1704:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1931 = Boolean(parseInt(param1.@club));
         var_1704 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1931;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1704;
      }
   }
}
