package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2222:Date;
      
      private var var_1356:Boolean = false;
      
      private var _type:int;
      
      private var var_379:BitmapData;
      
      private var var_288:Boolean = false;
      
      private var var_1132:int;
      
      private var var_629:int = 1;
      
      private var var_1095:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_379;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_629;
         if(var_629 < 0)
         {
            var_629 = 0;
         }
         var_1095 = var_1132;
         var_288 = false;
         var_1356 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1095 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_288;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_379 = param1;
      }
      
      public function get duration() : int
      {
         return var_1132;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1356;
      }
      
      public function get effectsInInventory() : int
      {
         return var_629;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_379;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_288)
         {
            var_2222 = new Date();
         }
         var_288 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_629 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_288)
         {
            _loc1_ = var_1095 - (new Date().valueOf() - var_2222.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1095;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1356 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1132 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
