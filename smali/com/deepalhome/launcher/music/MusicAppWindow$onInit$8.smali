.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onStartTrackingTouch$com$deepalhome$launcher$settings$WallpaperSettingsView$initWallpaperCarouselIntervalSetting$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStartTrackingTouch$com$luck$picture$lib$adapter$holder$PreviewAudioHolder$6(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$deepalhome$launcher$settings$WallpaperSettingsView$initWallpaperCarouselIntervalSetting$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$luck$picture$lib$adapter$holder$PreviewAudioHolder$6(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;->this$0:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    check-cast v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long p2, p2

    invoke-static {p2, p3}, Lcom/luck/picture/lib/utils/DateUtils;->formatDurationTime(J)Ljava/lang/String;

    move-result-object p0

    iget-object p2, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPlaying$1()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperCarouselIntervalMinutes(I)V

    sget p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->$r8$clinit:I

    check-cast v0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    invoke-virtual {v0, p2}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->updateIntervalDisplay(I)V

    :cond_1
    return-void

    :pswitch_1
    check-cast v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    iget-boolean p0, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->suppressSeekBarCallback:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->updateSelectedLevel(IZ)V

    :goto_0
    return-void

    :pswitch_2
    if-eqz p3, :cond_5

    new-instance p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8$onProgressChanged$1;

    check-cast v0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8$onProgressChanged$1;-><init>(Landroid/widget/SeekBar;Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    sget p3, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->interceptSeekWhenUnsupported(Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->positionTv:Landroid/widget/TextView;

    div-int/lit16 p3, p2, 0x3e8

    invoke-virtual {v0, p3}, Lcom/deepalhome/launcher/music/MusicAppWindow;->formatDuration(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    invoke-static {v0, p2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateProgressThumbPosition$default(Lcom/deepalhome/launcher/music/MusicAppWindow;II)V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;->this$0:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    check-cast v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    iget-object p0, v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->capsuleThumbDrawable:Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->setDragging(Z)V

    iget-boolean p0, v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isUserInteracting:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isUserInteracting:Z

    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p1, v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_2
    new-instance p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8$onStartTrackingTouch$1;

    check-cast v1, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-direct {p0, p1, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8$onStartTrackingTouch$1;-><init>(Landroid/widget/SeekBar;Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    sget p1, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->interceptSeekWhenUnsupported(Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v0, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->isUserSeeking:Z

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$animateProgressDrag(Lcom/deepalhome/launcher/music/MusicAppWindow;Z)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setDragging(Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;->this$0:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    check-cast v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    iget-object p0, v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->capsuleThumbDrawable:Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->setDragging(Z)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->confirmAndScheduleClose()V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->endUserInteraction()V

    return-void

    :pswitch_2
    new-instance p0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8$onStopTrackingTouch$1;

    check-cast v1, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-direct {p0, p1, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8$onStopTrackingTouch$1;-><init>(Landroid/widget/SeekBar;Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    sget v2, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->interceptSeekWhenUnsupported(Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/deepalhome/launcher/music/MusicManager;->seekTo(J)V

    :cond_1
    iput-boolean v0, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->isUserSeeking:Z

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$animateProgressDrag(Lcom/deepalhome/launcher/music/MusicAppWindow;Z)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setDragging(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
