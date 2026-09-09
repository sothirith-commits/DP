.class public final Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_0
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x0

    const-string v7, "getContext(...)"

    const/4 v9, 0x1

    const-string v10, "findViewById(...)"

    const v11, 0x1020006

    const-string v12, "environment"

    const-string v13, "mode"

    const-string v14, "item"

    const-string v15, "view"

    move-object/from16 v8, p0

    iget v8, v8, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    sget-object v12, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v8}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;-><init>()V

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v11, Landroid/widget/ImageView;

    iget-object v10, v3, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->cardViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v10, :cond_0

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-nez v10, :cond_1

    :cond_0
    move-object v10, v0

    :cond_1
    new-instance v12, Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$1;

    invoke-direct {v12, v3, v0}, Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$1;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    new-instance v13, Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$2;

    invoke-direct {v13, v3, v0}, Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$2;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    sget-object v3, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne v2, v3, :cond_2

    move v14, v9

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    if-ne v2, v3, :cond_3

    move v2, v9

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v1}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

    iput-object v11, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->iconView:Landroid/widget/ImageView;

    iput-object v10, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    iput-object v12, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object v13, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    iput-boolean v14, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->interactive:Z

    iput-boolean v2, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->observeVehicleState:Z

    iput-boolean v9, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->touchFeedbackEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStepPx:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->tapSlopPx:F

    sget-object v2, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v9, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStartThresholdPx:F

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v9, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStepPx:F

    :goto_2
    iget-object v1, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    iget-object v2, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-boolean v2, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->interactive:Z

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    if-nez v2, :cond_9

    move-object v2, v1

    :cond_9
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;

    invoke-direct {v5, v8, v1, v2}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;-><init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v2, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v2, v4, v8, v3}, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_3
    invoke-virtual {v8}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    iget-boolean v1, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->observeVehicleState:Z

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v8, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->airConditionStateChangedListener:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_4
    const v1, 0x7f0b058a

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    const/4 v8, 0x0

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    sget-object v13, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {v12}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;-><init>()V

    const v13, 0x7f0b01f4

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v13, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v11, Landroid/widget/ImageView;

    iget-object v10, v3, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->cardViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v10, :cond_b

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-nez v10, :cond_c

    :cond_b
    move-object v10, v0

    :cond_c
    new-instance v14, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer$bind$1;

    invoke-direct {v14, v3, v0}, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer$bind$1;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    new-instance v15, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer$bind$2;

    invoke-direct {v15, v3, v0}, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer$bind$2;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    sget-object v3, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne v2, v3, :cond_d

    move v8, v9

    :cond_d
    if-ne v2, v3, :cond_e

    move v2, v9

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    :goto_5
    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v1}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    iput-object v0, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    iput-object v13, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->ringView:Lcom/deepalhome/launcher/navigation/FanSpeedRingView;

    iput-object v11, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->iconView:Landroid/widget/ImageView;

    iput-object v10, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    iput-object v14, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object v15, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    iput-boolean v8, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->interactive:Z

    iput-boolean v2, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->observeVehicleState:Z

    iput-boolean v9, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->touchFeedbackEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStepPx:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_f

    goto :goto_6

    :cond_f
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedTapSlopPx:F

    sget-object v2, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v9, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStartThresholdPx:F

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v9, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStepPx:F

    :goto_6
    iget-object v1, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    if-nez v1, :cond_10

    goto :goto_7

    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_11
    iget-object v2, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    iget-boolean v2, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->interactive:Z

    if-nez v2, :cond_13

    goto :goto_7

    :cond_13
    iget-object v2, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    if-nez v2, :cond_14

    move-object v2, v1

    :cond_14
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v4, Landroid/view/GestureDetector;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;

    invoke-direct {v6, v12, v1, v3, v2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;-><init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;Landroid/view/View;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V

    invoke-direct {v4, v5, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v2, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;

    const/4 v5, 0x2

    invoke-direct {v2, v12, v3, v4, v5}, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_7
    invoke-virtual {v12}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    iget-boolean v1, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->observeVehicleState:Z

    if-nez v1, :cond_15

    goto :goto_8

    :cond_15
    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v12, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->airConditionStateChangedListener:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_8
    const v1, 0x7f0b0589

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/render/RenderMode;)Landroid/view/View;
    .locals 3

    iget p0, p0, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;->$r8$classId:I

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

    const/high16 p3, 0x42840000    # 66.0f

    const/4 v0, 0x1

    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01f4

    invoke-virtual {p0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, p2, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p1, 0x1020006

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p3, p3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 2

    iget p0, p0, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b058a

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_5

    iget-boolean p3, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->observeVehicleState:Z

    if-eqz p3, :cond_1

    sget-object p3, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->airConditionStateChangedListener:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    iget-object p3, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

    if-eqz p3, :cond_2

    iget-object v1, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->clearPendingRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p3, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->dismissWindDirectionPopup()V

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    iget-object p3, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

    if-eqz p3, :cond_3

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    iget-object p3, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

    if-eqz p3, :cond_4

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->iconView:Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    :cond_5
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0589

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    goto :goto_1

    :cond_6
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_b

    iget-boolean p3, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->observeVehicleState:Z

    if-eqz p3, :cond_7

    sget-object p3, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->airConditionStateChangedListener:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;

    invoke-static {p3}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_7
    iget-object p3, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    if-eqz p3, :cond_8

    iget-object v1, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->clearPendingRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p3, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_8
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissFanSpeedPopup(Z)V

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    iget-object p3, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    if-eqz p3, :cond_9

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    iget-object p3, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    if-eqz p3, :cond_a

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->ringView:Lcom/deepalhome/launcher/navigation/FanSpeedRingView;

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->iconView:Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    :cond_b
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b058a

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iput-boolean p3, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isNight:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->updateUIMode(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    :cond_2
    return-void

    :pswitch_0
    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0589

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_8

    iput-boolean p3, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->isNight:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->ringView:Lcom/deepalhome/launcher/navigation/FanSpeedRingView;

    if-eqz p1, :cond_5

    iget-boolean p2, p1, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->isNight:Z

    if-ne p2, p3, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean p3, p1, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->isNight:Z

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz p1, :cond_7

    iget-object p2, p1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->capsuleThumbDrawable:Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

    iget-boolean p4, p2, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isNight:Z

    if-ne p4, p3, :cond_6

    goto :goto_3

    :cond_6
    iput-boolean p3, p2, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isNight:Z

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_3
    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->applyPopupBackground()V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->applySeekBarStyle()V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->applyIconTint()V

    :cond_7
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
