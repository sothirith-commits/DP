.class public abstract Lcom/chad/library/adapter4/loadState/LoadStateAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/fullspan/FullSpanAdapterType;


# instance fields
.field public loadState:Lcom/chad/library/adapter4/loadState/LoadState;

.field public final loadStateListeners:Ljava/util/ArrayList;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    sget-object v0, Lcom/chad/library/adapter4/loadState/LoadState$None;->INSTANCE:Lcom/chad/library/adapter4/loadState/LoadState$None;

    iput-object v0, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadStateListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public displayLoadStateAsItem(Lcom/chad/library/adapter4/loadState/LoadState;)Z
    .locals 0

    const-string p0, "loadState"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lcom/chad/library/adapter4/loadState/LoadState$Loading;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/chad/library/adapter4/loadState/LoadState$Error;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->displayLoadStateAsItem(Lcom/chad/library/adapter4/loadState/LoadState;)Z

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p1, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getStateViewType(Lcom/chad/library/adapter4/loadState/LoadState;)I

    move-result p0

    return p0
.end method

.method public getStateViewType(Lcom/chad/library/adapter4/loadState/LoadState;)I
    .locals 0

    const-string p0, "loadState"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/chad/library/adapter4/loadState/LoadState;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payloads"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/chad/library/adapter4/loadState/LoadState;)V
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;Lcom/chad/library/adapter4/loadState/LoadState;)Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;

    move-result-object p0

    return-object p0
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;Lcom/chad/library/adapter4/loadState/LoadState;)Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setLoadState(Lcom/chad/library/adapter4/loadState/LoadState;)V
    .locals 3

    const-string v0, "loadState"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->displayLoadStateAsItem(Lcom/chad/library/adapter4/loadState/LoadState;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->displayLoadStateAsItem(Lcom/chad/library/adapter4/loadState/LoadState;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadState:Lcom/chad/library/adapter4/loadState/LoadState;

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->loadStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method
