.class public final synthetic Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 p1, 0x0

    const-string v0, "_configControl"

    iget p0, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setTwoFingerWallpaperSwitchEnabled(Z)V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicLyricBlurEnabled(Z)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->notifyChanged()V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicDynamicColorEnabled(Z)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->notifyChanged()V

    return-void

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setDynamicSplashEnabled(Z)V

    return-void

    :pswitch_3
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicDynamicEffectEnabled(Z)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->notifyChanged()V

    return-void

    :pswitch_4
    sget p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallTouchSoundEnabled(Z)V

    return-void

    :pswitch_5
    sget p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallBackgroundEnabled(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->applyBallConfig()V

    return-void

    :pswitch_6
    sget p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallEdgeAdsorptionEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallEdgeAdsorptionEnabled()Z

    move-result p0

    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->rootView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p1, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/deepalhome/launcher/floating/FloatingBallWindow$applyEdgeConfigInternal$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow$applyEdgeConfigInternal$1;-><init>(Z)V

    iget-object p0, v1, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->_configControl:Lcom/petterp/floatingx/imp/FxBasicConfigProvider;

    if-eqz p0, :cond_2

    invoke-virtual {v2, p0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow$applyEdgeConfigInternal$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->restartAnimatedIconAfterPositionChange()V

    :cond_4
    return-void

    :pswitch_7
    sget p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuEdgeAdsorptionEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuEdgeAdsorptionEnabled()Z

    move-result p0

    sget-object p2, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->rootView:Landroid/view/View;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance p1, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    sget-object p2, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz p2, :cond_8

    new-instance v1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$applyEdgeConfigInternal$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$applyEdgeConfigInternal$1;-><init>(Z)V

    iget-object p0, p2, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->_configControl:Lcom/petterp/floatingx/imp/FxBasicConfigProvider;

    if-eqz p0, :cond_7

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$applyEdgeConfigInternal$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
