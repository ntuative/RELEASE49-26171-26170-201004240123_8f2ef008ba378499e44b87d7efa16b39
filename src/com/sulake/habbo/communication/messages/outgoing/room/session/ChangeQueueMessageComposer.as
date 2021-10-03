package com.sulake.habbo.communication.messages.outgoing.room.session
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class ChangeQueueMessageComposer implements IMessageComposer
   {
       
      
      private var var_2202:int;
      
      public function ChangeQueueMessageComposer(param1:int)
      {
         super();
         var_2202 = param1;
      }
      
      public function get disposed() : Boolean
      {
         return true;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2202];
      }
      
      public function dispose() : void
      {
      }
   }
}
