.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;

.field public currentCall:Lretrofit2/Call;

.field public progressBar:Landroid/view/View;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$adapter$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$adapter$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;)V

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$adapter$1;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;

    return-void
.end method


# virtual methods
.method public final loadData()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->progressBar:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->currentCall:Lretrofit2/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const-string v3, "/pic/\u60ac\u6d6e\u7403"

    invoke-interface {v0, v3, v1, v2}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->listFiles(Ljava/lang/String;II)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->currentCall:Lretrofit2/Call;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_1
    return-void

    :cond_2
    const-string p0, "progressBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p0, "inflater"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0e0059

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->currentCall:Lretrofit2/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p2, 0x7f0b04a7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const p2, 0x7f0b04a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b0461

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->progressBar:Landroid/view/View;

    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const-string v1, "recyclerView"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    const/16 v2, 0x14

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$setupRecyclerView$2;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$setupRecyclerView$2;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const-string p2, "refreshLayout"

    if-eqz p1, :cond_1

    new-instance v1, Lcom/scwang/smart/refresh/header/MaterialHeader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/scwang/smart/refresh/header/MaterialHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smart/refresh/header/MaterialHeader;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    if-eqz p1, :cond_0

    new-instance p2, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p2, v0, p0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->loadData()V

    return-void

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
