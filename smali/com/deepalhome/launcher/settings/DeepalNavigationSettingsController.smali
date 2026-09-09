.class public final Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final binding:Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

.field public final context:Landroid/content/Context;

.field public final navBinding:Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;

.field public final navigationBarVisibilityListener:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$navigationBarVisibilityListener$1;

.field public final uiModeChangedListener:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$uiModeChangedListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->binding:Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    new-instance v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$navigationBarVisibilityListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$navigationBarVisibilityListener$1;-><init>(Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->navigationBarVisibilityListener:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$navigationBarVisibilityListener$1;

    new-instance v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$uiModeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$uiModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->uiModeChangedListener:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$uiModeChangedListener$1;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->$r8$clinit:I

    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->leftColumn:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    const v1, 0x7f0e0073

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v0, v2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;

    const-string p2, "inflate(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->navBinding:Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;

    return-void
.end method

.method public static isBottomNavigationModeEnabled()Z
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isCustomNavigationBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCustomNavigationBarStyle()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarNavigationBarVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final syncNavigationModeRadioButton()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->navBinding:Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalNavModeRadioGroup:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->isBottomNavigationModeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalNavBottomRb:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalNavSideRb:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    new-instance v1, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    iget-object p0, v0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalNavModeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public final updateBottomNavSettingsVisibility()V
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->navBinding:Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalBottomNavSettingsContainer:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->isBottomNavigationModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const v0, 0x7f06038c

    goto :goto_0

    :cond_0
    const v0, 0x7f06038b

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

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
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->navBinding:Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;

    iget-object v2, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalNavigationTitleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalBottomNavCardModeBgHintTv:Landroid/widget/TextView;

    filled-new-array {v2, v3}, [Landroid/widget/TextView;

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
    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalNavigationModeTitleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->bottomNavBackgroundDisplayTitleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalBottomNavCardModeBgTitleTv:Landroid/widget/TextView;

    filled-new-array {v1, v2, v3}, [Landroid/widget/TextView;

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
    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalNavSideRb:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalNavBottomRb:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->bottomNavBackgroundTransparentRb:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->bottomNavBackgroundTranslucentRb:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->bottomNavBackgroundBlurRb:Landroid/widget/RadioButton;

    filled-new-array {v1, v2, v3, v4, v5}, [Landroid/widget/RadioButton;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutDeepalNavigationSettingsBinding;->deepalNavigationCard:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
