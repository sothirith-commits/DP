.class public final Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/navigation/VolumePopupWindow;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPointsChanged(Lcom/deepalhome/launcher/view/VerticalSeekBar;I)V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "seekBar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$context:Landroid/content/Context;

    const-string p1, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->setGroupVolume(Landroid/content/Context;II)Z

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->audioManager:Landroid/media/AudioManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->callChangedDuringTracking:Z

    return-void

    :pswitch_0
    const-string v0, "seekBar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$context:Landroid/content/Context;

    const-string p1, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v1, p2}, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->setGroupVolume(Landroid/content/Context;II)Z

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->audioManager:Landroid/media/AudioManager;

    const/16 p1, 0x9

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_1
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->navChangedDuringTracking:Z

    return-void

    :pswitch_1
    const-string v0, "seekBar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$context:Landroid/content/Context;

    const-string p1, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v1, p2}, Lcom/deepalhome/launcher/util/s05/audio/S05CarVolumeHelper;->setGroupVolume(Landroid/content/Context;II)Z

    goto :goto_2

    :cond_2
    iget-object p0, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->audioManager:Landroid/media/AudioManager;

    const/4 p1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_2
    iput-boolean v1, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->mediaChangedDuringTracking:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Lcom/deepalhome/launcher/view/VerticalSeekBar;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "seekBar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->callChangedDuringTracking:Z

    return-void

    :pswitch_0
    const-string v0, "seekBar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->navChangedDuringTracking:Z

    return-void

    :pswitch_1
    const-string v0, "seekBar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->mediaChangedDuringTracking:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStopTrackingTouch(Lcom/deepalhome/launcher/view/VerticalSeekBar;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "seekBar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->callChangedDuringTracking:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->lastAnchorFeedbackUptimeMs:J

    iget-object v0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    :pswitch_0
    const-string v0, "seekBar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->navChangedDuringTracking:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->lastAnchorFeedbackUptimeMs:J

    iget-object v0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    :pswitch_1
    const-string v0, "seekBar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->this$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->mediaChangedDuringTracking:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->lastAnchorFeedbackUptimeMs:J

    iget-object v0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$1;->$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
