.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

.field public emptyView:Landroid/widget/TextView;

.field public loadToken:J

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;)V

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$2;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$2;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;)V

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$3;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$3;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;)V

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$4;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$4;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$1;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$2;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$3;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$adapter$4;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->FLOAT_BALL:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    return-void
.end method


# virtual methods
.method public final confirmDeleteSelected()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f130245

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    return-void

    :cond_4
    sget-object v4, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    const v1, 0x7f1301de

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1301db

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$confirmDeleteSelected$1;

    move-object v13, v1

    invoke-direct {v1, v0, v3}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$confirmDeleteSelected$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v22, 0x7faac

    invoke-static/range {v4 .. v22}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void
.end method

.method public final dispatchSelectionChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isMultiSelectMode:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    const-string v3, "event"

    const-string v4, "event_selection_changed"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Lkotlin/Pair;

    const-string v4, "count"

    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isAllSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v0, Lkotlin/Pair;

    const-string v4, "all_selected"

    invoke-direct {v0, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    const-string v4, "tab_type"

    invoke-direct {p1, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v0, p1}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/logging/Utf8Kt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "ManagementFragmentEvent"

    invoke-virtual {v1, p1, p0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final exitMultiSelectMode()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isMultiSelectMode:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isMultiSelectMode:Z

    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->dispatchSelectionChanged(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "event"

    const-string v3, "event_multi_select_exited"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lkotlin/Pair;

    const-string v3, "tab_type"

    invoke-direct {v2, v3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/logging/Utf8Kt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "ManagementFragmentEvent"

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final exportSelected()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v4, v2

    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const v0, 0x7f1301c0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f1301c2

    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;Ljava/util/ArrayList;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p3, 0x7f0e0064

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b04a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b01dd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->emptyView:Landroid/widget/TextView;

    return-object p1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isMultiSelectMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->exitMultiSelectMode()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->refreshList()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    const-string v0, "recyclerView"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    iget p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$setupRecyclerView$1;

    invoke-direct {v3, p1, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$setupRecyclerView$1;-><init>(II)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-string v1, "ManagementFragmentControl"

    invoke-virtual {p1, v1, p2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->refreshList()V

    return-void

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public final refreshList()V
    .locals 5

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->loadToken:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->loadToken:J

    const/4 v2, -0x2

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0, v1, p0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toggleSelectAll()V
    .locals 6

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isAllSelected()Z

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->onSelectionChanged:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz v1, :cond_4

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    const-string v3, "getCurrentList(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method
