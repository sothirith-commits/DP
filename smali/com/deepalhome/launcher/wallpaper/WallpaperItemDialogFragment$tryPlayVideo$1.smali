.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic $index:I

.field public final synthetic $item:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

.field public final synthetic $thumbUrl:Ljava/lang/String;

.field public final synthetic $timeout:Ljava/lang/Runnable;

.field public final synthetic $url:Ljava/lang/String;

.field public final synthetic $urls:Ljava/util/List;

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Ljava/lang/String;Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$timeout:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$urls:Ljava/util/List;

    iput p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$index:I

    iput-object p6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$thumbUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$item:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 9

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$timeout:Ljava/lang/Runnable;

    iget-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$url:Ljava/lang/String;

    const-string v0, "surface"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->releaseMediaPlayer()V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    sget-object p1, Lcom/deepalhome/launcher/http/OpenListProxy;->INSTANCE:Lcom/deepalhome/launcher/http/OpenListProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/deepalhome/launcher/http/OpenListProxy;->proxyAuthHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v1, v2, p3, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_0
    new-instance p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p2, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Ljava/lang/Runnable;Landroid/media/MediaPlayer;)V

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$timeout:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$urls:Ljava/util/List;

    iget v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$index:I

    iget-object v7, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$thumbUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$item:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Ljava/lang/Runnable;Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object p3, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->timeoutRunnable:Ljava/lang/Runnable;

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$index:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$thumbUrl:Ljava/lang/String;

    iget-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$item:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->$urls:Ljava/util/List;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->tryPlayVideo(Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    :goto_1
    return-void

    :cond_2
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string v0, "surface"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->releaseMediaPlayer()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p0, "surface"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const-string p0, "surface"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
