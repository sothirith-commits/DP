.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$Companion;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
