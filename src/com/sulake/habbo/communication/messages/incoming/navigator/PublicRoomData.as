package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1949:int;
      
      private var var_1950:String;
      
      private var var_1830:int;
      
      private var _disposed:Boolean;
      
      private var var_1948:int;
      
      private var var_1829:String;
      
      private var var_1210:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1829 = param1.readString();
         var_1949 = param1.readInteger();
         var_1830 = param1.readInteger();
         var_1950 = param1.readString();
         var_1948 = param1.readInteger();
         var_1210 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1948;
      }
      
      public function get worldId() : int
      {
         return var_1830;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1829;
      }
      
      public function get unitPort() : int
      {
         return var_1949;
      }
      
      public function get castLibs() : String
      {
         return var_1950;
      }
      
      public function get nodeId() : int
      {
         return var_1210;
      }
   }
}
