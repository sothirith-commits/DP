.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "SourceFile"


# instance fields
.field public final synthetic $requestId:J

.field public final synthetic this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public constructor <init>(IJLcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 0

    iput-wide p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;->$requestId:J

    iput-object p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-direct {p0, p1, p1}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-wide v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverRequestId:J

    iget-wide v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;->$requestId:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->replaceDisplayedCoverTarget(Lcom/bumptech/glide/request/target/CustomTarget;Lcom/bumptech/glide/request/target/CustomTarget;)V

    return-void
.end method

.method public final onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-wide v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverRequestId:J

    iget-wide v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;->$requestId:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->replaceDisplayedCoverTarget(Lcom/bumptech/glide/request/target/CustomTarget;Lcom/bumptech/glide/request/target/CustomTarget;)V

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-wide v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverRequestId:J

    iget-wide v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;->$requestId:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$updateBackgroundImage(Lcom/deepalhome/launcher/music/MusicAppWindow;Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicColorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$extractColorsFromBitmap(Lcom/deepalhome/launcher/music/MusicAppWindow;Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->replaceDisplayedCoverTarget(Lcom/bumptech/glide/request/target/CustomTarget;Lcom/bumptech/glide/request/target/CustomTarget;)V

    :goto_0
    return-void
.end method
