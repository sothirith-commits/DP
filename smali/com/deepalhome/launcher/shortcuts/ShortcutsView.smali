.class public final Lcom/deepalhome/launcher/shortcuts/ShortcutsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final adapter:Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;

.field private final appsChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final binding:Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;

.field private final folderAdapter:Lcom/deepalhome/launcher/shortcuts/ShortcutsFolderViewAdapter;

.field private isObservingData:Z

.field private onFolderViewClickListener:Landroid/view/View$OnClickListener;

.field private final shortcutsChangedListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final shortcutsStyle:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

.field private final updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2onSndV55rtCp06i0zuYpp3SH5k(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->onVisibilityChanged$lambda$8(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4QeG8jYRz4CKqi9viM5v1Jet33k(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->_init_$lambda$6(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$92Fb_WNcBRPYtZqr4ERO7AVaJc4(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->_init_$lambda$5(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CNmMWCug_GFqxV4qe1sjbto3N2E(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->_init_$lambda$4(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PB0V6vZroFDAEw2qXTwoc2OrXKs(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->_init_$lambda$0(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cJtK6c1tbVLDSDhUEUUUqtKuOh8(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->onAttachedToWindow$lambda$7(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;

    invoke-direct {p2}, Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->adapter:Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;

    new-instance v1, Lcom/deepalhome/launcher/shortcuts/ShortcutsFolderViewAdapter;

    invoke-direct {v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsFolderViewAdapter;-><init>()V

    iput-object v1, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->folderAdapter:Lcom/deepalhome/launcher/shortcuts/ShortcutsFolderViewAdapter;

    sget-object v2, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    iput-object v2, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->shortcutsStyle:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    new-instance v2, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$appsChangedListener$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$appsChangedListener$1;-><init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->appsChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$shortcutsChangedListener$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$shortcutsChangedListener$1;-><init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->shortcutsChangedListener:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$updateBadgeChangedListener$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$updateBadgeChangedListener$1;-><init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;->$r8$clinit:I

    sget-object v3, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v3, 0x7f0e00f9

    const/4 v4, 0x0

    invoke-static {p1, v3, p0, v0, v4}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;

    const-string v3, "inflate(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->binding:Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v5, p1, Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v5, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->refreshShortcuts()V

    new-instance v3, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;I)V

    iput-object v3, p2, Lcom/chad/library/adapter4/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;

    new-instance v3, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    invoke-direct {v3}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;-><init>()V

    const/16 v4, 0xf

    iput v4, v3, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_dragMoveFlags:I

    iput-boolean v2, v3, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_isItemViewSwipeEnabled:Z

    new-instance v2, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v4, 0x5

    invoke-direct {v2, v4, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    iput-object v2, v3, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->mOnItemDragListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    iget-object v2, v3, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v5, v3, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v3, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    iput-object p2, v3, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->_dataCallback:Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;->folderView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-object p2, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getRecentShortcuts()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    new-instance p2, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;I)V

    iput-object p2, v1, Lcom/chad/library/adapter4/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;

    new-instance p2, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v0, 0x17

    invoke-direct {p2, v0, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p0}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->adapter:Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;

    iget-object p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-static {p3, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/app/App;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/AppUtil;->start(Ljava/lang/String;)V

    return-void
.end method

.method private static final _init_$lambda$4(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "v"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->onFolderViewClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final _init_$lambda$5(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->onFolderViewClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final _init_$lambda$6(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->binding:Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;->folderView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :goto_0
    return p2
.end method

.method public static final synthetic access$getAdapter$p(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->adapter:Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;

    return-object p0
.end method

.method public static final synthetic access$getFolderAdapter$p(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)Lcom/deepalhome/launcher/shortcuts/ShortcutsFolderViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->folderAdapter:Lcom/deepalhome/launcher/shortcuts/ShortcutsFolderViewAdapter;

    return-object p0
.end method

.method public static final synthetic access$getShortcutsStyle$p(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->shortcutsStyle:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    return-object p0
.end method

.method public static final synthetic access$refreshShortcuts(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->refreshShortcuts()V

    return-void
.end method

.method private static final onAttachedToWindow$lambda$7(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->updateObserverState()V

    return-void
.end method

.method private static final onVisibilityChanged$lambda$8(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->updateObserverState()V

    return-void
.end method

.method private final refreshShortcuts()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->adapter:Lcom/deepalhome/launcher/shortcuts/ShortcutsViewAdapter;

    sget-object v1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->shortcutsStyle:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getShortcuts(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private final setObserverState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->isObservingData:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->isObservingData:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    iget-object v0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->shortcutsStyle:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    iget-object v1, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->shortcutsChangedListener:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->addOnAppChangedListener(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;Lkotlin/jvm/functions/Function0;)V

    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    iget-object v0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->appsChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AppUtil;->addOnAppsChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    iget-object v0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->addOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->refreshShortcuts()V

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->folderAdapter:Lcom/deepalhome/launcher/shortcuts/ShortcutsFolderViewAdapter;

    invoke-static {}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getRecentShortcuts()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    iget-object v0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->shortcutsStyle:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    iget-object v1, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->shortcutsChangedListener:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->removeOnAppChangedListener(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;Lkotlin/jvm/functions/Function0;)V

    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    iget-object v0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->appsChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->appChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->removeOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method private final updateObserverState()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->setObserverState(Z)V

    return-void
.end method


# virtual methods
.method public final getOnFolderViewClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->onFolderViewClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->setObserverState(Z)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    new-instance p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setOnFolderViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->onFolderViewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
