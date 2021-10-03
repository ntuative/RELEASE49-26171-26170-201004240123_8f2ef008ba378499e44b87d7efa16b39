package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1047:int = -1;
      
      private static const const_775:int = 20;
      
      private static const const_504:int = 9;
       
      
      private var var_568:Boolean = false;
      
      private var var_240:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_240 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_568 = true;
            var_240 = new Array();
            var_240.push(const_1047);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_568)
            {
               var_568 = false;
               var_240 = new Array();
               var_240.push(const_775);
               var_240.push(const_504 + param1);
               var_240.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
