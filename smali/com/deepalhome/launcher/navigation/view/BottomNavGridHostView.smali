.class public final Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private activeDragPayload:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;

.field private final boundWrappers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final candidatePaint:Landroid/graphics/Paint;

.field private candidatePlacement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

.field private candidateState:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

.field private final candidateStrokePaint:Landroid/graphics/Paint;

.field private config:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

.field private dragSourceBounds:Landroid/graphics/Rect;

.field private dragSourceHidden:Z

.field private final dragSourceHideInset:I

.field private final dragSourceMoveThreshold:F

.field private dragTouchX:F

.field private dragTouchY:F

.field private editMode:Z

.field private hiddenDragSourceContent:Landroid/view/View;

.field private isNightMode:Z

.field private final layoutEngine:Lcom/deepalhome/launcher/navigation/layout/GridLayoutEngine;

.field private layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

.field private onItemDropped:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field private renderCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

.field private renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

.field private final slotPaint:Landroid/graphics/Paint;

.field private final validator:Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;


# direct methods
.method public static synthetic $r8$lambda$0oUc6PCbgMlfbM5sjowsXzx16CU(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->onDragEventInternal(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/deepalhome/launcher/navigation/layout/GridLayoutEngine;

    invoke-direct {p2}, Lcom/deepalhome/launcher/navigation/layout/GridLayoutEngine;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutEngine:Lcom/deepalhome/launcher/navigation/layout/GridLayoutEngine;

    new-instance p2, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;

    invoke-direct {p2}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->validator:Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v2, 0x7f060019

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x50

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->slotPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidatePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidateStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700b7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dragSourceHideInset:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dragSourceMoveThreshold:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dragTouchX:F

    iput p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dragTouchY:F

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/FrameLayout;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getEditMode$p(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->editMode:Z

    return p0
.end method

.method public static final synthetic access$prepareDragSource(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->prepareDragSource(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$recordDragTouchPoint(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->recordDragTouchPoint(Landroid/view/View;FF)V

    return-void
.end method

.method public static synthetic applyState$default(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;ZLcom/deepalhome/launcher/navigation/render/RenderMode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    iget-boolean p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->editMode:Z

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->applyState(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V

    return-void
.end method

.method private final asRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 3

    new-instance p0, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private final bindWrapper(Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v4, v4, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object v5, p2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v5, v5, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    iget-object v5, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;->mode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-eq v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v5, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v6, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;->mode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-virtual {p3, v3, v5, v6}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v3, v3, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {p3, v3}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->renderer(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-interface {v3, v5, p1, v6}, Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/render/RenderMode;)Landroid/view/View;

    move-result-object v3

    iget-object v5, p2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v5, v5, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->childLayoutParamsForItem(Lcom/deepalhome/launcher/navigation/model/GridItemType;Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    if-nez v3, :cond_5

    return-void

    :cond_5
    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;->mode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-virtual {p3, v3, v4, v0}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V

    :cond_6
    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->editMode:Z

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    sget-object v4, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    if-ne v0, v4, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0800b4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-virtual {p3, v3, v0, v1}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->bind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->isNightMode:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    iget-object p2, p2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    invoke-virtual {p3, v3, p2, v0, v1}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V

    iget-boolean p3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->editMode:Z

    if-eqz p3, :cond_8

    iget-boolean p3, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->movable:Z

    if-eqz p3, :cond_8

    invoke-direct {p0, v3}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->stabilizeEditPreview(Landroid/view/View;)V

    new-instance p3, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;

    sget-object v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->NAV_BAR:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    invoke-direct {p3, p2, v0}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;)V

    invoke-direct {p0, p1, v3, p3}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->installDragHandles(Landroid/widget/FrameLayout;Landroid/view/View;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;)V

    :cond_8
    new-instance p3, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-direct {p3, p2, p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private final childLayoutParamsForItem(Lcom/deepalhome/launcher/navigation/model/GridItemType;Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    instance-of p0, p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p0, :cond_0

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_1

    :cond_0
    instance-of p0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    move-object p2, p0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p0, -0x2

    invoke-direct {p2, p0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_1
    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const/4 v0, 0x0

    const/16 v1, 0x11

    if-ne p1, p0, :cond_3

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_3
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_2
    return-object p2
.end method

.method private final clearCandidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidatePlacement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidateState:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final clearChildren()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->releaseWrapper(Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method private final native clearDragState()V
.end method

.method private final computeGeometry(Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;II)Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;
    .locals 12

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p3, v1

    if-ge p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    int-to-float p2, p2

    iget p3, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    iget v1, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    mul-int/2addr p3, v1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->getRailCount()I

    move-result v2

    iget v3, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p3

    int-to-float p3, v2

    div-float/2addr p2, p3

    new-instance p3, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {p3}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    iget v5, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    if-ge v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int v6, v1, v3

    mul-int/2addr v6, v4

    int-to-float v6, v6

    mul-float/2addr v6, p2

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int v7, v1, v3

    mul-int/2addr v7, v4

    add-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v7, p2

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    add-int/2addr v7, v5

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v0

    invoke-direct {v5, v6, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    new-instance v5, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v5}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->getRailCount()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int v7, v1, v3

    mul-int/2addr v7, v2

    add-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v7, p2

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int v8, v1, v3

    mul-int/2addr v8, v2

    add-int/2addr v8, v1

    add-int/2addr v8, v3

    int-to-float v8, v8

    mul-float/2addr v8, p2

    invoke-static {v8}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v8

    add-int/2addr v8, v6

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-static {v4}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v0

    invoke-static {v4}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v11

    sub-int/2addr v9, v11

    invoke-direct {v6, v7, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;

    invoke-direct {p1, p3, p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;-><init>(Lkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V

    return-object p1
.end method

.method public static synthetic computeGeometry$default(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;IIILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->computeGeometry(Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;II)Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;

    move-result-object p0

    return-object p0
.end method

.method private final createWrapper()Landroid/widget/FrameLayout;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$createWrapper$1;

    invoke-direct {v1, p0, v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$createWrapper$1;-><init>(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/high16 p0, 0x60000

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-object v1
.end method

.method public static synthetic dismissTransientUi$default(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dismissTransientUi(Landroid/view/View;)V

    return-void
.end method

.method private final drawCandidate(Landroid/graphics/Canvas;Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;)V
    .locals 12

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidatePlacement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->activeDragPayload:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;->getType()Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-object v4, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v6, v0, Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    iget v7, v3, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    const/16 v10, 0x18

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem$default(Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x3b

    invoke-static/range {v1 .. v6}, Lcom/deepalhome/launcher/navigation/model/GridItem;->copy$default(Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridPlacement;ZZI)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v1

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;->occupancy:Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;->footprintFor(Lcom/deepalhome/launcher/navigation/model/GridItem;)Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidateState:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    sget-object v2, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->VALID:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060019

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_4
    const/high16 v1, -0x10000

    :goto_0
    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidatePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidatePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidateState:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    if-ne v4, v2, :cond_5

    const/16 v2, 0x30

    goto :goto_1

    :cond_5
    const/16 v2, 0x1e

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidateStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidateStrokePaint:Landroid/graphics/Paint;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;->slotIndices:Lkotlin/ranges/IntRange;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v1

    :cond_6
    :goto_2
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    iget-object v3, p2, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->slotRects:Ljava/util/List;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_6

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->asRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    iget-object v6, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidateStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_7
    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;->railIndices:Lkotlin/ranges/IntRange;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v0

    :cond_8
    :goto_3
    iget-boolean v1, v0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    iget-object v2, p2, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->railRects:Ljava/util/List;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_8

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->asRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->asRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->candidateStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method private final hasTrackedTouchPoint()Z
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dragTouchX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dragTouchY:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final native installDragHandles(Landroid/widget/FrameLayout;Landroid/view/View;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;)V
.end method

.method private final layoutChildren()V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final native maybeHideDragSource(FF)V
.end method

.method private final notifyChildVisibilityChanged()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v3, "<get-values>(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const v4, 0x7f0b0585

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    goto :goto_3

    :cond_4
    move-object v4, v6

    :goto_3
    const v5, 0x7f0b0588

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->onVisibilityChanged()V

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissTransientUi(Z)V

    :cond_7
    instance-of v4, v5, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    if-eqz v4, :cond_8

    check-cast v5, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-virtual {v5, v2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->dismissTransientUi(Z)V

    goto :goto_4

    :cond_8
    instance-of v4, v5, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    if-eqz v4, :cond_9

    check-cast v5, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {v5, v2}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->dismissTransientUi(Z)V

    :cond_9
    :goto_4
    const v4, 0x7f0b0589

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    if-eqz v5, :cond_a

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    goto :goto_5

    :cond_a
    move-object v4, v6

    :goto_5
    if-eqz v4, :cond_b

    invoke-virtual {v4, v2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissFanSpeedPopup(Z)V

    :cond_b
    const v4, 0x7f0b058a

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    if-eqz v5, :cond_c

    check-cast v4, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    goto :goto_6

    :cond_c
    move-object v4, v6

    :goto_6
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->dismissWindDirectionPopup()V

    :cond_d
    const v4, 0x7f0b0586

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    if-eqz v4, :cond_e

    move-object v6, v3

    check-cast v6, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    :cond_e
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    goto/16 :goto_2

    :cond_f
    return-void
.end method

.method private final native onDragEventInternal(Landroid/view/View;Landroid/view/DragEvent;)Z
.end method

.method private final native prepareDragSource(Landroid/view/View;Landroid/view/View;)V
.end method

.method private final rebuildChildren()V
    .locals 7

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;

    iget-object v4, v3, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v4, v4, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    iget-object v5, v3, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v6, v5, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->createWrapper()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v6, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    iget-object v5, v5, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v4, v3, v1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->bindWrapper(Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v3, "<get-keys>(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v0, v3

    :goto_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_7

    invoke-direct {p0, v2, v1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->releaseWrapper(Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;)V

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutChildren()V

    return-void
.end method

.method private final recordDragTouchPoint(Landroid/view/View;FF)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget v2, v1, p1

    aget p1, v0, p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dragTouchX:F

    const/4 p1, 0x1

    aget p2, v1, p1

    aget p1, v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    add-float/2addr p1, p3

    iput p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dragTouchY:F

    return-void
.end method

.method private final releaseWrapper(Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$BoundWrapperState;->mode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    invoke-virtual {p2, v1, v3, v0}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private final native restoreHiddenDragSource()V
.end method

.method private final native stabilizeEditPreview(Landroid/view/View;)V
.end method

.method private final native updateCandidate(Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;F)V
.end method


# virtual methods
.method public final applyState(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 2

    const-string v0, "config"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "renderMode"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->config:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->editMode:Z

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-eq v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->config:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutEngine:Lcom/deepalhome/launcher/navigation/layout/GridLayoutEngine;

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/navigation/layout/GridLayoutEngine;->createPlan(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->editMode:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->rebuildChildren()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutChildren()V

    :goto_1
    return-void
.end method

.method public final dismissTransientUi(Landroid/view/View;)V
    .locals 5

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<get-values>(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-eq v0, p1, :cond_0

    :cond_2
    const v1, 0x7f0b0585

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissTransientUi(Z)V

    :cond_4
    const v1, 0x7f0b0588

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    if-eqz v4, :cond_5

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->dismissTransientUi(Z)V

    goto :goto_2

    :cond_5
    instance-of v4, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    if-eqz v4, :cond_6

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->dismissTransientUi(Z)V

    :cond_6
    :goto_2
    const v1, 0x7f0b0589

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    if-eqz v4, :cond_7

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    goto :goto_3

    :cond_7
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissFanSpeedPopup(Z)V

    :cond_8
    const v1, 0x7f0b058a

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    goto :goto_4

    :cond_9
    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->dismissWindDirectionPopup()V

    :cond_a
    const v1, 0x7f0b0586

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    if-eqz v1, :cond_b

    move-object v3, v0

    check-cast v3, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    :cond_b
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final getOnItemDropped()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->onItemDropped:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->clearDragState()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dismissTransientUi$default(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->clearChildren()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->editMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->computeGeometry$default(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;IIILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;

    move-result-object v0

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->slotRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->asRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->slotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->drawCandidate(Landroid/graphics/Canvas;Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-direct {p0, p1, p4, p5}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->computeGeometry(Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;II)Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;

    move-result-object p2

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;->nodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;

    iget-object p4, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    iget-object p5, p3, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object p5, p5, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->rectFor(Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;)Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    iget p5, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, p5, v0, v1, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->computeGeometry(Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;II)Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;

    move-result-object p2

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;->nodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v2, v2, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->rectFor(Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutChildren()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->notifyChildVisibilityChanged()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->notifyChildVisibilityChanged()V

    return-void
.end method

.method public final refreshBindings()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v4, v4, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, v2, v1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->bindWrapper(Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final setCatalog(Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;)V
    .locals 1

    const-string v0, "catalog"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->rebuildChildren()V

    return-void
.end method

.method public final setOnItemDropped(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->onItemDropped:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->isNightMode:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->layoutPlan:Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderCatalog:Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/layout/GridLayoutPlan;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->boundWrappers:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v4, v4, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->renderMode:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    iget-object v2, v2, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    invoke-virtual {v1, v3, v2, p1, v4}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
