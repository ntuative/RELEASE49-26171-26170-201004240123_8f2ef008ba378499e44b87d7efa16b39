package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_833:int;
      
      private var _right:int;
      
      private var var_831:int;
      
      private var var_832:int;
      
      private var var_185:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_831 = param1;
         var_832 = param2;
         _right = param3;
         var_833 = param4;
         var_185 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_833 = param1;
         var_185(this);
      }
      
      public function get left() : int
      {
         return var_831;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_831 == 0 && _right == 0 && var_832 == 0 && var_833 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_832 = param1;
         var_185(this);
      }
      
      public function get top() : int
      {
         return var_832;
      }
      
      public function set left(param1:int) : void
      {
         var_831 = param1;
         var_185(this);
      }
      
      public function get bottom() : int
      {
         return var_833;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_831,var_832,_right,var_833,param1);
      }
      
      public function dispose() : void
      {
         var_185 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_185(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
