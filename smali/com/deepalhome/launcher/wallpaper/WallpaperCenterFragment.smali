.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

.field public binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

.field public categoryId:I

.field public currentPage:I

.field public final helper:Landroidx/cardview/widget/CardView$1;

.field public final pageCache:Ljava/util/LinkedHashMap;

.field public final pageSize:I

.field public final repository:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

.field public requestToken:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;-><init>(I)V

    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->repository:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    const/4 v1, -0x3

    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->categoryId:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->currentPage:I

    const/16 v2, 0x14

    iput v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->pageSize:I

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->pageCache:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;

    invoke-direct {v3, v1}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;-><init>(Z)V

    iput-object v2, v3, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->onTrailingListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    new-instance v1, Landroidx/cardview/widget/CardView$1;

    invoke-direct {v1, v0, v3}, Landroidx/cardview/widget/CardView$1;-><init>(Lcom/chad/library/adapter4/BaseQuickAdapter;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->helper:Landroidx/cardview/widget/CardView$1;

    return-void
.end method

.method public static final access$applyPage(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->pageCache:Ljava/util/LinkedHashMap;

    iget-object v3, p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->items:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    iget-boolean p1, p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->hasMore:Z

    if-eqz p1, :cond_0

    new-instance v4, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    invoke-direct {v4, v1}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    :goto_0
    iget-object v5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->helper:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v5, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v4}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->setLoadState(Lcom/chad/library/adapter4/loadState/LoadState;)V

    :goto_1
    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p0, :cond_3

    iget-object p1, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_7

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefreshWithNoMoreData()V

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->currentPage:I

    if-gt p1, v0, :cond_5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->currentPage:I

    :cond_5
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p0, :cond_8

    iget-object p1, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v4, :cond_7

    if-eqz p0, :cond_6

    invoke-virtual {p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh(Z)V

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final loadData(Z)V
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->currentPage:I

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->pageCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz v3, :cond_1

    iget-object v2, v3, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {v2, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setNoMoreData(Z)V

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->helper:Landroidx/cardview/widget/CardView$1;

    sget-object v3, Lcom/chad/library/adapter4/loadState/LoadState$None;->INSTANCE:Lcom/chad/library/adapter4/loadState/LoadState$None;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "value"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v2, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->setLoadState(Lcom/chad/library/adapter4/loadState/LoadState;)V

    goto :goto_0

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    iget v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->categoryId:I

    const/4 v3, -0x5

    if-eq v2, v3, :cond_5

    const/4 v3, -0x4

    if-eq v2, v3, :cond_4

    const/4 v3, -0x3

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->QH360:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->STATIC:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->DAILY:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->DYNAMIC:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    :goto_1
    new-instance v11, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    iget v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->categoryId:I

    iget v7, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->currentPage:I

    iget v8, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->pageSize:I

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object v3, v11

    move-object v5, v2

    invoke-direct/range {v3 .. v10}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;-><init>(ILcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->repository:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->categoryId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "source"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->cache:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperListCache;

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "v1/"

    iget-object v5, p1, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    if-eq v2, v1, :cond_9

    const/4 v6, 0x2

    if-eq v2, v6, :cond_8

    const/4 v6, 0x3

    if-eq v2, v6, :cond_7

    const/4 v6, 0x4

    if-ne v2, v6, :cond_6

    const-string v2, "dynamic"

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    const-string v2, "daily"

    goto :goto_2

    :cond_8
    const-string v2, "static"

    goto :goto_2

    :cond_9
    const-string v2, "qh360"

    :goto_2
    new-instance v6, Ljava/io/File;

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->baseDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/c"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v6}, Lkotlin/io/FilesKt__UtilsKt;->deleteRecursively(Ljava/io/File;)V

    :cond_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_4

    :goto_3
    monitor-exit v5

    throw p0

    :cond_b
    :goto_4
    iget-wide v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->requestToken:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->requestToken:J

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->Companion:Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;

    const-wide/32 v4, 0x36ee80

    invoke-direct {v6, v4, v5, v1, v1}, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;-><init>(JZZ)V

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->repository:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    new-instance v8, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    invoke-direct {v8, v0, v2, v3, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 p0, -0x2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;

    const/4 v9, 0x0

    move-object v3, p1

    move-object v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget p2, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const p2, 0x7f0e0110

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    const-string p2, "inflate(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    const-string p0, "getRoot(...)"

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->requestToken:J

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->repository:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Call;

    invoke-interface {v2}, Lretrofit2/Call;->cancel()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e0055

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p2, Lcom/chad/library/adapter4/BaseQuickAdapter;->stateView:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setEmptyViewEnable()V

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;)V

    iput-object p1, p2, Lcom/chad/library/adapter4/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    const-string p2, "binding"

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setItemPrefetchEnabled(Z)V

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x14

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p1, :cond_6

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$setupRecyclerView$2;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$setupRecyclerView$2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p1, :cond_5

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$3;

    invoke-direct {v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$3;-><init>()V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->helper:Landroidx/cardview/widget/CardView$1;

    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/ConcatAdapter;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "KEY_CATEGORY_ID"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x3

    :goto_1
    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->categoryId:I

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p1, :cond_3

    new-instance v2, Lcom/scwang/smart/refresh/header/MaterialHeader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/scwang/smart/refresh/header/MaterialHeader;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smart/refresh/header/MaterialHeader;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-object p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->loadData(Z)V

    return-void

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
