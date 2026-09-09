.class public abstract Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;
.super Lcom/chad/library/adapter4/loadState/LoadStateAdapter;
.source "SourceFile"


# instance fields
.field public final isAutoLoadMore:Z

.field public final isLoadEndDisplay:Z

.field public mDelayNextLoadFlag:Z

.field public onTrailingListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;-><init>()V

    iput-boolean p1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->isLoadEndDisplay:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->isAutoLoadMore:Z

    return-void
.end method


# virtual methods
.method public final displayLoadStateAsItem(Lcom/chad/library/adapter4/loadState/LoadState;)Z
    .locals 1

    const-string v0, "loadState"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->displayLoadStateAsItem(Lcom/chad/library/adapter4/loadState/LoadState;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    iget-boolean p1, p1, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->isLoadEndDisplay:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final invokeLoadMore()V
    .locals 1

    sget-object v0, Lcom/chad/library/adapter4/loadState/LoadState$Loading;->INSTANCE:Lcom/chad/library/adapter4/loadState/LoadState$Loading;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->setLoadState(Lcom/chad/library/adapter4/loadState/LoadState;)V

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->onTrailingListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    if-eqz p0, :cond_0

    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->loadData(Z)V

    :cond_0
    return-void
.end method

.method public final loadAction$1()V
    .locals 3

    iget-boolean v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->isAutoLoadMore:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->onTrailingListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    iget-boolean v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->mDelayNextLoadFlag:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    instance-of v2, v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    if-eqz v2, :cond_6

    iget-boolean v0, v0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->mDelayNextLoadFlag:Z

    new-instance v1, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->invokeLoadMore()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->loadAction$1()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            TrailingLoadStateAdapter ->\n            [isLoadEndDisplay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->isLoadEndDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],\n            [isAutoLoadMore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->isAutoLoadMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],\n            [preloadSize: 0],\n            [loadState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
