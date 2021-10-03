package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_869:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_869 = new Array();
         var_869.push(param1.length);
         var_869 = var_869.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_869;
      }
   }
}
