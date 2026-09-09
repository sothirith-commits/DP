.class public final Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public originalSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field public final synthetic this$0:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;->this$0:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 7

    iget-object v0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;->this$0:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    iget-object v1, v0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    instance-of v3, v1, Landroidx/recyclerview/widget/ConcatAdapter;

    if-eqz v3, :cond_5

    check-cast v1, Landroidx/recyclerview/widget/ConcatAdapter;

    iget-object v1, v1, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->findWrapperAndLocalPosition(I)Landroidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Landroidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v5, v5, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget v6, v3, Landroidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    const/4 v5, 0x0

    iput-object v5, v3, Landroidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    const/4 v5, -0x1

    iput v5, v3, Landroidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    iput-object v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Ljava/lang/Object;

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v3, v1, Lcom/chad/library/adapter4/fullspan/FullSpanAdapterType;

    if-eqz v3, :cond_1

    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    goto :goto_0

    :cond_1
    instance-of v3, v1, Lcom/chad/library/adapter4/BaseQuickAdapter;

    if-eqz v3, :cond_3

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v4, "second"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    check-cast v1, Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/chad/library/adapter4/BaseQuickAdapter;->EMPTY_VIEW:I

    if-ne v3, v1, :cond_2

    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;->originalSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;->originalSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    :cond_4
    :goto_0
    return v2

    :cond_5
    instance-of v3, v1, Lcom/chad/library/adapter4/fullspan/FullSpanAdapterType;

    if-eqz v3, :cond_6

    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    goto :goto_1

    :cond_6
    instance-of v3, v1, Lcom/chad/library/adapter4/BaseQuickAdapter;

    if-eqz v3, :cond_8

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    check-cast v1, Lcom/chad/library/adapter4/BaseQuickAdapter;

    sget v1, Lcom/chad/library/adapter4/BaseQuickAdapter;->EMPTY_VIEW:I

    if-ne v3, v1, :cond_7

    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;->originalSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;->originalSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    :cond_9
    :goto_1
    return v2
.end method
