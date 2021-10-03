package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_563:String;
      
      private var _id:int;
      
      private var var_1733:String = "";
      
      private var var_1734:int;
      
      private var var_1736:String;
      
      private var var_1735:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1734 = parseInt(param1.@pattern);
         var_563 = String(param1.@gender);
         var_1735 = Boolean(parseInt(param1.@colorable));
         var_1733 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1733;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1735;
      }
      
      public function get gender() : String
      {
         return var_563;
      }
      
      public function get patternId() : int
      {
         return var_1734;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1736;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1736 = param1;
      }
   }
}
