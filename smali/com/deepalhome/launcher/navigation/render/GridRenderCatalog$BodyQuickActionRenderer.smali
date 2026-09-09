.class public final Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final type:Lcom/deepalhome/launcher/navigation/model/GridItemType;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget v4, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "view"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "item"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mode"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "environment"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const v4, 0x1020006

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v3, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->cardViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v9

    :cond_1
    new-instance v6, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$SeatClimateQuickActionRenderer$bind$parentViewProvider$1;

    invoke-direct {v6, v3, v9}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$SeatClimateQuickActionRenderer$bind$parentViewProvider$1;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    new-instance v7, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$SeatClimateQuickActionRenderer$bind$dismissOtherTransientUi$1;

    invoke-direct {v7, v3, v9}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$SeatClimateQuickActionRenderer$bind$dismissOtherTransientUi$1;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v1}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    const v10, 0x7f0b0588

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const/4 v8, 0x1

    if-ne v2, v1, :cond_9

    new-instance v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v9, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->rootView:Landroid/view/View;

    iput-object v4, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->iconView:Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    iput-object v6, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object v7, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->interactive:Z

    iput-boolean v0, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->observeVehicleState:Z

    iput-boolean v8, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->touchFeedbackEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->swipeStepPx:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v0, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->swipeStartThresholdPx:F

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v0, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->swipeStepPx:F

    :goto_0
    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->refreshFromCurrentState()V

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->rootView:Landroid/view/View;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    iget-object v3, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->rootView:Landroid/view/View;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-boolean v2, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->interactive:Z

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    if-nez v2, :cond_7

    move-object v14, v0

    goto :goto_1

    :cond_7
    move-object v14, v2

    :goto_1
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;

    const/16 v16, 0x2

    move-object v11, v5

    move-object v12, v1

    move-object v13, v0

    move-object v15, v2

    invoke-direct/range {v11 .. v16}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/internal/Ref$BooleanRef;I)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v4, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_2
    iget-boolean v0, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->observeVehicleState:Z

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->vehiclePropertyListener:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_3
    invoke-virtual {v9, v10, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_5

    :cond_9
    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v0, v1, :cond_b

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne v0, v1, :cond_a

    goto :goto_4

    :cond_a
    new-instance v11, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-direct {v11, v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v12

    move v7, v13

    invoke-virtual/range {v0 .. v8}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->attachToViews(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->onAttachedToWindow()V

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_5

    :cond_b
    :goto_4
    new-instance v11, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-direct {v11, v0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v12

    move v7, v13

    invoke-virtual/range {v0 .. v8}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->attachToViews(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->onAttachedToWindow()V

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_5
    return-void

    :pswitch_0
    const-string v4, "view"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "item"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mode"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "environment"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v10, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v10, v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    const v0, 0x1020006

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "findViewById(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    iget-object v0, v3, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->cardViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    move-object v5, v0

    goto :goto_7

    :cond_d
    :goto_6
    move-object v5, v9

    :goto_7
    new-instance v6, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$ClimateQuickActionRenderer$bind$1;

    invoke-direct {v6, v3, v9}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$ClimateQuickActionRenderer$bind$1;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    new-instance v7, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$ClimateQuickActionRenderer$bind$2;

    invoke-direct {v7, v3, v9}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$ClimateQuickActionRenderer$bind$2;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-ne v2, v0, :cond_e

    move v11, v8

    goto :goto_8

    :cond_e
    move v11, v3

    :goto_8
    if-ne v2, v0, :cond_f

    goto :goto_9

    :cond_f
    move v8, v3

    :goto_9
    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    const/4 v12, 0x1

    move-object v0, v10

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v11

    move v7, v8

    move v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->attachToViews(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->onAttachedToWindow()V

    const v0, 0x7f0b0588

    invoke-virtual {v9, v0, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    const-string v4, "view"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "item"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mode"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "environment"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v7, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v7, v0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    const v0, 0x1020006

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "findViewById(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer$bind$1;

    invoke-direct {v5, v3, v9}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer$bind$1;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-ne v2, v0, :cond_10

    move v8, v6

    goto :goto_a

    :cond_10
    move v8, v3

    :goto_a
    if-ne v2, v0, :cond_11

    goto :goto_b

    :cond_11
    move v6, v3

    :goto_b
    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    const/4 v10, 0x1

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move v4, v8

    move v5, v6

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->attachToViews(Landroid/view/View;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->onAttachedToWindow()V

    const v0, 0x7f0b0587

    invoke-virtual {v9, v0, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/render/RenderMode;)Landroid/view/View;
    .locals 1

    iget p0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "parent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0700b8

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 v0, 0x42840000    # 66.0f

    invoke-static {p3, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p1, 0x1020006

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p1, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p3

    :pswitch_0
    const-string p0, "parent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0700b8

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 v0, 0x42840000    # 66.0f

    invoke-static {p3, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p1, 0x1020006

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p1, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p3

    :pswitch_1
    const-string p0, "parent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0700b8

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 v0, 0x42840000    # 66.0f

    invoke-static {p3, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p1, 0x1020006

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p1, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "item"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "mode"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$SeatClimateQuickActionRenderer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const p3, 0x7f0b0588

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_9

    iget-boolean p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->observeVehicleState:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->vehiclePropertyListener:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->dismissTransientUi(Z)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->rootView:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->rootView:Landroid/view/View;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->rootView:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->iconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    goto :goto_4

    :cond_4
    sget-object p2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq p0, p2, :cond_7

    sget-object p2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne p0, p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    if-eqz p2, :cond_6

    check-cast p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    goto :goto_1

    :cond_6
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->onDetachedFromWindow()V

    goto :goto_4

    :cond_7
    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    if-eqz p2, :cond_8

    check-cast p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    goto :goto_3

    :cond_8
    move-object p0, v0

    :goto_3
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->onDetachedFromWindow()V

    :cond_9
    :goto_4
    invoke-virtual {p1, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0588

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    goto :goto_5

    :cond_a
    move-object p2, v0

    :goto_5
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->onDetachedFromWindow()V

    :cond_b
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0587

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    goto :goto_6

    :cond_c
    move-object p2, v0

    :goto_6
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->onDetachedFromWindow()V

    :cond_d
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 6

    const v0, 0x7f0b0588

    const/4 v1, 0x0

    const-string v2, "mode"

    const-string v3, "item"

    const-string v4, "view"

    iget v5, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->$r8$classId:I

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch v5, :pswitch_data_0

    sget-object p2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$SeatClimateQuickActionRenderer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p2, p2, p4

    const/4 p4, 0x1

    if-ne p2, p4, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    if-eqz p1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    :cond_0
    if-eqz v1, :cond_a

    iput-boolean p3, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isNight:Z

    iget-object p0, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->currentDisplayMode()Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    move-result-object p1

    iget-object p2, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewLevel:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->currentDisplayMode()Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_3

    if-ne p2, p4, :cond_2

    iget p2, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    iget p2, v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    :goto_0
    sget-object p3, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$Companion;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->refreshSelection(ILcom/deepalhome/launcher/navigation/section/SeatClimateMode;Z)V

    :cond_4
    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->render()V

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq p0, p2, :cond_8

    sget-object p2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne p0, p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    if-eqz p1, :cond_7

    move-object v1, p0

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    :cond_7
    if-eqz v1, :cond_a

    invoke-virtual {v1, p3}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->updateUIMode(Z)V

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    if-eqz p1, :cond_9

    move-object v1, p0

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1, p3}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->updateUIMode(Z)V

    :cond_a
    :goto_2
    return-void

    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    if-eqz p1, :cond_b

    move-object v1, p0

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1, p3}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->updateUIMode(Z)V

    :cond_c
    return-void

    :pswitch_1
    const p0, 0x7f0b0587

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    if-eqz p1, :cond_d

    move-object v1, p0

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1, p3}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->updateUIMode(Z)V

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
