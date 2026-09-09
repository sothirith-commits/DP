.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mDefaultDragDirs:I

.field public final mDefaultSwipeDirs:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->mDefaultSwipeDirs:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->mDefaultDragDirs:I

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p0, "recyclerView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "current"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "target"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p3, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$DividerViewHolder;

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->getMovementFlags$androidx$recyclerview$widget$ItemTouchHelper$SimpleCallback(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0

    :pswitch_0
    const-string p0, "recyclerView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "viewHolder"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$DividerViewHolder;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMovementFlags$androidx$recyclerview$widget$ItemTouchHelper$SimpleCallback(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    iget p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->mDefaultDragDirs:I

    iget p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->mDefaultSwipeDirs:I

    invoke-static {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p1, p3, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$DividerViewHolder;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;

    iget p3, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->showCount:I

    if-ge p1, p3, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ge p2, p3, :cond_2

    move p3, p2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p2, -0x1

    :goto_1
    if-eq v0, p3, :cond_3

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    if-ltz p3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_3
    const/4 p0, 0x1

    :goto_2
    return p0

    :pswitch_0
    const-string v0, "rv"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "vh"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    invoke-static {p3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actionsAdapter:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "viewHolder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string p0, "vh"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
