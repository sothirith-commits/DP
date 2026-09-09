.class public final Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic $appContext:Landroid/content/Context;

.field public final synthetic $timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1;->$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1;->$timeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1;->$appContext:Landroid/content/Context;

    const-string v1, "/2131886081"

    const-string v2, "android.resource://"

    const-string v3, "holder"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    sput-object v3, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    new-instance p1, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, v3}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1;->$timeoutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->dismiss()V

    :goto_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method
