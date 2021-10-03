package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_128:String = "RWPUW_CONTENT";
      
      public static const const_134:String = "RWPUW_OFFER";
      
      public static const const_68:String = "RWPUW_ERROR";
       
      
      private var var_1015:Array = null;
      
      private var var_1235:String = "";
      
      private var var_1254:String;
      
      private var var_1234:String = "";
      
      private var var_1016:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_1015;
      }
      
      public function get startMessage() : String
      {
         return var_1235;
      }
      
      public function get summary() : String
      {
         return var_1254;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1235 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1016 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1254 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1016;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1234 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1234;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1015 = param1;
      }
   }
}
