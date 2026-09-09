.class public final Lcom/deepalhome/launcher/widget/WidgetsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation


# static fields
.field private static final CELL_WIDTH_AND_HEIGHT:I

.field public static final Companion:Lcom/deepalhome/launcher/widget/WidgetsView$Companion;


# instance fields
.field private final binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

.field private blurRootView:Landroid/view/ViewGroup;

.field private draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

.field private isEditMode:Z

.field private menuAfterDragWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

.field private final moreMenuController:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

.field private onImageWidgetConfigurationRequested:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private widgetManager:Lcom/deepalhome/launcher/widget/IWidgetManager;


# direct methods
.method public static synthetic $r8$lambda$FuTF0VLQAYY8R6Ou4T0K2wcWquA(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/IWidgetManager;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->setWidgetManager$lambda$3(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/IWidgetManager;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lwMJ7iTuOECLjxQmFaM7K-o7wew(Lcom/deepalhome/launcher/widget/BaseWidgetView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/widget/WidgetsView;->addWidgetView$lambda$7(Lcom/deepalhome/launcher/widget/BaseWidgetView;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetsView$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/widget/WidgetsView;->Companion:Lcom/deepalhome/launcher/widget/WidgetsView$Companion;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/deepalhome/launcher/widget/WidgetsView;->CELL_WIDTH_AND_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/widget/WidgetsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    invoke-direct {p2, p1}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->moreMenuController:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const p2, 0x7f0e0122

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, p0, v1, v0}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    const-string p2, "inflate(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/WidgetsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$beginExistingWidgetDrag(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/WidgetsView;->beginExistingWidgetDrag(Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/deepalhome/launcher/widget/WidgetsView;)Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    return-object p0
.end method

.method public static final synthetic access$getCELL_WIDTH_AND_HEIGHT$cp()I
    .locals 1

    sget v0, Lcom/deepalhome/launcher/widget/WidgetsView;->CELL_WIDTH_AND_HEIGHT:I

    return v0
.end method

.method public static final synthetic access$getWidgetManager$p(Lcom/deepalhome/launcher/widget/WidgetsView;)Lcom/deepalhome/launcher/widget/IWidgetManager;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->widgetManager:Lcom/deepalhome/launcher/widget/IWidgetManager;

    return-object p0
.end method

.method public static final synthetic access$resizeWidget(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->resizeWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;II)V

    return-void
.end method

.method public static final synthetic access$resizeWidget(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/WidgetsView;->resizeWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;)V

    return-void
.end method

.method public static final synthetic access$showMoreMenu(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/widget/WidgetsView;->showMoreMenu(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    return-void
.end method

.method private final addWidgetView(Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/deepalhome/launcher/widget/WidgetInfo;->className:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->isWidgetClassSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/deepalhome/launcher/widget/WidgetInfo;->location:Lcom/deepalhome/launcher/widget/WidgetLocation;

    invoke-direct {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetsView;->clampLocation(Lcom/deepalhome/launcher/widget/WidgetLocation;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/widget/WidgetInfo;->getWidgetView(Landroid/content/Context;)Lcom/deepalhome/launcher/widget/BaseWidgetView;

    move-result-object v3

    instance-of v5, v3, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5, v1}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->bindWidgetInfo(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    new-instance v7, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$1;

    invoke-direct {v7, v0, v1}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$1;-><init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    invoke-virtual {v5, v7}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->setOnSelectImageRequest(Lkotlin/jvm/functions/Function0;)V

    new-instance v7, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$2;

    invoke-direct {v7, v0, v1}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$2;-><init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    invoke-virtual {v5, v7}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->setOnResizeRequest(Lkotlin/jvm/functions/Function1;)V

    :cond_2
    instance-of v5, v3, Lcom/deepalhome/launcher/time/CompassClockWidgetView;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Lcom/deepalhome/launcher/time/CompassClockWidgetView;

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v7, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$2;

    invoke-direct {v7, v0, v1}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$2;-><init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    invoke-virtual {v5, v7}, Lcom/deepalhome/launcher/time/CompassClockWidgetView;->setOnResizeRequest(Lkotlin/jvm/functions/Function2;)V

    :goto_2
    instance-of v5, v3, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    if-eqz v5, :cond_5

    move-object v5, v3

    check-cast v5, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    goto :goto_3

    :cond_5
    move-object v5, v6

    :goto_3
    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    new-instance v7, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$3;

    invoke-direct {v7, v0, v1}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$3;-><init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    invoke-virtual {v5, v7}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->setOnResizeRequest(Lkotlin/jvm/functions/Function2;)V

    :goto_4
    iget-object v5, v0, Lcom/deepalhome/launcher/widget/WidgetsView;->blurRootView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_7

    invoke-virtual {v3, v5}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setBlurRootView(Landroid/view/ViewGroup;)V

    :cond_7
    iget-object v5, v0, Lcom/deepalhome/launcher/widget/WidgetsView;->binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;->menuOverlayHost:Landroid/widget/FrameLayout;

    const-string v7, "menuOverlayHost"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setOverlayHost(Landroid/view/ViewGroup;)V

    new-instance v5, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$5;

    invoke-direct {v5, v0, v1, v3}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$5;-><init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    invoke-virtual {v3, v5}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setOnDeferredDragStart(Lkotlin/jvm/functions/Function0;)V

    new-instance v5, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$6;

    invoke-direct {v5, v0, v1}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$6;-><init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    invoke-virtual {v3, v5}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setOnDeferredDragReady(Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$7;->INSTANCE:Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$7;

    invoke-virtual {v3, v1}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setOnDeferredDragCancel(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v12, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$8;->INSTANCE:Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$8;

    new-instance v13, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$9;

    invoke-direct {v13, v3}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$9;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    new-instance v14, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$10;

    invoke-direct {v14, v3}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$10;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    new-instance v15, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$11;

    invoke-direct {v15, v3}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$11;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    new-instance v4, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$12;

    invoke-direct {v4, v3}, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$12;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x386

    move-object v7, v1

    move-object/from16 v19, v4

    invoke-direct/range {v7 .. v20}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;-><init>(Landroid/content/Context;JFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;ZLkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/deepalhome/launcher/widget/WidgetsView$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/deepalhome/launcher/widget/WidgetsView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-direct {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetsView;->buildLayoutParams(Lcom/deepalhome/launcher/widget/WidgetLocation;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/deepalhome/launcher/widget/WidgetsView;->binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;->widgetContainer:Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetsView;->buildLayoutParams(Lcom/deepalhome/launcher/widget/WidgetLocation;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    return-void
.end method

.method private static final addWidgetView$lambda$7(Lcom/deepalhome/launcher/widget/BaseWidgetView;Landroid/view/View;)V
    .locals 0

    const-string p1, "$widgetView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onClicked()V

    return-void
.end method

.method private final beginExistingWidgetDrag(Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepalhome/launcher/widget/WidgetInfo;",
            "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
            "*>;)Z"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->menuAfterDragWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->moreMenuController:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dismiss()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setBlurEnabled(Z)V

    new-instance v0, Landroid/content/ClipData$Item;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/content/ClipData;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const-string v4, "text/plain"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;

    iget-boolean v2, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->isEditMode:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a000d

    invoke-virtual {v2, v5, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    goto :goto_2

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    new-instance v5, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;

    const/4 v6, 0x1

    invoke-direct {v5, p2, v6}, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;I)V

    invoke-direct {v0, p2, v2, v5}, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;-><init>(Landroid/view/View;FLcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;)V

    const/16 v2, 0x200

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v3, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->menuAfterDragWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-virtual {p2, v4}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setBlurEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/widget/WidgetsView;->showMoreMenu(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    :cond_3
    return v4
.end method

.method private final buildLayoutParams(Lcom/deepalhome/launcher/widget/WidgetLocation;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    sget v1, Lcom/deepalhome/launcher/widget/WidgetsView;->CELL_WIDTH_AND_HEIGHT:I

    mul-int/2addr v0, v1

    iget v2, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    mul-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p1, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->point:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object p0
.end method

.method private final clampLocation(Lcom/deepalhome/launcher/widget/WidgetLocation;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->point:Landroid/graphics/Point;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->point:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/4 v2, 0x0

    if-gez v1, :cond_2

    iput v2, v0, Landroid/graphics/Point;->x:I

    :cond_2
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_3

    iput v2, v0, Landroid/graphics/Point;->y:I

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->point:Landroid/graphics/Point;

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sget v3, Lcom/deepalhome/launcher/widget/WidgetsView;->CELL_WIDTH_AND_HEIGHT:I

    div-int/2addr v0, v3

    iget v3, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    sub-int/2addr v0, v3

    if-gez v0, :cond_4

    move v0, v2

    :cond_4
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le v3, v0, :cond_5

    iput v0, v1, Landroid/graphics/Point;->y:I

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sget v0, Lcom/deepalhome/launcher/widget/WidgetsView;->CELL_WIDTH_AND_HEIGHT:I

    div-int/2addr p0, v0

    iget p1, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    sub-int/2addr p0, p1

    if-gez p0, :cond_6

    goto :goto_1

    :cond_6
    move v2, p0

    :goto_1
    iget p0, v1, Landroid/graphics/Point;->x:I

    if-le p0, v2, :cond_7

    iput v2, v1, Landroid/graphics/Point;->x:I

    :cond_7
    return-void
.end method

.method private final findWidgetPoint(Lcom/deepalhome/launcher/widget/WidgetInfo;Landroid/view/DragEvent;)Landroid/graphics/Point;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sget v1, Lcom/deepalhome/launcher/widget/WidgetsView;->CELL_WIDTH_AND_HEIGHT:I

    div-int/2addr v0, v1

    iget-object v2, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->location:Lcom/deepalhome/launcher/widget/WidgetLocation;

    iget v2, v2, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v1

    iget-object p1, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->location:Lcom/deepalhome/launcher/widget/WidgetLocation;

    iget v3, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    sub-int/2addr p0, v3

    if-gez p0, :cond_1

    move p0, v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget v4, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    invoke-static {v3, v2, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    iget p1, p1, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p2, p1

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    invoke-static {p1, v2, p0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private final resizeWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;II)V
    .locals 2

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->location:Lcom/deepalhome/launcher/widget/WidgetLocation;

    iget v1, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    if-ne v1, p3, :cond_0

    return-void

    :cond_0
    iput p2, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    iput p3, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->clampLocation(Lcom/deepalhome/launcher/widget/WidgetLocation;)V

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/widget/WidgetsView;->addWidgetView(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->widgetManager:Lcom/deepalhome/launcher/widget/IWidgetManager;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/deepalhome/launcher/widget/IWidgetManager;->save()V

    :cond_1
    return-void
.end method

.method private final resizeWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;)V
    .locals 1

    iget v0, p2, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->width:I

    iget p2, p2, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->height:I

    invoke-direct {p0, p1, v0, p2}, Lcom/deepalhome/launcher/widget/WidgetsView;->resizeWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;II)V

    return-void
.end method

.method private static final setWidgetManager$lambda$3(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/IWidgetManager;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12

    const-string p2, "this$0"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "$widgetManager"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const-string v0, "getContext(...)"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    move v2, v4

    goto/16 :goto_8

    :pswitch_0
    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->supportsWidgetDrag(Landroid/view/DragEvent;)Z

    move-result p2

    if-nez p2, :cond_0

    return v4

    :cond_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-eqz p2, :cond_1

    return v2

    :cond_1
    iget-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-eqz p2, :cond_4

    iget-object p3, p2, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->stopDragg()V

    :cond_2
    invoke-interface {p1, p2}, Lcom/deepalhome/launcher/widget/IWidgetManager;->deleteWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;->widgetContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/deepalhome/launcher/widget/WidgetInfo;->getWidgetView(Landroid/content/Context;)Lcom/deepalhome/launcher/widget/BaseWidgetView;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v3

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->moreMenuController:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dismiss()V

    :cond_4
    iput-object v3, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->menuAfterDragWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    goto/16 :goto_8

    :pswitch_1
    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->supportsWidgetDrag(Landroid/view/DragEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return v4

    :cond_5
    invoke-virtual {p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    instance-of v5, p2, Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-eqz v5, :cond_6

    check-cast p2, Lcom/deepalhome/launcher/widget/WidgetInfo;

    goto :goto_1

    :cond_6
    move-object p2, v3

    :goto_1
    if-eqz p2, :cond_7

    return v2

    :cond_7
    iget-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Lcom/deepalhome/launcher/widget/WidgetInfo;->getWidgetView(Landroid/content/Context;)Lcom/deepalhome/launcher/widget/BaseWidgetView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move-object p2, v3

    :goto_2
    invoke-virtual {p3}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto/16 :goto_7

    :cond_9
    if-nez p2, :cond_12

    const-string p2, "APP_CLIP_DATA"

    invoke-static {v0, p2, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v6, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    const-class v1, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v1, ""

    invoke-static {v0, p2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    invoke-static/range {v6 .. v11}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->createWidgetInfo$default(Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;I)Lcom/deepalhome/launcher/widget/WidgetInfo;

    move-result-object p2

    goto/16 :goto_6

    :cond_a
    sget-object p2, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "WIDGET_CLIP_DATA"

    invoke-static {v0, v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v0, v5}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    const-string v5, "|"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v0, v5, v4, v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_d

    new-instance v1, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion$WidgetClipSpec;

    invoke-direct {v1, v0, v3, v3}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion$WidgetClipSpec;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :goto_3
    move-object v3, v1

    goto :goto_5

    :cond_d
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_e
    move-object v0, v3

    :goto_4
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    :cond_f
    new-instance v1, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion$WidgetClipSpec;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v5, v0, v3}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion$WidgetClipSpec;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_3

    :goto_5
    if-nez v3, :cond_10

    return v4

    :cond_10
    iget-object v0, v3, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion$WidgetClipSpec;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->isWidgetClassSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return v4

    :cond_11
    iget-object v6, v3, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion$WidgetClipSpec;->width:Ljava/lang/Integer;

    iget-object v7, v3, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion$WidgetClipSpec;->height:Ljava/lang/Integer;

    iget-object v4, v3, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion$WidgetClipSpec;->className:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x2

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->createWidgetInfo$default(Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;I)Lcom/deepalhome/launcher/widget/WidgetInfo;

    move-result-object p2

    :cond_12
    :goto_6
    invoke-interface {p1, p2}, Lcom/deepalhome/launcher/widget/IWidgetManager;->addWidgets(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    invoke-direct {p0, p2, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->updateWidgetLocation(Lcom/deepalhome/launcher/widget/WidgetInfo;Landroid/view/DragEvent;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/widget/WidgetsView;->addWidgetView(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    iget-object p0, p2, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->startDragg()V

    goto :goto_8

    :cond_13
    :goto_7
    return v4

    :pswitch_2
    iget-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-nez p2, :cond_14

    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->supportsWidgetDrag(Landroid/view/DragEvent;)Z

    move-result p2

    if-nez p2, :cond_14

    return v4

    :cond_14
    iget-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-virtual {p0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz p2, :cond_15

    iget-object p3, p2, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    if-eqz p3, :cond_15

    invoke-virtual {p3}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->stopDragg()V

    :cond_15
    iput-object v3, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-interface {p1}, Lcom/deepalhome/launcher/widget/IWidgetManager;->save()V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->menuAfterDragWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iput-object v3, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->menuAfterDragWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-eqz p1, :cond_19

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/widget/WidgetsView;->showMoreMenu(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    goto :goto_8

    :pswitch_3
    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->supportsWidgetDrag(Landroid/view/DragEvent;)Z

    move-result p0

    if-nez p0, :cond_19

    return v4

    :pswitch_4
    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->supportsWidgetDrag(Landroid/view/DragEvent;)Z

    move-result p1

    if-nez p1, :cond_16

    return v4

    :cond_16
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-eqz p1, :cond_19

    invoke-direct {p0, p1, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->updateWidgetLocation(Lcom/deepalhome/launcher/widget/WidgetInfo;Landroid/view/DragEvent;)V

    goto :goto_8

    :pswitch_5
    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/widget/WidgetsView;->supportsWidgetDrag(Landroid/view/DragEvent;)Z

    move-result p1

    if-nez p1, :cond_17

    return v4

    :cond_17
    invoke-virtual {p0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->moreMenuController:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dismiss()V

    invoke-virtual {p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-eqz p2, :cond_18

    move-object v3, p1

    check-cast v3, Lcom/deepalhome/launcher/widget/WidgetInfo;

    :cond_18
    iput-object v3, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->draggedWidget:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-eqz v3, :cond_19

    iget-object p0, v3, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->startDragg()V

    :cond_19
    :goto_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final showMoreMenu(Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/widget/WidgetInfo;->getWidgetView(Landroid/content/Context;)Lcom/deepalhome/launcher/widget/BaseWidgetView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->moreMenuController:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;->menuOverlayHost:Landroid/widget/FrameLayout;

    const-string v3, "menuOverlayHost"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->blurRootView:Landroid/view/ViewGroup;

    new-instance v4, Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$1;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$1;-><init>(Lcom/deepalhome/launcher/widget/WidgetsView;)V

    new-instance v5, Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$2;

    invoke-direct {v5, p0}, Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$2;-><init>(Lcom/deepalhome/launcher/widget/WidgetsView;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->currentAnchor:Landroid/view/View;

    iput-object v0, v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->currentWidgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    iput-object v2, v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->overlayHost:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->menuBackground:Lcom/koushikdutta/async/Util$8;

    iput-object v3, v2, Lcom/koushikdutta/async/Util$8;->val$bb:Ljava/lang/Object;

    iput-object v4, v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->onDelete:Lkotlin/jvm/functions/Function2;

    iput-object v5, v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->onStyleChanged:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->outsideDismissEnabled:Z

    invoke-virtual {v1, p1, v0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->buildMainMenu(Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->showContent(Landroid/view/View;Landroid/widget/LinearLayout;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->moreMenuController:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->outsideDismissEnabled:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->overlayRoot:Landroid/widget/FrameLayout;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method private final supportsWidgetDrag(Landroid/view/DragEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "WIDGET_CLIP_DATA"

    invoke-static {p0, p1, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "APP_CLIP_DATA"

    invoke-static {p0, p1, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method private final updateWidgetLocation(Lcom/deepalhome/launcher/widget/WidgetInfo;Landroid/view/DragEvent;)V
    .locals 3

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->location:Lcom/deepalhome/launcher/widget/WidgetLocation;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/widget/WidgetInfo;->getWidgetView(Landroid/content/Context;)Lcom/deepalhome/launcher/widget/BaseWidgetView;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/WidgetsView;->findWidgetPoint(Lcom/deepalhome/launcher/widget/WidgetInfo;Landroid/view/DragEvent;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->point:Landroid/graphics/Point;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->point:Landroid/graphics/Point;

    invoke-virtual {v2, p2, p1}, Landroid/graphics/Point;->set(II)V

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->buildLayoutParams(Lcom/deepalhome/launcher/widget/WidgetLocation;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getOnImageWidgetConfigurationRequested()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->onImageWidgetConfigurationRequested:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final isEditMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->isEditMode:Z

    return p0
.end method

.method public final isPointOnEmptyArea(FF)Z
    .locals 9

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;->widgetContainer:Landroid/widget/FrameLayout;

    const-string v0, "widgetContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_4

    int-to-float v3, v5

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_4

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_4

    int-to-float v2, v6

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    new-array v6, v0, [I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v7, v6, v1

    aget v6, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v6

    int-to-float v7, v7

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_2

    int-to-float v7, v8

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_2

    int-to-float v6, v6

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_2

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_1
    return v1
.end method

.method public final refreshWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 1

    const-string v0, "widgetInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/widget/WidgetsView;->addWidgetView(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    return-void
.end method

.method public final setBlurRootView(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->blurRootView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;->widgetContainer:Landroid/widget/FrameLayout;

    const-string v0, "widgetContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.deepalhome.launcher.widget.BaseWidgetView<*>"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-virtual {v2, p1}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setBlurRootView(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->isEditMode:Z

    return-void
.end method

.method public final setOnImageWidgetConfigurationRequested(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->onImageWidgetConfigurationRequested:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setWidgetManager(Lcom/deepalhome/launcher/widget/IWidgetManager;)V
    .locals 2

    const-string v0, "widgetManager"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->widgetManager:Lcom/deepalhome/launcher/widget/IWidgetManager;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->binding:Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;->widgetContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/deepalhome/launcher/widget/WidgetsView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/deepalhome/launcher/widget/WidgetsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/IWidgetManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-interface {p1}, Lcom/deepalhome/launcher/widget/IWidgetManager;->getWidgets()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->addWidgetView(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final startEdit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->isEditMode:Z

    return-void
.end method

.method public final stopEdit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/WidgetsView;->isEditMode:Z

    return-void
.end method
