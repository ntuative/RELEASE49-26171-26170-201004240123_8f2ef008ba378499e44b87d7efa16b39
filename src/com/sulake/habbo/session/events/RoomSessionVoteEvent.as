package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_123:String = "RSPE_VOTE_RESULT";
      
      public static const const_132:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1351:int = 0;
      
      private var var_1062:String = "";
      
      private var var_754:Array;
      
      private var var_1021:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1021 = [];
         var_754 = [];
         super(param1,param2,param7,param8);
         var_1062 = param3;
         var_1021 = param4;
         var_754 = param5;
         if(var_754 == null)
         {
            var_754 = [];
         }
         var_1351 = param6;
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
