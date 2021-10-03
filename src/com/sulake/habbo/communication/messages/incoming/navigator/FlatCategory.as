package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_351:Boolean;
      
      private var var_1210:int;
      
      private var var_1471:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1210 = param1.readInteger();
         var_1471 = param1.readString();
         var_351 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_351;
      }
      
      public function get nodeName() : String
      {
         return var_1471;
      }
      
      public function get nodeId() : int
      {
         return var_1210;
      }
   }
}
