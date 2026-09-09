.class public final Lcom/deepalhome/launcher/settings/MuyuSettingsView;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method private final setupColorSeekbar(Lcom/deepalhome/launcher/config/UserConfig;)V
    .locals 5

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuColor()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorValueTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f13037d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/settings/MuyuSettingsView;->updateColorPreview(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [F

    invoke-static {v0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorSeekbar:Landroid/widget/SeekBar;

    aget v4, v2, v1

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorValueTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v1, v2, v1

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xb0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/MuyuSettingsView;->updateColorPreview(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorSeekbar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;-><init>(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/settings/MuyuSettingsView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e00bc

    return p0
.end method

.method public final onInit()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuEnableSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuDetailsContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuEnableSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p0}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuEdgeSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuEdgeAdsorptionEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuEdgeSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuSize()I

    move-result v1

    const/16 v2, 0x50

    const/16 v3, 0xc8

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuSize()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuSize(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSizeSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSizeValueTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSizeSeekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;-><init>(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/settings/MuyuSettingsView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuAlpha()I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuOpacitySeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuOpacityValueTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuOpacitySeekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p0, v3}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;-><init>(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/settings/MuyuSettingsView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSafetySwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuSafetyModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSafetySwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/settings/MuyuSettingsView;->setupColorSeekbar(Lcom/deepalhome/launcher/config/UserConfig;)V

    return-void
.end method

.method public final updateColorPreview(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f06008a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_1
    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 11

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

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v3, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v4, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuEnableHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v5, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuAppearanceTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v6, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSafetyTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v7, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSafetyModeHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v8, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuEdgeHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v9, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSizeMaxTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v10, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuOpacityMaxTv:Landroid/widget/TextView;

    filled-new-array/range {v3 .. v10}, [Landroid/widget/TextView;

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

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuEnableTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v3, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSizeTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v4, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuOpacityTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v5, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSizeValueTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v6, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuOpacityValueTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v7, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSafetyModeTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v8, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuEdgeTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v9, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v10, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorValueTv:Landroid/widget/TextView;

    filled-new-array/range {v2 .. v10}, [Landroid/widget/TextView;

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

    check-cast v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuCard:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuAppearanceCard:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSafetyCard:Landroid/widget/LinearLayout;

    filled-new-array {v0, v1, v2}, [Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_5
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

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSizeSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuOpacitySeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorSeekbar:Landroid/widget/SeekBar;

    filled-new-array {v0, v2, p0}, [Landroid/widget/SeekBar;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    :cond_6
    return-void
.end method
