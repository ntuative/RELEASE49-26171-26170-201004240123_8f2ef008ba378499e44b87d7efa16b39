package com.sulake.habbo.catalog.club
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.session.product.IProductData;
   
   public class ClubGiftConfirmationDialog
   {
       
      
      private var _view:IFrameWindow;
      
      private var var_48:ClubGiftController;
      
      private var var_77:Offer;
      
      public function ClubGiftConfirmationDialog(param1:ClubGiftController, param2:Offer)
      {
         super();
         var_77 = param2;
         var_48 = param1;
         showConfirmation();
      }
      
      private function windowEventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(!param1 || !param2 || !var_48 || !var_77)
         {
            return;
         }
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "select_button":
               var_48.confirmSelection(var_77.localizationId);
               break;
            case "header_button_close":
            case "cancel_button":
               var_48.closeConfirmation();
         }
      }
      
      public function showConfirmation() : void
      {
         if(!var_77 || !var_48)
         {
            return;
         }
         _view = createWindow("club_gift_confirmation") as IFrameWindow;
         if(!_view)
         {
            return;
         }
         _view.procedure = windowEventHandler;
         _view.center();
         var _loc1_:ITextWindow = _view.findChildByName("item_name") as ITextWindow;
         if(_loc1_)
         {
            _loc1_.text = getProductName();
         }
         var _loc2_:IWindowContainer = _view.findChildByName("image_border") as IWindowContainer;
         if(!_loc2_)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var_77.productContainer.view = _loc2_;
         var_77.productContainer.initProductIcon(var_48.roomEngine);
      }
      
      private function getProductName() : String
      {
         var _loc1_:* = null;
         if(var_77 && false && var_77.productContainer.firstProduct)
         {
            _loc1_ = var_77.productContainer.firstProduct.productData;
            if(_loc1_)
            {
               return _loc1_.name;
            }
         }
         return "";
      }
      
      private function createWindow(param1:String) : IWindow
      {
         if(!var_48 || true || true)
         {
            return null;
         }
         var _loc2_:XmlAsset = var_48.assets.getAssetByName(param1) as XmlAsset;
         if(!_loc2_ || !_loc2_.content)
         {
            return null;
         }
         var _loc3_:XML = _loc2_.content as XML;
         if(!_loc3_)
         {
            return null;
         }
         return var_48.windowManager.buildFromXML(_loc3_);
      }
      
      public function dispose() : void
      {
         var_48 = null;
         var_77 = null;
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
      }
   }
}
