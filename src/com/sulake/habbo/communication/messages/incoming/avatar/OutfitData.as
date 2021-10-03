package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1703:String;
      
      private var var_563:String;
      
      private var var_1409:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1409 = param1.readInteger();
         var_1703 = param1.readString();
         var_563 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_563;
      }
      
      public function get figureString() : String
      {
         return var_1703;
      }
      
      public function get slotId() : int
      {
         return var_1409;
      }
   }
}
