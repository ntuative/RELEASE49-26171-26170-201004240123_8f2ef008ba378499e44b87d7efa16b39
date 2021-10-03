package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_971:String = "inventory_badges";
      
      public static const const_1192:String = "inventory_clothes";
      
      public static const const_1301:String = "inventory_furniture";
      
      public static const const_732:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1018:String = "inventory_effects";
       
      
      private var var_1941:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_732);
         var_1941 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1941;
      }
   }
}
