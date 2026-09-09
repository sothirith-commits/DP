.class public final synthetic Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->dismiss()V

    const/4 p0, 0x1

    return p0
.end method
