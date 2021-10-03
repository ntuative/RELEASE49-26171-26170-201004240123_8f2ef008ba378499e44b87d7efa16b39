package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1915:String;
      
      private var var_1328:String;
      
      private var var_1914:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1914 = param1;
         var_1328 = param2;
         var_1915 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1914,var_1328,var_1915];
      }
      
      public function dispose() : void
      {
      }
   }
}
