.class public final Lcom/deepalhome/launcher/settings/LayoutSettingsView;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public appliedDesktopDpi:I

.field public currentSelectedStyle:I

.field public customIconPreview:Landroid/widget/ImageView;

.field public hudDvrPreviewTexture:Landroid/view/TextureView;

.field public styleItems:Ljava/util/List;

.field public stylePreviews:Ljava/util/List;

.field public styleTexts:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$Companion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0074

    return p0
.end method

.method public final loadCustomIconPreview()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressCustomIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->customIconPreview:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_1
    const-string p0, "customIconPreview"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->isSettingsPreviewEnabled:Z

    new-instance v2, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$setSettingsPreviewEnabled$1;

    invoke-direct {v2, v1}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$setSettingsPreviewEnabled$1;-><init>(Z)V

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->previewViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->previewViewRef:Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->previewContainerRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    sget-object v2, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->previewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_2
    sput-object v1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->previewSurface:Landroid/view/Surface;

    :cond_3
    sget v1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->currentDirection:I

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->shouldEnableFeature()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->ensureLocalPreview()V

    :cond_4
    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 12

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicEffectSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicEffectEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicEffectSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicColorSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicColorEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicColorSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->lyricBlurSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicLyricBlurEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->lyricBlurSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLyricsSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLyricsSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistContainer:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrTargetContainer:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrTargetSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05SrShowOnHud()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPreviewStartBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrTargetSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    invoke-direct {v2, v5, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistSettingsContainer:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrSettingsContainer:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05SrShowOnHud()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;

    const/4 v5, 0x6

    invoke-direct {v2, v5, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;

    const/4 v5, 0x7

    invoke-direct {v2, v5, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    const/4 v2, 0x1

    const-string v5, "sp"

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->hudDvrPreviewTexture:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPreviewViewport:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->hudDvrPreviewTexture:Landroid/view/TextureView;

    :goto_4
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->hudDvrPreviewTexture:Landroid/view/TextureView;

    if-eqz v0, :cond_5

    sget-object v6, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->removeLocalPreview()V

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->previewViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6, v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->attachPreviewTextureListener(Landroid/view/TextureView;)V

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPreviewStartBtn:Landroid/widget/TextView;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean v3, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->isSettingsPreviewEnabled:Z

    new-instance v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$setSettingsPreviewEnabled$1;

    invoke-direct {v0, v3}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$setSettingsPreviewEnabled$1;-><init>(Z)V

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistX()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x320

    invoke-static {v6, v0}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->normalizePercent(II)I

    move-result v6

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistX()I

    move-result v7

    if-eq v6, v7, :cond_6

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setHudNaviAssistX(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionXValueTv:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->formatPercent(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionXRecommendBtn:Landroid/widget/TextView;

    new-instance v7, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/4 v8, 0x4

    invoke-direct {v7, v8, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionXSeekbar:Landroid/widget/SeekBar;

    new-instance v7, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/16 v8, 0x9

    invoke-direct {v7, v8, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistY()I

    move-result v6

    const/16 v7, 0x1e0

    invoke-static {v6, v7}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->normalizePercent(II)I

    move-result v6

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistY()I

    move-result v8

    if-eq v6, v8, :cond_7

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setHudNaviAssistY(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v8, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionYValueTv:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->formatPercent(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionYRecommendBtn:Landroid/widget/TextView;

    new-instance v8, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/4 v9, 0x5

    invoke-direct {v8, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionYSeekbar:Landroid/widget/SeekBar;

    new-instance v8, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/16 v9, 0xa

    invoke-direct {v8, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistTextSize()I

    move-result v6

    const/16 v8, 0x1a

    const/16 v9, 0xc

    invoke-static {v6, v9, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v6

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistTextSize()I

    move-result v8

    if-eq v6, v8, :cond_8

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setHudNaviAssistTextSize(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTextSizeSeekbar:Landroid/widget/SeekBar;

    add-int/lit8 v9, v6, -0xc

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTextSizeValueTv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTextSizeRecommendBtn:Landroid/widget/TextView;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/4 v8, 0x6

    invoke-direct {v6, v8, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTextSizeSeekbar:Landroid/widget/SeekBar;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/16 v8, 0xb

    invoke-direct {v6, v8, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistAlpha()I

    move-result v5

    const/16 v6, 0x46

    const/16 v8, 0x64

    invoke-static {v5, v6, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v5

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistAlpha()I

    move-result v6

    if-eq v5, v6, :cond_9

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/deepalhome/launcher/config/UserConfig;->setHudNaviAssistAlpha(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistAlphaSeekbar:Landroid/widget/SeekBar;

    add-int/lit8 v9, v5, -0x46

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistAlphaValueTv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistAlphaRecommendBtn:Landroid/widget/TextView;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/4 v9, 0x7

    invoke-direct {v6, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistAlphaSeekbar:Landroid/widget/SeekBar;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/16 v9, 0xc

    invoke-direct {v6, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget-object v5, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudSrX()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v5, 0x42c80000    # 100.0f

    if-gt v6, v8, :cond_a

    invoke-static {v6, v3, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    int-to-float v9, v0

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-static {v6, v3, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v6

    goto :goto_5

    :cond_a
    invoke-static {v6, v3, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v6

    :goto_5
    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/deepalhome/launcher/config/UserConfig;->getHudSrX()I

    move-result v9

    if-eq v6, v9, :cond_b

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setHudSrX(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v9, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionXValueTv:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionXRecommendBtn:Landroid/widget/TextView;

    new-instance v9, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/16 v10, 0x8

    invoke-direct {v9, v10, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionXSeekbar:Landroid/widget/SeekBar;

    new-instance v9, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/4 v10, 0x0

    invoke-direct {v9, v10, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudSrY()I

    move-result v6

    if-gt v6, v8, :cond_c

    invoke-static {v6, v3, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    int-to-float v5, v7

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-static {v5, v3, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v5

    goto :goto_6

    :cond_c
    invoke-static {v6, v3, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v5

    :goto_6
    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudSrY()I

    move-result v6

    if-eq v5, v6, :cond_d

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/deepalhome/launcher/config/UserConfig;->setHudSrY(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionYValueTv:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionYRecommendBtn:Landroid/widget/TextView;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/16 v9, 0x9

    invoke-direct {v6, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionYSeekbar:Landroid/widget/SeekBar;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/16 v9, 0xd

    invoke-direct {v6, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getHudSrScale()I

    move-result v5

    const/16 v6, 0x32

    const/16 v9, 0x14

    invoke-static {v5, v9, v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v5

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudSrScale()I

    move-result v6

    if-eq v5, v6, :cond_e

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/deepalhome/launcher/config/UserConfig;->setHudSrScale(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrScaleSeekbar:Landroid/widget/SeekBar;

    add-int/lit8 v9, v5, -0x14

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrScaleValueTv:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->formatScale(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrScaleRecommendBtn:Landroid/widget/TextView;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/16 v9, 0xa

    invoke-direct {v6, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrScaleSeekbar:Landroid/widget/SeekBar;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/16 v9, 0xe

    invoke-direct {v6, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget-object v5, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrX()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->normalizePx(II)I

    move-result v5

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrX()I

    move-result v6

    if-eq v5, v6, :cond_f

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/deepalhome/launcher/config/UserConfig;->setHudDvrX(I)V

    :cond_f
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionXValueTv:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionXRecommendBtn:Landroid/widget/TextView;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/16 v9, 0xb

    invoke-direct {v6, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionXSeekbar:Landroid/widget/SeekBar;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/4 v9, 0x2

    invoke-direct {v6, v9, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrRightX()I

    move-result v5

    invoke-static {v5, v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->normalizePx(II)I

    move-result v0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrRightX()I

    move-result v5

    if-eq v0, v5, :cond_10

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setHudDvrRightX(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrRightPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrRightPositionXValueTv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrRightPositionXRecommendBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/16 v6, 0xc

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrRightPositionXSeekbar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/4 v6, 0x3

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrY()I

    move-result v0

    invoke-static {v0, v7}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->normalizePx(II)I

    move-result v0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrY()I

    move-result v5

    if-eq v0, v5, :cond_11

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setHudDvrY(I)V

    :cond_11
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionYValueTv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionYRecommendBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/16 v6, 0xd

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionYSeekbar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/4 v6, 0x4

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrScale()I

    move-result v0

    const/16 v5, 0x23

    invoke-static {v0, v5, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrScale()I

    move-result v5

    if-eq v0, v5, :cond_12

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setHudDvrScale(I)V

    :cond_12
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrScaleSeekbar:Landroid/widget/SeekBar;

    add-int/lit8 v6, v0, -0x23

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrScaleValueTv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->formatScale(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrScaleRecommendBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/16 v6, 0xe

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrScaleSeekbar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/4 v6, 0x5

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_9

    :cond_13
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLyricsSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v6

    if-eqz v6, :cond_14

    move v6, v3

    goto :goto_7

    :cond_14
    move v6, v4

    :goto_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsX()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionXValueTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsX()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionXRecommendBtn:Landroid/widget/TextView;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/4 v7, 0x1

    invoke-direct {v6, v7, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionXSeekbar:Landroid/widget/SeekBar;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/4 v7, 0x6

    invoke-direct {v6, v7, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsY()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionYValueTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsY()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionYRecommendBtn:Landroid/widget/TextView;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/4 v7, 0x2

    invoke-direct {v6, v7, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionYSeekbar:Landroid/widget/SeekBar;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/4 v7, 0x7

    invoke-direct {v6, v7, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsTextSize()I

    move-result v0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsTextSize()I

    move-result v6

    if-eq v0, v6, :cond_15

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setHudLyricsTextSize(I)V

    :cond_15
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudTextSizeSeekbar:Landroid/widget/SeekBar;

    add-int/lit8 v7, v0, -0x10

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudTextSizeValueTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudTextSizeRecommendBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;

    const/4 v6, 0x3

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudTextSizeSeekbar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/16 v6, 0x8

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsLineCount()I

    move-result v0

    if-ne v0, v2, :cond_16

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLineCountOneRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLineCountTwoRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_8
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLineCountRadioGroup:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda12;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->syncHudColorPreview()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudColorSeekbar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/16 v6, 0xf

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_9
    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getAppDensityDpi()I

    move-result v0

    const/16 v5, 0xc8

    const/16 v6, 0xa0

    invoke-static {v0, v6, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    sub-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v6

    iput v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->appliedDesktopDpi:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->desktopDpiSeekbar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->appliedDesktopDpi:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->appliedDesktopDpi:I

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->updateDesktopDpiValue(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->desktopDpiSeekbar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$initHudSrSettings$2;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressStyleEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    move v0, v3

    goto :goto_a

    :cond_17
    move v0, v4

    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;

    const/4 v5, 0x3

    invoke-direct {v1, v5, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleItem0:Landroid/widget/LinearLayout;

    const-string v0, "progressStyleItem0"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleItem1:Landroid/widget/LinearLayout;

    const-string v0, "progressStyleItem1"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleItem2:Landroid/widget/LinearLayout;

    const-string v0, "progressStyleItem2"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleItem3:Landroid/widget/LinearLayout;

    const-string v0, "progressStyleItem3"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v9, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleItem4:Landroid/widget/LinearLayout;

    const-string v0, "progressStyleItem4"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v10, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleItem5:Landroid/widget/LinearLayout;

    const-string v0, "progressStyleItem5"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v11, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleItem6:Landroid/widget/LinearLayout;

    const-string v0, "progressStyleItem6"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array/range {v5 .. v11}, [Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->styleItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStylePreview0:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    const-string v0, "progressStylePreview0"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStylePreview1:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    const-string v0, "progressStylePreview1"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStylePreview2:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    const-string v0, "progressStylePreview2"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStylePreview3:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    const-string v0, "progressStylePreview3"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v9, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStylePreview4:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    const-string v0, "progressStylePreview4"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v10, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStylePreview5:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    const-string v0, "progressStylePreview5"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array/range {v5 .. v10}, [Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->stylePreviews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleText0:Landroid/widget/TextView;

    const-string v0, "progressStyleText0"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleText1:Landroid/widget/TextView;

    const-string v0, "progressStyleText1"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleText2:Landroid/widget/TextView;

    const-string v0, "progressStyleText2"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleText3:Landroid/widget/TextView;

    const-string v0, "progressStyleText3"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v9, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleText4:Landroid/widget/TextView;

    const-string v0, "progressStyleText4"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v10, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleText5:Landroid/widget/TextView;

    const-string v0, "progressStyleText5"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v11, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleText6:Landroid/widget/TextView;

    const-string v0, "progressStyleText6"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array/range {v5 .. v11}, [Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->styleTexts:Ljava/util/List;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleCustomPreview:Landroid/widget/ImageView;

    const-string v1, "progressStyleCustomPreview"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->customIconPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->loadCustomIconPreview()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    if-eqz v1, :cond_18

    const v1, 0x7f060099

    goto :goto_b

    :cond_18
    const v1, 0x7f060098

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->stylePreviews:Ljava/util/List;

    const/4 v5, 0x0

    const-string v6, "stylePreviews"

    if-eqz v1, :cond_26

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v3

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-ltz v7, :cond_19

    check-cast v8, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v8, v7}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setThumbStyle(I)V

    invoke-virtual {v8, v0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setThumbColor(I)V

    move v7, v9

    goto :goto_c

    :cond_19
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_1a
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressStyleEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->stylePreviews:Ljava/util/List;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->startAnimation()V

    goto :goto_d

    :cond_1b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_1c
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressStyle()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->currentSelectedStyle:I

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->updateStyleSelection(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->styleItems:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    if-ltz v1, :cond_1d

    check-cast v6, Landroid/widget/LinearLayout;

    new-instance v8, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1, p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v1, v7

    goto :goto_e

    :cond_1d
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_1e
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->showCarStatusBarBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->showCarStatusBarBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v1, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->showCarNavigationBarBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarNavigationBarVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->showCarNavigationBarBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;

    const/4 v6, 0x2

    invoke-direct {v1, v6, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->customNavigationBarBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->isCustomNavigationBarEnabled()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->customNavigationBarBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    invoke-virtual {v0, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->customNavigationBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBgSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBackgroundEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBgSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v7, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;

    const/4 v8, 0x2

    invoke-direct {v7, v0, v8, p0}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    invoke-virtual {v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBlurSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBlurEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBlurSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v7, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;-><init>(Lcom/deepalhome/launcher/config/UserConfig;I)V

    invoke-virtual {v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavCardModeBgSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavCardModeBackgroundEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavCardModeBgSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v7, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;

    const/4 v8, 0x2

    invoke-direct {v7, v0, v8}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;-><init>(Lcom/deepalhome/launcher/config/UserConfig;I)V

    invoke-virtual {v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBlurContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBackgroundEnabled()Z

    move-result v7

    if-eqz v7, :cond_1f

    move v7, v3

    goto :goto_f

    :cond_1f
    move v7, v4

    :goto_f
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavCardModeBgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_10

    :cond_20
    move v3, v4

    :goto_10
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "getContext(...)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    invoke-direct {v0, v3, v6}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;)V

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->navBinding:Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;

    iget-object v7, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v8, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    if-eqz v7, :cond_21

    goto :goto_12

    :cond_21
    iget-object v7, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeCard:Landroid/widget/LinearLayout;

    iget-object v9, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->leftColumn:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_22

    add-int/2addr v7, v2

    goto :goto_11

    :cond_22
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    :goto_11
    invoke-virtual {v9, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_12
    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->syncNavigationModeRadioButton()V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavCardModeBackgroundEnabled()Z

    move-result v9

    iget-object v10, v3, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalBottomNavCardModeBgSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v10, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    new-instance v9, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;

    const/4 v11, 0x1

    invoke-direct {v9, v7, v11}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda24;-><init>(Lcom/deepalhome/launcher/config/UserConfig;I)V

    invoke-virtual {v10, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v7

    iget-object v9, v3, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->bottomNavBackgroundRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBackgroundEnabled()Z

    move-result v5

    if-nez v5, :cond_23

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->bottomNavBackgroundTransparentRb:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_13

    :cond_23
    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBlurEnabled()Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->bottomNavBackgroundBlurRb:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_13

    :cond_24
    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->bottomNavBackgroundTranslucentRb:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_13
    new-instance v2, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v7}, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->updateBottomNavSettingsVisibility()V

    iget-object v2, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->customNavigationBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object v2, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->updateUIMode(Z)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->uiModeChangedListener:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$uiModeChangedListener$1;

    invoke-static {v2}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->navigationBarVisibilityListener:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$navigationBarVisibilityListener$1;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Landroidx/appcompat/view/menu/StandardMenuPopup$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicSplashSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->isDynamicSplashEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicSplashSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->syncThemeRadioButton()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeRadioGroup:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda12;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :cond_25
    const-string p0, "styleItems"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_26
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method public final syncHudColorPreview()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsColor()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudColorSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudColorPreview:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [F

    invoke-static {v0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudColorSeekbar:Landroid/widget/SeekBar;

    aget v1, v2, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudColorPreview:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public final syncThemeRadioButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeRadioGroup:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getThemeMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeLightRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeDarkRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeAutoRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeRadioGroup:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda12;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public final updateDesktopDpiValue(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->desktopDpiValueTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " DPI"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateStyleSelection(I)V
    .locals 10

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060397

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_0

    const v3, 0x7f06038c

    goto :goto_0

    :cond_0
    const v3, 0x7f06038b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_1

    const v0, 0x7f060099

    goto :goto_1

    :cond_1
    const v0, 0x7f060098

    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->styleItems:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_5

    check-cast v7, Landroid/widget/LinearLayout;

    if-ne v6, p1, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    move v9, v5

    :goto_3
    invoke-virtual {v7, v9}, Landroid/view/View;->setSelected(Z)V

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->styleTexts:Ljava/util/List;

    if-eqz v7, :cond_4

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v9, :cond_3

    move v7, v1

    goto :goto_4

    :cond_3
    move v7, v2

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move v6, v8

    goto :goto_2

    :cond_4
    const-string p0, "styleTexts"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v4

    :cond_6
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->stylePreviews:Ljava/util/List;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setThumbColor(I)V

    goto :goto_5

    :cond_7
    return-void

    :cond_8
    const-string p0, "stylePreviews"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_9
    const-string p0, "styleItems"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final updateUIMode(Z)V
    .locals 53

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f06038c

    goto :goto_0

    :cond_0
    const v2, 0x7f06038b

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_1

    const v3, 0x7f06038a

    goto :goto_1

    :cond_1
    const v3, 0x7f060389

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    if-eqz p1, :cond_2

    const v3, 0x7f08025b

    goto :goto_2

    :cond_2
    const v3, 0x7f08025a

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->windowSectionTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->systemBarTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->desktopDpiHintTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v9, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->desktopDpiDefaultTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v10, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->customNavigationBarHintTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v11, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->musicSectionTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v12, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicEffectHintTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v13, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicColorHintTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v14, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->lyricBlurHintTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v15, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSectionTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLyricsHintTv:Landroid/widget/TextView;

    move-object/from16 v16, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistHintTv:Landroid/widget/TextView;

    move-object/from16 v17, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrTargetHintTv:Landroid/widget/TextView;

    move-object/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrHintTv:Landroid/widget/TextView;

    move-object/from16 v19, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPreviewHintTv:Landroid/widget/TextView;

    move-object/from16 v20, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleHintTv:Landroid/widget/TextView;

    move-object/from16 v21, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->splashSettingsTitleTv:Landroid/widget/TextView;

    move-object/from16 v22, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicSplashHintTv:Landroid/widget/TextView;

    move-object/from16 v23, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBgHintTv:Landroid/widget/TextView;

    move-object/from16 v24, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBlurHintTv:Landroid/widget/TextView;

    move-object/from16 v25, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavCardModeBgHintTv:Landroid/widget/TextView;

    move-object/from16 v26, v4

    filled-new-array/range {v5 .. v26}, [Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->statusBarTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->navigationBarTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->desktopDpiTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->desktopDpiValueTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->customNavigationBarTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v9, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeDescTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v10, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicEffectTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v11, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicColorTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v12, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->lyricBlurTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v13, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLyricsTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v14, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v15, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrTargetTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrTitleTv:Landroid/widget/TextView;

    move-object/from16 v16, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPreviewTitleTv:Landroid/widget/TextView;

    move-object/from16 v17, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionXLabelTv:Landroid/widget/TextView;

    move-object/from16 v18, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionYLabelTv:Landroid/widget/TextView;

    move-object/from16 v19, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrScaleTitleTv:Landroid/widget/TextView;

    move-object/from16 v20, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionXLabelTv:Landroid/widget/TextView;

    move-object/from16 v21, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrRightPositionXLabelTv:Landroid/widget/TextView;

    move-object/from16 v22, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionYLabelTv:Landroid/widget/TextView;

    move-object/from16 v23, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrScaleTitleTv:Landroid/widget/TextView;

    move-object/from16 v24, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionXLabelTv:Landroid/widget/TextView;

    move-object/from16 v25, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionYLabelTv:Landroid/widget/TextView;

    move-object/from16 v26, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTextSizeTitleTv:Landroid/widget/TextView;

    move-object/from16 v27, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistAlphaTitleTv:Landroid/widget/TextView;

    move-object/from16 v28, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionXLabelTv:Landroid/widget/TextView;

    move-object/from16 v29, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionYLabelTv:Landroid/widget/TextView;

    move-object/from16 v30, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudTextSizeTitleTv:Landroid/widget/TextView;

    move-object/from16 v31, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudColorTitleTv:Landroid/widget/TextView;

    move-object/from16 v32, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLineCountTitleTv:Landroid/widget/TextView;

    move-object/from16 v33, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionXValueTv:Landroid/widget/TextView;

    move-object/from16 v34, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionYValueTv:Landroid/widget/TextView;

    move-object/from16 v35, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrScaleValueTv:Landroid/widget/TextView;

    move-object/from16 v36, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionXValueTv:Landroid/widget/TextView;

    move-object/from16 v37, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrRightPositionXValueTv:Landroid/widget/TextView;

    move-object/from16 v38, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionYValueTv:Landroid/widget/TextView;

    move-object/from16 v39, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrScaleValueTv:Landroid/widget/TextView;

    move-object/from16 v40, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionXValueTv:Landroid/widget/TextView;

    move-object/from16 v41, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionYValueTv:Landroid/widget/TextView;

    move-object/from16 v42, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTextSizeValueTv:Landroid/widget/TextView;

    move-object/from16 v43, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistAlphaValueTv:Landroid/widget/TextView;

    move-object/from16 v44, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionXValueTv:Landroid/widget/TextView;

    move-object/from16 v45, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionYValueTv:Landroid/widget/TextView;

    move-object/from16 v46, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudTextSizeValueTv:Landroid/widget/TextView;

    move-object/from16 v47, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleTitleTv:Landroid/widget/TextView;

    move-object/from16 v48, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->dynamicSplashTitleTv:Landroid/widget/TextView;

    move-object/from16 v49, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBgTitleTv:Landroid/widget/TextView;

    move-object/from16 v50, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBlurTitleTv:Landroid/widget/TextView;

    move-object/from16 v51, v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavCardModeBgTitleTv:Landroid/widget/TextView;

    move-object/from16 v52, v2

    filled-new-array/range {v4 .. v52}, [Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeAutoRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeDarkRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeLightRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLineCountOneRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLineCountTwoRb:Landroid/widget/RadioButton;

    filled-new-array {v2, v4, v5, v6, v7}, [Landroid/widget/RadioButton;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_6

    const v1, 0x7f080251

    goto :goto_6

    :cond_6
    const v1, 0x7f080252

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->styleItems:Ljava/util/List;

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->currentSelectedStyle:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->updateStyleSelection(I)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->windowCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->themeCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->systemBarCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->musicCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPreviewCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v9, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v10, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->splashCard:Landroid/widget/LinearLayout;

    filled-new-array/range {v4 .. v10}, [Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const-string v2, "valueOf(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06001a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v4, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v5, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v6, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTextSizeSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v7, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistAlphaSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v8, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v9, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v10, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrScaleSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v11, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v12, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrRightPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v13, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v14, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrScaleSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v15, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->desktopDpiSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 p1, v3

    move-object/from16 v3, v16

    check-cast v3, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudTextSizeSeekbar:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    check-cast v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudColorSeekbar:Landroid/widget/SeekBar;

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    filled-new-array/range {v4 .. v19}, [Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->syncThemeRadioButton()V

    return-void
.end method
