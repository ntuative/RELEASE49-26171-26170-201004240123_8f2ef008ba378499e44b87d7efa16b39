package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_594:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var var_563:String;
      
      private var var_322:String;
      
      private var _userId:int;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_594,param4,param5);
         _userId = param1;
         var_322 = param2;
         var_563 = param3;
      }
      
      public function get gender() : String
      {
         return var_563;
      }
      
      public function get figure() : String
      {
         return var_322;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
