.class public final Lcom/deepalhome/launcher/settings/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public _binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

.field public aboutSettingsBadgeView:Landroid/view/View;

.field public final aboutSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final advancedSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

.field public baseContainerBottomMargin:I

.field public baseScrollViewBottomMargin:I

.field public final bleSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final floatingBallSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final layoutSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final muyuSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

.field public navBarInsetBottom:I

.field public final navBarVisibilityListener:Lcom/deepalhome/launcher/settings/SettingsFragment$navBarVisibilityListener$1;

.field public final scheduledTaskSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final statusBarVisibilityListener:Lcom/deepalhome/launcher/settings/SettingsFragment$statusBarVisibilityListener$1;

.field public final uiModeChangedListener:Lcom/deepalhome/launcher/settings/SettingsFragment$uiModeChangedListener$1;

.field public final updateBadgeChangedListener:Lcom/deepalhome/launcher/settings/SettingsFragment$updateBadgeChangedListener$1;

.field public final wallpaperSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$aboutSettingsView$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$aboutSettingsView$2;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->aboutSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$advancedSettingsView$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$advancedSettingsView$2;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->advancedSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$scheduledTaskSettingsView$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$scheduledTaskSettingsView$2;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->scheduledTaskSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$layoutSettingsView$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$layoutSettingsView$2;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->layoutSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$wallpaperSettingsView$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$wallpaperSettingsView$2;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->wallpaperSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$floatingBallSettingsView$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$floatingBallSettingsView$2;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->floatingBallSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$muyuSettingsView$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$muyuSettingsView$2;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->muyuSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$bleSettingsView$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$bleSettingsView$2;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->bleSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$uiModeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$uiModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->uiModeChangedListener:Lcom/deepalhome/launcher/settings/SettingsFragment$uiModeChangedListener$1;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$statusBarVisibilityListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$statusBarVisibilityListener$1;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->statusBarVisibilityListener:Lcom/deepalhome/launcher/settings/SettingsFragment$statusBarVisibilityListener$1;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$navBarVisibilityListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$navBarVisibilityListener$1;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->navBarVisibilityListener:Lcom/deepalhome/launcher/settings/SettingsFragment$navBarVisibilityListener$1;

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsFragment$updateBadgeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$updateBadgeChangedListener$1;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->updateBadgeChangedListener:Lcom/deepalhome/launcher/settings/SettingsFragment$updateBadgeChangedListener$1;

    return-void
.end method

.method public static applySettingViewUIMode(Landroid/view/View;Z)V
    .locals 4

    instance-of v0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->updateUIMode(Z)V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->updateUIMode(Z)V

    goto/16 :goto_3

    :cond_1
    instance-of v0, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_2

    const v1, 0x7f06038c

    goto :goto_0

    :cond_2
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_3

    const v2, 0x7f06038a

    goto :goto_1

    :cond_3
    const v2, 0x7f060389

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-eqz p1, :cond_4

    const p1, 0x7f08025b

    goto :goto_2

    :cond_4
    const p1, 0x7f08025a

    :goto_2
    iget-object v2, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;->binding:Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;

    iget-object v3, v2, Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;->headerCard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, v2, Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, v2, Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;->addTaskBtn:Landroid/widget/Button;

    const v0, 0x7f0800ab

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, v2, Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;->importTaskBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, v2, Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;->emptyHintTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;->refreshTasks()V

    goto :goto_3

    :cond_5
    instance-of v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->updateUIMode(Z)V

    goto :goto_3

    :cond_6
    instance-of v0, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->updateUIMode(Z)V

    goto :goto_3

    :cond_7
    instance-of v0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->updateUIMode(Z)V

    goto :goto_3

    :cond_8
    instance-of v0, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/MuyuSettingsView;->updateUIMode(Z)V

    goto :goto_3

    :cond_9
    instance-of v0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/deepalhome/launcher/settings/BleSettingsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/BleSettingsView;->updateUIMode(Z)V

    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public final applyStatusBarInsets()V
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->baseContainerBottomMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    sget-object v2, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->getTopInsetPx(Landroid/content/Context;)I

    move-result v3

    if-eqz v2, :cond_3

    move v1, v3

    :cond_3
    iget-object v4, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v0, v3, :cond_5

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->advancedSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "file_browser_selected_path"

    const/4 v14, -0x1

    if-eq v2, v14, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v5, 0x4b4

    if-ne v1, v5, :cond_4

    if-eqz v3, :cond_1

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "US"

    const-string v9, "toLowerCase(...)"

    invoke-static {v6, v7, v5, v6, v9}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-static {v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-static {v5}, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    move-result-object v7

    const-string v5, "inflate(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->applyConfigBackupDialogTheme(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f13006d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v7, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f13006c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v7, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v7, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130184

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v7, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130182

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v7, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    const-string v9, "null cannot be cast to non-null type androidx.cardview.widget.CardView"

    iget-object v13, v7, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v13, Landroidx/cardview/widget/CardView;

    invoke-static {v5, v13}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Landroidx/cardview/widget/CardView;)Landroid/app/Dialog;

    move-result-object v13

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v5, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;

    const/4 v14, 0x1

    invoke-direct {v5, v13, v14}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;

    move-object v5, v14

    move-object v6, v9

    move-object v4, v9

    move-object v9, v13

    invoke-direct/range {v5 .. v11}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda17;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/app/Dialog;ZLjava/io/File;)V

    invoke-virtual {v15, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda4;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v4}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v13, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f13006e

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_2
    iget-object v0, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->floatingBallSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x4b2

    if-ne v1, v4, :cond_b

    const/4 v1, -0x1

    if-eq v2, v1, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-nez v13, :cond_7

    const-string v13, ""

    :cond_7
    invoke-static {v13}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f1301fe

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_8
    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getApplicationContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->cacheIcon(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->updateIconByFile$default(Lcom/deepalhome/launcher/floating/FloatingBallWindow;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->updateFloatingBallIconPreview()V

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_b
    :goto_5
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p3, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/deepalhome/launcher/settings/SettingsSecretState;->debugLogReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    const/4 v0, 0x0

    iput v0, p3, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    iput-boolean v0, p3, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    sget-object p3, Lcom/deepalhome/launcher/settings/SettingsSecretState;->scheduledTaskMagiskReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    iput v0, p3, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    iput-boolean v0, p3, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    sget p3, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->$r8$clinit:I

    sget-object p3, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const p3, 0x7f0e00f7

    const/4 v1, 0x0

    invoke-static {p1, p3, p2, v0, v1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const-string p1, "getRoot(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    sget-object v0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->debugLogReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    const/4 v1, 0x0

    iput v1, v0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    iput-boolean v1, v0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    sget-object v0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->scheduledTaskMagiskReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    iput v1, v0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    iput-boolean v1, v0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->uiModeChangedListener:Lcom/deepalhome/launcher/settings/SettingsFragment$uiModeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->statusBarVisibilityListener:Lcom/deepalhome/launcher/settings/SettingsFragment$statusBarVisibilityListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->navBarVisibilityListener:Lcom/deepalhome/launcher/settings/SettingsFragment$navBarVisibilityListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->updateBadgeChangedListener:Lcom/deepalhome/launcher/settings/SettingsFragment$updateBadgeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->removeOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 p2, 0x1

    const/4 v0, 0x0

    const-string v1, "view"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v2, 0x15

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->baseScrollViewBottomMargin:I

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->baseContainerBottomMargin:I

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/SettingsFragment;->updateNavBarInsets()V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->advancedSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/SettingsFragment;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->scheduledTaskSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->layoutSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->updateUIMode$3(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/SettingsFragment;->applyStatusBarInsets()V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->uiModeChangedListener:Lcom/deepalhome/launcher/settings/SettingsFragment$uiModeChangedListener$1;

    invoke-static {p1}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->statusBarVisibilityListener:Lcom/deepalhome/launcher/settings/SettingsFragment$statusBarVisibilityListener$1;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->navBarVisibilityListener:Lcom/deepalhome/launcher/settings/SettingsFragment$navBarVisibilityListener$1;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->updateBadgeChangedListener:Lcom/deepalhome/launcher/settings/SettingsFragment$updateBadgeChangedListener$1;

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->addOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final showSettingView(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    instance-of v0, p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogCard:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/settings/SettingsSecretState;->debugLogReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    iget-boolean v1, v1, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/settings/SettingsFragment;->applySettingViewUIMode(Landroid/view/View;Z)V

    return-void
.end method

.method public final updateAboutBadgeVisibility(Z)V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->aboutSettingsBadgeView:Landroid/view/View;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v3, 0x800033

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f08024d

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->aboutSettingsBadgeView:Landroid/view/View;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/Fragment;ZLjava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateNavBarInsets()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarNavigationBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->navBarInsetBottom:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->baseScrollViewBottomMargin:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->baseContainerBottomMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateUIMode$3(Z)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_0

    const v3, 0x7f06038c

    goto :goto_0

    :cond_0
    const v3, 0x7f06038b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_1

    const v4, 0x7f06038a

    goto :goto_1

    :cond_1
    const v4, 0x7f060389

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    if-eqz v1, :cond_2

    const v4, 0x7f080261

    goto :goto_2

    :cond_2
    const v4, 0x7f080260

    :goto_2
    if-eqz v1, :cond_3

    const v5, 0x7f080255

    goto :goto_3

    :cond_3
    const v5, 0x7f080256

    :goto_3
    if-eqz v1, :cond_4

    const v6, 0x7f080190

    goto :goto_4

    :cond_4
    const v6, 0x7f08018f

    :goto_4
    iget-object v7, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v1, :cond_5

    const v8, 0x7f060026

    goto :goto_5

    :cond_5
    const v8, 0x7f060023

    :goto_5
    iget-object v7, v7, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingTv:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingSubtitleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_6

    const v5, 0x7f060099

    goto :goto_6

    :cond_6
    const v5, 0x7f060098

    :goto_6
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v10, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->advancedSettingsBtn:Landroid/widget/RadioButton;

    iget-object v11, v11, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->scheduledTaskSettingsBtn:Landroid/widget/RadioButton;

    iget-object v13, v5, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->layoutSettingsBtn:Landroid/widget/RadioButton;

    iget-object v14, v6, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->wallpaperSettingsBtn:Landroid/widget/RadioButton;

    iget-object v15, v7, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->floatingBallSettingsBtn:Landroid/widget/RadioButton;

    iget-object v5, v8, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->muyuSettingsBtn:Landroid/widget/RadioButton;

    iget-object v6, v9, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->aboutSettingsBtn:Landroid/widget/RadioButton;

    iget-object v7, v12, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->bleSettingsBtn:Landroid/widget/RadioButton;

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v7

    filled-new-array/range {v13 .. v20}, [Landroid/widget/RadioButton;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v7, "getCompoundDrawablesRelative(...)"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v3, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7

    :cond_8
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->settingsViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->applySettingViewUIMode(Landroid/view/View;Z)V

    :cond_9
    sget-object v1, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->shouldShowUpdateBadge()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->updateAboutBadgeVisibility(Z)V

    return-void
.end method
