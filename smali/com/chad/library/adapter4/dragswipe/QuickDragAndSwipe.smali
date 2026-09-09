.class public final Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# instance fields
.field public _dataCallback:Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;

.field public _dragMoveFlags:I

.field public _isItemViewSwipeEnabled:Z

.field public final _isLongPressDragEnabled:Z

.field public final _itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public isDrag:Z

.field public isSwipe:Z

.field public mOnItemDragListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_isLongPressDragEnabled:Z

    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_isItemViewSwipeEnabled:Z

    return-void
.end method


# virtual methods
.method public final clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "viewHolder"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    iget-boolean p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->isSwipe:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->isSwipe:Z

    :cond_0
    iget-boolean p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->isDrag:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->mOnItemDragListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    if-eqz p1, :cond_2

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    sget-object p2, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    iget-object p1, p1, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    invoke-static {p1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->access$getAdapter$p(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-static {p1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->access$getShortcutsStyle$p(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->save(Ljava/util/List;Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)V

    :cond_2
    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->isDrag:Z

    :cond_3
    return-void
.end method

.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p1, p2, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_dragMoveFlags:I

    invoke-static {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public final isItemViewSwipeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_isItemViewSwipeEnabled:Z

    return p0
.end method

.method public final isLongPressDragEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_isLongPressDragEnabled:Z

    return p0
.end method

.method public final onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 1

    const-string v0, "c"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "recyclerView"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "viewHolder"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const-string p0, "recyclerView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "viewHolder"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "viewHolder"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_dataCallback:Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;

    if-ltz p1, :cond_1

    iget-object p3, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    if-ltz p2, :cond_1

    iget-object p3, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getMutableItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getMutableItems()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->isDrag:Z

    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->mOnItemDragListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->isSwipe:Z

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    const-string p0, "viewHolder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    return-void
.end method
