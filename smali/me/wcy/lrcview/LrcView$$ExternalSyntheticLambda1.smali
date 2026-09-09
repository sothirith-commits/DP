.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p4, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->f$1:J

    iget-object v2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    const-string p0, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->listIcons()Ljava/util/ArrayList;

    move-result-object p0

    new-instance v3, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    invoke-direct {v3, v2, v0, v1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;JLjava/util/ArrayList;)V

    invoke-static {v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast v2, Ljava/lang/String;

    const-string p0, "$key"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->currentMusicKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v2, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRequestToken:J

    cmp-long p0, v2, v0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->isAwaitingLyric:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->finishLyricRequest()V

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1302b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->showEmpty(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_1
    check-cast v2, Lme/wcy/lrcview/LrcView;

    invoke-static {v2, v0, v1}, Lme/wcy/lrcview/LrcView;->$r8$lambda$PlEmEIYs2pKLk2h90Vp3ePb5ZkM(Lme/wcy/lrcview/LrcView;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
