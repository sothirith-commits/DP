.class public final Lcom/deepalhome/launcher/navigation/BottomNavigationBar;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final bottomPadding:I

.field private final configChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lkotlin/jvm/functions/Function1;",
            ">;"
        }
    .end annotation
.end field

.field private deleteOverlayView:Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;

.field private editorSession:Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;

.field private final horizontalPadding:I

.field private isEditMode:Z

.field private onFolderViewClickListener:Landroid/view/View$OnClickListener;

.field private onFolderViewLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onHomeBtnClickListener:Landroid/view/View$OnClickListener;

.field private onHomeBtnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private overlayHost:Landroid/view/ViewGroup;

.field private final repository:Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;

.field private final updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ac

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->horizontalPadding:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700b7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->bottomPadding:I

    new-instance p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->repository:Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->configChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateBadgeChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateBadgeChangedListener$1;-><init>(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getOverlayHost$p(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->overlayHost:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic access$handleDrop(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->handleDrop(Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Z

    move-result p0

    return p0
.end method

.method private final activeConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->isEditMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->editorSession:Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->getWorkingConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->repository:Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;->getConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->repository:Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;->getConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;->effectiveConfig$default(Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    return-object p0
.end method

.method private final applyConfig(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;->effectiveConfig$default(Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->gridHost:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->isEditMode:Z

    if-eqz v1, :cond_0

    sget-object v2, Lcom/deepalhome/launcher/navigation/render/RenderMode;->PREVIEW:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->applyState(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->configChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final applyCurrentConfig()V
    .locals 1

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->activeConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->applyConfig(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    return-void
.end method

.method private final blurOverlayColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060028

    goto :goto_0

    :cond_0
    const v0, 0x7f060024

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private final detachDeleteOverlay()V
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->deleteOverlayView:Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->setEditModeEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final native editSessionOrNull()Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;
.end method

.method private final native ensureEditorSession()Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;
.end method

.method private final native handleDrop(Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Z
.end method

.method private final updateDeleteOverlayState()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->isEditMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->detachDeleteOverlay()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->overlayHost:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->deleteOverlayView:Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;

    const/4 v2, -0x1

    if-nez v1, :cond_2

    new-instance v1, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateDeleteOverlayState$overlay$1$1;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateDeleteOverlayState$overlay$1$1;-><init>(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)V

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->setOnDeleteRequested(Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->deleteOverlayView:Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, v0, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->setEditModeEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method private final updateRenderCatalog()V
    .locals 12

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->gridHost:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    new-instance v1, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    new-instance v11, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

    new-instance v3, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$1;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$1;-><init>(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)V

    new-instance v4, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$2;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$2;-><init>(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)V

    new-instance v5, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$3;

    invoke-direct {v5, p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$3;-><init>(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)V

    iget-object v6, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onHomeBtnClickListener:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onHomeBtnLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v8, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onFolderViewClickListener:Landroid/view/View$OnClickListener;

    iget-object v9, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onFolderViewLongClickListener:Landroid/view/View$OnLongClickListener;

    sget-object v10, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$4;->INSTANCE:Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$4;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v1, v11}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->setCatalog(Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;)V

    return-void
.end method


# virtual methods
.method public final addOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->configChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->currentGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final applySavedConfig()V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->repository:Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;->getConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->applyConfig(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    return-void
.end method

.method public final clearBackground()V
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->horizontalPadding:I

    iget v1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->bottomPadding:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f06038f

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1, v2}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    sget-object v1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v3, "blurView"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public final currentGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->activeConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    return-object p0
.end method

.method public final currentShortcutPackages()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->activeConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->shortcutPackages()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final dismissTransientUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->gridHost:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    const-string v0, "gridHost"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dismissTransientUi$default(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public final native finishEditSession(Z)Z
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0032

    return p0
.end method

.method public final getOnFolderViewClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onFolderViewClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final getOnFolderViewLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onFolderViewLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public final getOnHomeBtnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onHomeBtnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final getOnHomeBtnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onHomeBtnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->addOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->removeOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->gridHost:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    const-string v1, "gridHost"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dismissTransientUi$default(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->detachDeleteOverlay()V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInit()V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->gridHost:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    new-instance v9, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;

    const-class v4, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    const-string v5, "handleDrop"

    const/4 v2, 0x2

    const-string v6, "handleDrop(Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Z"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->setOnItemDropped(Lkotlin/jvm/functions/Function2;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->updateRenderCatalog()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->applySavedConfig()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->blurOverlayColor()I

    move-result p0

    invoke-virtual {v0, p0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    return-void
.end method

.method public final native removeGridItem(Ljava/lang/String;)V
.end method

.method public final removeOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->configChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final native setEditMode(Z)V
.end method

.method public final setOnFolderViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onFolderViewClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->updateRenderCatalog()V

    return-void
.end method

.method public final setOnFolderViewLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onFolderViewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->updateRenderCatalog()V

    return-void
.end method

.method public final setOnHomeBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onHomeBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->updateRenderCatalog()V

    return-void
.end method

.method public final setOnHomeBtnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->onHomeBtnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->updateRenderCatalog()V

    return-void
.end method

.method public final setOverlayHost(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->overlayHost:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->detachDeleteOverlay()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->overlayHost:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->updateDeleteOverlayState()V

    return-void
.end method

.method public final startBlur()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->horizontalPadding:I

    iget v1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->bottomPadding:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f06038f

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, v2}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->cardView:Landroidx/cardview/widget/CardView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->blurOverlayColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public final startBlurEffect(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->horizontalPadding:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->bottomPadding:I

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f06038f

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v3, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v3}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v2, p1, v3}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v1, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->blurOverlayColor()I

    move-result v1

    invoke-virtual {p1, v1}, Leightbitlab/com/blurview/PreDrawBlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurController;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v3, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1, v3}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v1, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->blurOverlayColor()I

    move-result v1

    invoke-virtual {p1, v1}, Leightbitlab/com/blurview/PreDrawBlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurController;

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v1, "blurView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    return-void
.end method

.method public final native toggleGridItemType(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
.end method

.method public final native toggleShortcutApp(Lcom/deepalhome/launcher/app/App;)Z
.end method

.method public updateUIMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->blurOverlayColor()I

    move-result v1

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->cardView:Landroidx/cardview/widget/CardView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->blurOverlayColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->gridHost:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->updateUIMode(Z)V

    return-void
.end method
