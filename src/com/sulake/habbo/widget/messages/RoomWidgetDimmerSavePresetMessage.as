package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_745:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2078:int;
      
      private var var_2079:int;
      
      private var var_2264:Boolean;
      
      private var var_1042:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_745);
         var_2079 = param1;
         var_2078 = param2;
         _color = param3;
         var_1042 = param4;
         var_2264 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2078;
      }
      
      public function get presetNumber() : int
      {
         return var_2079;
      }
      
      public function get brightness() : int
      {
         return var_1042;
      }
      
      public function get apply() : Boolean
      {
         return var_2264;
      }
   }
}
