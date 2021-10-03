package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_998:SoundChannel = null;
      
      private var var_821:Boolean;
      
      private var var_997:Sound = null;
      
      private var var_680:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_997 = param1;
         var_997.addEventListener(Event.COMPLETE,onComplete);
         var_680 = 1;
         var_821 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_821;
      }
      
      public function stop() : Boolean
      {
         var_998.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_821 = false;
         var_998 = var_997.play(0);
         this.volume = var_680;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_680;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_998.position;
      }
      
      public function get length() : Number
      {
         return var_997.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_680 = param1;
         if(var_998 != null)
         {
            var_998.soundTransform = new SoundTransform(var_680);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_821 = true;
      }
   }
}
