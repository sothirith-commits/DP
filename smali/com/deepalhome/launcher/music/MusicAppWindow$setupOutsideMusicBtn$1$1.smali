.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->setEnabled(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Current device does not support external playback"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateOutsideMusicIcon()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
