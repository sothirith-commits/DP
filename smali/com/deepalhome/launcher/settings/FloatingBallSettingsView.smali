.class public final Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final floatingBallGestureItems:Ljava/util/ArrayList;

.field public previewLoadToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->floatingBallGestureItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e005f

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->updateFloatingBallIconPreview()V

    return-void
.end method

.method public final onInit()V
    .locals 10

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallDetailsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4, p0}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallEdgeSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallEdgeAdsorptionEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallEdgeSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallBackgroundSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallBackgroundEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallBackgroundSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallTouchSoundSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallTouchSoundEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallTouchSoundSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallSize()I

    move-result v1

    const/16 v2, 0x40

    const/16 v4, 0xf0

    invoke-static {v1, v2, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallSize()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallSize(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSizeSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSizeValueTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSizeSeekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;

    const/4 v4, 0x0

    invoke-direct {v2, v0, p0, v4}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;-><init>(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallAlpha()I

    move-result v1

    const/16 v2, 0xa

    const/16 v4, 0x64

    invoke-static {v1, v2, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallOpacitySeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallOpacityValueTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallOpacitySeekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;

    const/4 v4, 0x1

    invoke-direct {v2, v0, p0, v4}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;-><init>(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallIconBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->updateFloatingBallIconPreview()V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->floatingBallGestureItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallGestureContainer:Landroid/widget/LinearLayout;

    const-string v2, "floatingBallGestureContainer"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1301f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "single_tap"

    invoke-direct {v2, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1301f2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "double_tap"

    invoke-direct {v4, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1301f4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "long_press"

    invoke-direct {v5, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v4, v5}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0e005e

    invoke-virtual {v6, v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b0253

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b0250

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0b0251

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v7, 0x9

    invoke-direct {v4, v7, p0, v5}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->updateFloatingBallGestureItem(Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->updateFloatingBallGestureStyles(Z)V

    :goto_2
    return-void
.end method

.method public final updateFloatingBallGestureItem(Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallGestureActions()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1301f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    instance-of v1, v0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1301e9

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of p0, v0, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;->Companion:Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode$Companion;

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode$Companion;->getModeName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of p0, v0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->Companion:Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;->getModeName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of p0, v0, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    if-eqz p0, :cond_6

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of p0, v0, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    if-eqz p0, :cond_7

    sget-object p0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTriggerlessTaskNameOrFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    iget-object p1, p1, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;->actionTv:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateFloatingBallGestureStyles(Z)V
    .locals 5

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

    const p1, 0x7f080079

    goto :goto_2

    :cond_2
    const p1, 0x7f080078

    :goto_2
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->floatingBallGestureItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;

    iget-object v3, v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;->root:Landroid/view/View;

    const v4, 0x7f0b0253

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;->actionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;->root:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;->arrowIv:Landroid/widget/ImageView;

    const v3, 0x7f08024b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final updateFloatingBallIconPreview()V
    .locals 8

    iget v0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->previewLoadToken:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->previewLoadToken:I

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconPackageName(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result v1

    const v2, 0x7f08013b

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconResId(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallIconPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 14

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

    const v2, 0x7f08025b

    goto :goto_2

    :cond_2
    const v2, 0x7f08025a

    :goto_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v4, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v5, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallEnableHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v6, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallAppearanceTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v7, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallEdgeHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v8, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallBackgroundHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v9, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallTouchSoundHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v10, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallIconHintTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v11, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallGestureTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v12, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSizeMaxTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v13, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallOpacityMaxTv:Landroid/widget/TextView;

    filled-new-array/range {v4 .. v13}, [Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v3, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallEnableTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v4, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSizeTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v5, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallOpacityTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v6, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallEdgeTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v7, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallBackgroundTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v8, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallTouchSoundTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v9, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallIconTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v10, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSizeValueTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v11, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallOpacityValueTv:Landroid/widget/TextView;

    filled-new-array/range {v3 .. v11}, [Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallCard:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallAppearanceCard:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallGestureCard:Landroid/widget/LinearLayout;

    filled-new-array {v0, v1, v3}, [Landroid/widget/LinearLayout;

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

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallIconBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060397

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const-string v1, "valueOf(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSizeSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallOpacitySeekbar:Landroid/widget/SeekBar;

    filled-new-array {v1, v3}, [Landroid/widget/SeekBar;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->updateFloatingBallGestureStyles(Z)V

    return-void
.end method
