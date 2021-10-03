package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_123:String = "RWPUE_VOTE_RESULT";
      
      public static const const_132:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1351:int;
      
      private var var_1062:String;
      
      private var var_754:Array;
      
      private var var_1021:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1062 = param2;
         var_1021 = param3;
         var_754 = param4;
         if(var_754 == null)
         {
            var_754 = [];
         }
         var_1351 = param5;
      }
      
      public function get votes() : Array
      {
         return var_754.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1351;
      }
      
      public function get question() : String
      {
         return var_1062;
      }
      
      public function get choices() : Array
      {
         return var_1021.slice();
      }
   }
}
