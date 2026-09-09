.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

.field public isInMultiSelectMode:Z

.field public lanTransferActive:Z

.field public final pageChangeCallback:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$pageChangeCallback$1;

.field public pagerAdapter:Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;

.field public final transferReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

.field public final uiModeChangedListener:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$uiModeChangedListener$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$uiModeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$uiModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$uiModeChangedListener$1;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$pageChangeCallback$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$pageChangeCallback$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->pageChangeCallback:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$pageChangeCallback$1;

    new-instance v0, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->transferReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    return-void
.end method


# virtual methods
.method public final doHideLanTransferPanel()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->lanTransferPanel:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->tokenTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->tokenHintTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->stopLanTransfer()V

    const-string v0, "action_refresh"

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->sendControlAction(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final hideLanTransferPanel()V
    .locals 19

    move-object/from16 v11, p0

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->instance:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->receivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-lez v2, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    const v1, 0x7f1304b0

    invoke-virtual {v11, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1304af

    invoke-virtual {v11, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1304ae

    invoke-virtual {v11, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    const-string v4, "getString(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v3, 0x7f1304ac

    invoke-virtual {v11, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$hideLanTransferPanel$1;

    move-object v9, v3

    invoke-direct {v3, v11}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$hideLanTransferPanel$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v18, 0x7fa0c

    move-object/from16 v11, p0

    invoke-static/range {v0 .. v18}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->doHideLanTransferPanel()V

    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0116

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v2, "setContentView(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyAllBarVisibility(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz p1, :cond_14

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->backBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_13

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->importLocalBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_12

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->importLanBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_11

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->closeLanTransferBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_10

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->lanTransferPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_f

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->multiSelectBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_e

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->cancelSelectBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_d

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    const/16 v5, 0x8

    invoke-direct {v4, p0, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->selectAllBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_c

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    const/16 v5, 0x9

    invoke-direct {v4, p0, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->deleteSelectedBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_b

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->exportSelectedBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_0

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V

    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    new-instance p1, Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->pagerAdapter:Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v4, :cond_a

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v4, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->pageChangeCallback:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$pageChangeCallback$1;

    invoke-virtual {p1, v4}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->pagerAdapter:Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;

    const-string v4, "pagerAdapter"

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v5, v0

    :goto_1
    if-ge v5, p1, :cond_5

    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v7

    iget-object v8, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->pagerAdapter:Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;

    if-eqz v8, :cond_3

    iget-object v8, v8, Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;

    invoke-virtual {v8}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->getTitleRes()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)V

    if-nez v5, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v0

    :goto_2
    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    add-int/2addr v5, v1

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_6

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;

    invoke-direct {v2, p0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;-><init>(Landroid/view/KeyEvent$Callback;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V

    const-string v2, "ManagementFragmentEvent"

    invoke-virtual {p1, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->updateUIMode$1(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$uiModeChangedListener$1;

    invoke-static {p1}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->updateDeleteButtonState(I)V

    return-void

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final onDestroy()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$uiModeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->pageChangeCallback:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$pageChangeCallback$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->lanTransferActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->stopLanTransfer()V

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyAllBarVisibility(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/app/Activity;)V

    return-void
.end method

.method public final scanDownloadVideos(Lkotlin/jvm/functions/Function0;)V
    .locals 9

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lkotlin/Result$Failure;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, [Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v0

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-static {v6}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isVideoExtension(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move-object v3, v2

    :cond_5
    if-nez v3, :cond_6

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda12;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public final sendControlAction(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->Companion:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;->getALL()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "f"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v5, :cond_1d

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string v0, "action_enter_multi_select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    instance-of p1, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    if-eqz p1, :cond_1

    move-object p1, v1

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    iget-object v5, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    iget-boolean v6, v5, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isMultiSelectMode:Z

    if-nez v6, :cond_2

    iput-boolean v4, v5, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isMultiSelectMode:Z

    iget-object v6, v5, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->dispatchSelectionChanged$1(I)V

    :cond_3
    instance-of p1, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    if-eqz p1, :cond_4

    check-cast v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_6

    iget-object p1, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    iget-boolean v5, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isMultiSelectMode:Z

    if-nez v5, :cond_5

    iput-boolean v4, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isMultiSelectMode:Z

    iget-object v5, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->dispatchSelectionChanged(I)V

    :cond_6
    iput-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->isInMultiSelectMode:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->normalBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->multiSelectBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    invoke-virtual {p0, v0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->updateSelectionCount(IZ)V

    goto/16 :goto_6

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :sswitch_1
    const-string p0, "action_export_selected"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_6

    :cond_a
    instance-of p0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    if-eqz p0, :cond_b

    move-object p0, v1

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    goto :goto_2

    :cond_b
    move-object p0, v3

    :goto_2
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->exportSelected()V

    :cond_c
    instance-of p0, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    if-eqz p0, :cond_d

    move-object v3, v1

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    :cond_d
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->exportSelected()V

    goto/16 :goto_6

    :sswitch_2
    const-string p0, "action_toggle_select_all"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_6

    :cond_e
    instance-of p0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    if-eqz p0, :cond_f

    move-object p0, v1

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    goto :goto_3

    :cond_f
    move-object p0, v3

    :goto_3
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->toggleSelectAll()V

    :cond_10
    instance-of p0, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    if-eqz p0, :cond_11

    move-object v3, v1

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    :cond_11
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->toggleSelectAll()V

    goto/16 :goto_6

    :sswitch_3
    const-string p0, "action_exit_multi_select"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_6

    :cond_12
    instance-of p0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    if-eqz p0, :cond_13

    move-object p0, v1

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    goto :goto_4

    :cond_13
    move-object p0, v3

    :goto_4
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->exitMultiSelectMode()V

    :cond_14
    instance-of p0, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    if-eqz p0, :cond_15

    move-object v3, v1

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    :cond_15
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->exitMultiSelectMode()V

    goto :goto_6

    :sswitch_4
    const-string v1, "action_refresh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_6

    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "action"

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->getTabType()Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    :cond_17
    new-instance p1, Lkotlin/Pair;

    const-string v0, "tab_type"

    invoke-direct {p1, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/logging/Utf8Kt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ManagementFragmentControl"

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :sswitch_5
    const-string p0, "action_delete_selected"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_6

    :cond_18
    instance-of p0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    if-eqz p0, :cond_19

    move-object p0, v1

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    goto :goto_5

    :cond_19
    move-object p0, v3

    :goto_5
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->confirmDeleteSelected()V

    :cond_1a
    instance-of p0, v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    if-eqz p0, :cond_1b

    move-object v3, v1

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    :cond_1b
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->confirmDeleteSelected()V

    :cond_1c
    :goto_6
    return-void

    :cond_1d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3afd895a -> :sswitch_5
        -0x317cde2e -> :sswitch_4
        -0x14eccd86 -> :sswitch_3
        -0x9187c20 -> :sswitch_2
        0xfd4a2bd -> :sswitch_1
        0x35db3d72 -> :sswitch_0
    .end sparse-switch
.end method

.method public final stopLanTransfer()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->lanTransferActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->lanTransferActive:Z

    :try_start_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->transferReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.deepalhome.launcher.wallpaper.transfer.action.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final updateDeleteButtonState(I)V
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->deleteSelectedBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v0, :cond_6

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez p1, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->deleteSelectedBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v0, :cond_5

    if-lez p1, :cond_2

    move v3, v4

    :cond_2
    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->exportSelectedBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p0, :cond_4

    if-lez p1, :cond_3

    move v5, v6

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->exportSelectedBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final updateSelectionCount(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f130433

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->selectedCountTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const p2, 0x7f130180

    goto :goto_0

    :cond_0
    const p2, 0x7f13042d

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->selectAllBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->updateDeleteButtonState(I)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final updateUIMode$1(Z)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_13

    if-eqz p1, :cond_0

    const v3, 0x7f060026

    goto :goto_0

    :cond_0
    const v3, 0x7f060023

    :goto_0
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p1, :cond_1

    const v0, 0x7f06038c

    goto :goto_1

    :cond_1
    const v0, 0x7f06038b

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_12

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->backBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_11

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->backBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_10

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->importLocalBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_f

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->importLocalBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->importLanBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->importLanBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->multiSelectBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_b

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->multiSelectBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->cancelSelectBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_9

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->cancelSelectBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->selectedCountTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->selectAllBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->exportSelectedBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->exportSelectedBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_2

    const p1, 0x7f060259

    goto :goto_2

    :cond_2
    const p1, 0x7f060258

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
