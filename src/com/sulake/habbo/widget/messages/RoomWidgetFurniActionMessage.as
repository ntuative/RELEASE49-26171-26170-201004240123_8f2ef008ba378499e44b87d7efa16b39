package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_270:String = "RWFAM_MOVE";
      
      public static const const_516:String = "RWFUAM_ROTATE";
      
      public static const const_510:String = "RWFAM_PICKUP";
       
      
      private var var_1942:int = 0;
      
      private var var_2062:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1942 = param2;
         var_2062 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1942;
      }
      
      public function get furniCategory() : int
      {
         return var_2062;
      }
   }
}
