.class public final Lcom/deepalhome/launcher/settings/WallpaperSettingsView;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0119

    return p0
.end method

.method public final onInit()V
    .locals 5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->twoFingerWallpaperSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->isTwoFingerWallpaperSwitchEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->twoFingerWallpaperSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperCarouselEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/WallpaperSettingsView;I)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getWallpaperCarouselIntervalMinutes()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x59f

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->updateIntervalDisplay(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalSeekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperCarouselEnabled()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperCarouselEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->listDownloads()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperCarouselEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeBingSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeBingEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeBingSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/WallpaperSettingsView;I)V

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeUnsplashSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeUnsplashEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeUnsplashSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/WallpaperSettingsView;I)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final showSubscribeGuideIfNeeded(Lkotlin/jvm/functions/Function0;)V
    .locals 20

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHasShownWallpaperSubscribeGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1304a7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1304a6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f130184

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f130182

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/app/Activity;

    :goto_0
    move-object v12, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$showSubscribeGuideIfNeeded$1;

    move-object v10, v0

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$showSubscribeGuideIfNeeded$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$showSubscribeGuideIfNeeded$2;

    move-object v11, v0

    move-object/from16 v4, p0

    invoke-direct {v0, v4}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$showSubscribeGuideIfNeeded$2;-><init>(Lcom/deepalhome/launcher/settings/WallpaperSettingsView;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v19, 0x7f808

    invoke-static/range {v1 .. v19}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void
.end method

.method public final updateIntervalDisplay(I)V
    .locals 5

    const-string v0, "minutes"

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    rem-int/lit8 v2, p1, 0x3c

    const-string v3, "hours"

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalValueTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f06038c

    goto :goto_0

    :cond_0
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f06038a

    goto :goto_1

    :cond_1
    const v2, 0x7f060389

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-eqz p1, :cond_2

    const p1, 0x7f08025b

    goto :goto_2

    :cond_2
    const p1, 0x7f08025a

    :goto_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v3, v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSettingsTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v4, v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->twoFingerWallpaperHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v5, v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v6, v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v7, v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalMaxTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v8, v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeBingHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v9, v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeUnsplashHintTv:Landroid/widget/TextView;

    filled-new-array/range {v3 .. v9}, [Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->twoFingerWallpaperTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalValueTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeBingTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeUnsplashTitleTv:Landroid/widget/TextView;

    filled-new-array {v1, v2, v3, v4, v5}, [Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060019

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const-string v0, "valueOf(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
