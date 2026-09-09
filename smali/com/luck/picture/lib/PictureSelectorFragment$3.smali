.class public final Lcom/luck/picture/lib/PictureSelectorFragment$3;
.super Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment$3;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$3;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$3;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->handleExternalPreviewBack()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onBackCurrentFragment()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$3;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->dismiss()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onShowAlbumPopWindow(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$3;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->showAsDropDown(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTitleDoubleClick()V
    .locals 4

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$3;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isAutomaticTitleRecyclerTop:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->intervalClickTime:J

    sub-long/2addr v0, v2

    const/16 v2, 0x1f4

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->intervalClickTime:J

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
