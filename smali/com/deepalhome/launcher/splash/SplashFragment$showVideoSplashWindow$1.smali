.class public final Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic $ctx:Landroid/content/Context;

.field public final synthetic $dismissRunnable:Ljava/lang/Runnable;

.field public final synthetic $isDismissed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $mediaPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $textureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/TextureView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$mediaPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$dismissRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$isDismissed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$textureView:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5

    iget-object p2, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$textureView:Landroid/view/TextureView;

    iget-object p3, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$dismissRunnable:Ljava/lang/Runnable;

    const-string v1, "/2131886081"

    const-string v2, "android.resource://"

    const-string v3, "surface"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p3, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$isDismissed:Lkotlin/jvm/internal/Ref$BooleanRef;

    new-instance p3, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, v3}, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, p3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance p1, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, v0}, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/TextureView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p1, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, v0}, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1$$ExternalSyntheticLambda2;-><init>(Landroid/view/TextureView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$mediaPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string v0, "surface"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;->$mediaPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

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
