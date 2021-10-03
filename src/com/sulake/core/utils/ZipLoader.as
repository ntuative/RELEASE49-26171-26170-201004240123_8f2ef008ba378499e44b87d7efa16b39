package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_1229:uint = 0;
      
      private var var_1230:uint = 0;
      
      private var var_108:FZip;
      
      private var var_1231:Array;
      
      private var var_1934:uint = 0;
      
      private var var_837:int = 0;
      
      private var var_2382:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1231 = new Array();
      }
      
      override protected function removeEventListeners() : void
      {
         if(var_108)
         {
            var_108.removeEventListener(Event.COMPLETE,onComplete);
            var_108.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_108.removeEventListener(ProgressEvent.PROGRESS,onProgress);
            var_108.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         }
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         debug("Load event IO ERROR for file \"undefined\"");
         if(!handleHttpStatus(var_186))
         {
            failure("IO Error, send or load operation failed for file \"undefined\": " + param1.text);
            removeEventListeners();
         }
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_1230;
      }
      
      override protected function loadEventHandler(param1:Event) : void
      {
      }
      
      override public function get bytesTotal() : uint
      {
         return var_1229;
      }
      
      public function get resources() : Array
      {
         return var_1231;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var loaderInfo:LoaderInfo = null;
         var name:String = null;
         var event:Event = param1;
         try
         {
            loaderInfo = event.target as LoaderInfo;
            name = getQualifiedClassName(var_15.content);
            var_1231.push(var_15.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_837;
            if(var_1231.length == var_1934)
            {
               var_15.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               removeEventListeners();
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,var_1229,var_1230));
            }
            else
            {
               var_15.loadBytes(var_108.getFileAt(var_837).content);
            }
         }
         catch(e:Error)
         {
            failure("Crashed on ZipLoader.onLoaderComplete: \"undefined\": " + e.message);
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         var_1229 = param1.bytesTotal;
         var_1230 = param1.bytesLoaded;
         debug("Load event PROGRESS for file \"undefined\"");
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,var_1229,var_1230));
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         ErrorReportStorage.addDebugData("Library url","Library url " + param1.url);
         var_80 = param1;
         _name = parseNameFromUrl(var_80.url);
         var_291 = param3;
         if(var_108)
         {
            var_108.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_108 = new FZip();
         var_108.addEventListener(Event.COMPLETE,onComplete);
         var_108.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_108.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_108.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         var_108.load(var_80);
      }
      
      override protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 == 0 || param1 >= 400)
         {
            if(var_291 > 0)
            {
               if(var_108)
               {
                  var_108.close();
               }
               addRequestCounterToUrlRequest(var_80,const_1035 - var_291);
               var_108.load(var_80);
               --var_291;
               return true;
            }
            failure("HTTP Error " + param1 + " \"" + var_80.url + "\"");
            removeEventListeners();
         }
         return false;
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_837 = 0;
         var_1934 = var_108.getFileCount();
         debug("Load event COMPLETE for file \"undefined\"");
         removeEventListeners();
         try
         {
            if(var_15)
            {
               var_15.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_15.loadBytes(var_108.getFileAt(var_837).content);
            }
         }
         catch(e:Error)
         {
            debug("Failed to extract files from library \"undefined\"");
            if(!handleHttpStatus(var_186))
            {
               failure("Crashed on ZipLoader.onComplete: \"undefined\": " + e.message);
            }
         }
      }
      
      private function onHTTPStatus(param1:HTTPStatusEvent) : void
      {
         var_186 = param1.status;
         debug("Load event STATUS " + var_186 + " for file \"" + var_80.url + "\"");
      }
   }
}
