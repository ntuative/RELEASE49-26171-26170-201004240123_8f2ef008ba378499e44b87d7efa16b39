package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1078:int = 1;
      
      private static const const_1047:int = 3;
      
      private static const const_1076:int = 2;
      
      private static const const_1077:int = 15;
       
      
      private var var_847:int;
      
      private var var_240:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_240 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1076)
         {
            var_240 = new Array();
            var_240.push(const_1078);
            var_847 = const_1077;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_847 > 0)
         {
            --var_847;
         }
         if(var_847 == 0)
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
