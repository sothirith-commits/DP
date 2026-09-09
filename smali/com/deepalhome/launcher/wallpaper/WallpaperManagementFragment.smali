.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

.field public baseBottomPadding:I

.field public emptyMessageRes:I

.field public navBarInsetBottom:I

.field public final navBarVisibilityListener:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$navBarVisibilityListener$1;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$2;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$3;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$3;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$4;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$4;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$1;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$2;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$3;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$4;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->STATIC_WALLPAPER:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$navBarVisibilityListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$navBarVisibilityListener$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->navBarVisibilityListener:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$navBarVisibilityListener$1;

    const v0, 0x7f130490

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->emptyMessageRes:I

    return-void
.end method

.method public static final access$checkAndStopCarouselIfNecessary(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->listDownloads()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperCarouselEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperCarouselEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f130488

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final access$deleteWallpaperFile(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->deleteFromMediaStore(Ljava/io/File;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->deleteFromMediaStore(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    xor-int/2addr v1, p0

    :goto_1
    return v1
.end method


# virtual methods
.method public final confirmDeleteSelected()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    const v2, 0x7f1300c8

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v5, 0x7f1300c7

    invoke-virtual {v0, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$confirmDeleteSelected$1;

    move-object v12, v2

    invoke-direct {v2, v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$confirmDeleteSelected$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v21, 0x7faac

    invoke-static/range {v3 .. v21}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void
.end method

.method public final deleteFromMediaStore(Ljava/io/File;)Z
    .locals 2

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "_data=?"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_1

    move-object p0, p1

    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final dispatchSelectionChanged$1(I)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isMultiSelectMode:Z

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

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isAllSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v0, Lkotlin/Pair;

    const-string v4, "all_selected"

    invoke-direct {v0, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

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

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isMultiSelectMode:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isMultiSelectMode:Z

    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->dispatchSelectionChanged$1(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "event"

    const-string v3, "event_multi_select_exited"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

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
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const v2, 0x7f1301c0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->refreshList$1()V

    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f1301c2

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p0, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "ARG_TAB_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_3
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->STATIC_WALLPAPER:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_2

    move-object p1, v1

    :cond_2
    check-cast p1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->Companion:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;->getALL()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->getTabType()Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    if-ne v2, v3, :cond_3

    move-object v0, v1

    :cond_4
    check-cast v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;

    if-nez v0, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers;

    :cond_5
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->getEmptyMessageRes()I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->emptyMessageRes:I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p2, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/view/View;->setOverScrollMode(I)V

    const/high16 p3, 0x42400000    # 48.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p3

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->baseBottomPadding:I

    invoke-virtual {p2, p3, v1, p3, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance p3, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2

    :cond_0
    const-string p0, "recyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDestroyView()V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->navBarVisibilityListener:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$navBarVisibilityListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isMultiSelectMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->exitMultiSelectMode()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->refreshList$1()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    iget v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setupRecyclerView$1;

    invoke-direct {v2, p0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setupRecyclerView$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07009e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setupRecyclerView$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setupRecyclerView$2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;II)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->emptyMessageRes:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f06038b

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setEmptyViewEnable()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    const-string v3, "ManagementFragmentControl"

    invoke-virtual {p1, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->refreshList$1()V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->updateNavBarInsets$1()V

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->navBarVisibilityListener:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$navBarVisibilityListener$1;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

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

.method public final refreshList$1()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$refreshList$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$refreshList$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->requestStoragePermission(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final requestStoragePermission(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->INSTANCE:Lcom/deepalhome/launcher/util/StoragePermissionUtils;

    const v1, 0x7f130481

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->requestStoragePermission(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final toggleSelectAll()V
    .locals 5

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->isAllSelected()Z

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->onSelectionChanged:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->latestItemPaths:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAbsolutePath(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateNavBarInsets$1()V
    .locals 7

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarNavigationBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->navBarInsetBottom:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    const-string v3, "recyclerView"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->baseBottomPadding:I

    add-int/2addr p0, v0

    invoke-virtual {v1, v4, v5, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
