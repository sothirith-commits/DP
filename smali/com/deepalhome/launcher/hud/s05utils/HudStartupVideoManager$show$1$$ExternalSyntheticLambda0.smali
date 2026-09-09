.class public final synthetic Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    const-string p1, "$player"

    iget-object p0, p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaPlayer;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :goto_0
    return-void
.end method
