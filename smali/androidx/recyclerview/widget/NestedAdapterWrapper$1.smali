.class public final Landroidx/recyclerview/widget/NestedAdapterWrapper$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->taskRunner:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->calculateAndUpdateStateRestorationPolicy()V

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$Builder;->taskRunner:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    add-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$Builder;->taskRunner:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    add-int/2addr p1, p0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v1

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$Builder;->taskRunner:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    iget p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object p1

    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->calculateAndUpdateStateRestorationPolicy()V

    :cond_0
    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p3, "moving more than 1 item is not supported in RecyclerView"

    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->checkArgument(Ljava/lang/String;Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object p3, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {p3, p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p0

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    iget-object p0, p3, Lokhttp3/internal/http2/Http2Connection$Builder;->taskRunner:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v1

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$Builder;->taskRunner:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    iget p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object p1

    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->calculateAndUpdateStateRestorationPolicy()V

    :cond_0
    return-void
.end method

.method public final onStateRestorationPolicyChanged()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->calculateAndUpdateStateRestorationPolicy()V

    return-void
.end method
