.class public final Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;
.super Lcom/deepalhome/launcher/base/BaseDialogFragment;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;


# instance fields
.field public adapter:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

.field public backBtn:Landroid/widget/ImageView;

.field public emptyTv:Landroid/widget/TextView;

.field public iconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public onIconApplied:Lkotlin/jvm/functions/Function1;

.field public onIconSelected:Lkotlin/jvm/functions/Function1;

.field public rootView:Landroidx/cardview/widget/CardView;

.field public selectOnlyCurrentPath:Ljava/lang/String;

.field public selectOnlyMode:Z

.field public titleTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0051

    invoke-direct {p0, v0}, Landroidx/fragment/app/DialogFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p2, 0x7f0b04c8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->rootView:Landroidx/cardview/widget/CardView;

    const p2, 0x7f0b00a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->backBtn:Landroid/widget/ImageView;

    const p2, 0x7f0b05e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->titleTv:Landroid/widget/TextView;

    const p2, 0x7f0b01dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->emptyTv:Landroid/widget/TextView;

    const p2, 0x7f0b02ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->iconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 p2, -0x2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06038f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    new-instance p1, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    new-instance v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$1;-><init>(Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;)V

    new-instance v1, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$2;-><init>(Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;)V

    invoke-direct {p1, v0, v1}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;-><init>(Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$1;Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$2;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->adapter:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    iget-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->iconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const-string v1, "iconRecyclerView"

    if-eqz p1, :cond_f

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->iconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->adapter:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    const-string v2, "adapter"

    if-eqz v1, :cond_d

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->selectOnlyMode:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->adapter:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->selectOnlyCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->setCurrentIconPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->adapter:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    if-eqz p1, :cond_c

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconLibraryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->setCurrentIconPath(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->backBtn:Landroid/widget/ImageView;

    const-string v1, "backBtn"

    if-eqz p1, :cond_b

    new-instance v2, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_4

    const v3, 0x7f060026

    goto :goto_1

    :cond_4
    const v3, 0x7f060023

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_5

    const v4, 0x7f06038c

    goto :goto_2

    :cond_5
    const v4, 0x7f06038b

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    if-eqz p1, :cond_6

    const p1, 0x7f06038a

    goto :goto_3

    :cond_6
    const p1, 0x7f060389

    :goto_3
    invoke-virtual {v4, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v4, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->rootView:Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v2, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->backBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->titleTv:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->emptyTv:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p2}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v0, 0xa

    invoke-direct {p2, v0, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    const-string p0, "emptyTv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string p0, "titleTv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
