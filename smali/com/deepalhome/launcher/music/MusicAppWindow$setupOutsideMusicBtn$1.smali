.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    const-string v2, "it"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    sget v2, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->scheduleFontMenuAutoCollapse()V

    sget-object v1, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;

    iget-object v2, v0, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->getEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Current device does not support external playback"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->setEnabled(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "External playback switch failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateOutsideMusicIcon()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1$1;

    move-object v10, v2

    iget-object v0, v0, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1$1;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    const/16 v17, 0x0

    const v19, 0x7feac

    const-string v2, "External playback"

    const-string v3, "Confirm to enable external playback?"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-static/range {v1 .. v19}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
