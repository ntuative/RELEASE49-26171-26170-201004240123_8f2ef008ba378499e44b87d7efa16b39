package com.sulake.habbo.avatar.head
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.common.CategoryBaseModel;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   
   public class HeadModel extends CategoryBaseModel implements IAvatarEditorCategoryModel
   {
       
      
      public function HeadModel(param1:HabboAvatarEditor)
      {
         super(param1);
      }
      
      override protected function init() : void
      {
         super.init();
         initCategory(FigureData.const_146);
         initCategory(FigureData.const_174);
         initCategory(FigureData.const_159);
         initCategory(FigureData.const_182);
         initCategory(FigureData.const_164);
         var_164 = true;
         if(!_view)
         {
            _view = new HeadView(this,controller.windowManager,controller.assets);
            if(_view)
            {
               _view.init();
            }
         }
      }
   }
}
