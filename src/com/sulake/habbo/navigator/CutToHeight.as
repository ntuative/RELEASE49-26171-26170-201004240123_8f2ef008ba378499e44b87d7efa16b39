package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_171:String;
      
      private var var_416:int;
      
      private var var_201:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_171 = param1;
         var_201 = param2;
         var_416 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_201.text = var_171.substring(0,param1) + "...";
         return var_201.textHeight > var_416;
      }
   }
}
