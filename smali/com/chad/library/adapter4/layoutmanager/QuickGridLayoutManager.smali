.class public Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field public adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final fullSpanSizeLookup:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;-><init>(Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;)V

    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->fullSpanSizeLookup:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;

    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iput-object p2, p1, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;->originalSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method


# virtual methods
.method public final onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    iput-object p2, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public final onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public final setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->fullSpanSizeLookup:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;

    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;->originalSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method
