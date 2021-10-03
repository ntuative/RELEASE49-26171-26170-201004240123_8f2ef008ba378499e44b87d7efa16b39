package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2214:int;
      
      private var var_2215:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_2214 = param1;
         var_2215 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_2214,var_2215];
      }
   }
}
