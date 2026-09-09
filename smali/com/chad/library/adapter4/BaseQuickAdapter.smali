.class public abstract Lcom/chad/library/adapter4/BaseQuickAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chad/library/adapter4/BaseQuickAdapter$Companion;

.field public static final EMPTY_VIEW:I


# instance fields
.field public _recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public isStateViewEnable:Z

.field public items:Ljava/util/List;

.field public mOnItemClickListener:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;

.field public mOnViewAttachStateChangeListeners:Ljava/util/List;

.field public stateView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chad/library/adapter4/BaseQuickAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter$Companion;-><init>(I)V

    sput-object v0, Lcom/chad/library/adapter4/BaseQuickAdapter;->Companion:Lcom/chad/library/adapter4/BaseQuickAdapter$Companion;

    const v0, 0x7f0b0008

    sput v0, Lcom/chad/library/adapter4/BaseQuickAdapter;->EMPTY_VIEW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "items"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    return-void
.end method

.method public static displayEmptyView$default(Lcom/chad/library/adapter4/BaseQuickAdapter;)Z
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "list"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->stateView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->isStateViewEnable:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    invoke-static {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->displayEmptyView$default(Lcom/chad/library/adapter4/BaseQuickAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    const-string v0, "items"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    invoke-static {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->displayEmptyView$default(Lcom/chad/library/adapter4/BaseQuickAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->EMPTY_VIEW:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    const-string p1, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getMutableItems()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const-string p0, "null cannot be cast to non-null type java.util.ArrayList<T of com.chad.library.adapter4.BaseQuickAdapter>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lkotlin/jvm/internal/markers/KMutableList;

    if-eqz v1, :cond_3

    :cond_1
    const-string p0, "null cannot be cast to non-null type kotlin.collections.MutableList<T of com.chad.library.adapter4.BaseQuickAdapter>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, v0, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz p0, :cond_4

    instance-of p0, v0, Lkotlin/jvm/internal/markers/KMutableList;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "kotlin.collections.MutableList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;

    iget-object p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->stateView:Landroid/view/View;

    sget-object p2, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;->Companion:Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;

    iget-object p1, p1, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;->stateLayout:Landroid/widget/FrameLayout;

    invoke-static {p2, p1, p0}, Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;->access$setStateView(Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payloads"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void

    :cond_0
    instance-of p3, p1, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;

    if-eqz p3, :cond_1

    check-cast p1, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;

    iget-object p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->stateView:Landroid/view/View;

    sget-object p2, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;->Companion:Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;

    iget-object p1, p1, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;->stateLayout:Landroid/widget/FrameLayout;

    invoke-static {p2, p1, p0}, Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;->access$setStateView(Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string v0, "parent"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/chad/library/adapter4/BaseQuickAdapter;->EMPTY_VIEW:I

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;

    iget-object p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->stateView:Landroid/view/View;

    invoke-direct {p2, p1, p0}, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getContext(...)"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/chad/library/adapter4/BaseQuickAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p1
.end method

.method public abstract onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    instance-of v0, p1, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemViewType(I)I

    move-result v0

    sget v1, Lcom/chad/library/adapter4/BaseQuickAdapter;->EMPTY_VIEW:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    :cond_1
    iget-object p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->mOnViewAttachStateChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter4/QuickAdapterHelper$2$1;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/QuickAdapterHelper$2$1;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->mOnViewAttachStateChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter4/QuickAdapterHelper$2$1;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/QuickAdapterHelper$2$1;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->displayEmptyView$default(Lcom/chad/library/adapter4/BaseQuickAdapter;)Z

    move-result v0

    iput-object p1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->stateView:Landroid/view/View;

    invoke-static {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->displayEmptyView$default(Lcom/chad/library/adapter4/BaseQuickAdapter;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setEmptyViewEnable()V
    .locals 3

    invoke-static {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->displayEmptyView$default(Lcom/chad/library/adapter4/BaseQuickAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->isStateViewEnable:Z

    invoke-static {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->displayEmptyView$default(Lcom/chad/library/adapter4/BaseQuickAdapter;)Z

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

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final submitList(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    invoke-static {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->displayEmptyView$default(Lcom/chad/library/adapter4/BaseQuickAdapter;)Z

    move-result v0

    const-string v1, "list"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->stateView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->isStateViewEnable:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    iput-object p1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    iput-object p1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iput-object p1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    iput-object p1, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method
