package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1088:int = 31;
      
      private static const const_1047:int = 32;
      
      private static const const_503:int = 30;
      
      private static const const_775:int = 20;
      
      private static const const_504:int = 10;
       
      
      private var var_568:Boolean = false;
      
      private var var_240:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_240 = new Array();
         super();
         super.setAnimation(const_503);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_568 = true;
            var_240 = new Array();
            var_240.push(const_1088);
            var_240.push(const_1047);
            return;
         }
         if(param1 > 0 && param1 <= const_504)
         {
            if(var_568)
            {
               var_568 = false;
               var_240 = new Array();
               if(_direction == 2)
               {
                  var_240.push(const_775 + 5 - param1);
                  var_240.push(const_504 + 5 - param1);
               }
               else
               {
                  var_240.push(const_775 + param1);
                  var_240.push(const_504 + param1);
               }
               var_240.push(const_503);
               return;
            }
            super.setAnimation(const_503);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
         {
            if(false)
            {
               super.setAnimation(var_240.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
