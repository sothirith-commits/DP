.class public final Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "zone"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    return-void

    :pswitch_0
    const-string p2, "zone"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    const-string v5, "view"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "item"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "mode"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "environment"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    invoke-direct {v5, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;)V

    sget-object v6, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->LEFT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v6, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    if-eqz v0, :cond_1

    const v6, 0x7f0b059b

    goto :goto_1

    :cond_1
    const v6, 0x7f0b05a8

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v6, "findViewById(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    const v10, 0x7f0b059d

    goto :goto_2

    :cond_2
    const v10, 0x7f0b05aa

    :goto_2
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v10, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v0, 0x7f0b059c

    goto :goto_3

    :cond_3
    const v0, 0x7f0b05a9

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->cardViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v11, v6

    goto :goto_5

    :cond_5
    :goto_4
    move-object v11, v1

    :goto_5
    new-instance v12, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$CompactTemperatureRenderer$bind$1;

    invoke-direct {v12, v4, v1}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$CompactTemperatureRenderer$bind$1;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    new-instance v13, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$CompactTemperatureRenderer$bind$2;

    invoke-direct {v13, v4, v1}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$CompactTemperatureRenderer$bind$2;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    sget-object v4, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne v3, v4, :cond_6

    move v3, v8

    goto :goto_6

    :cond_6
    move v3, v7

    :goto_6
    sget-object v4, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v2}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    const/4 v14, 0x1

    move-object v6, v5

    move-object v7, v9

    move-object v8, v10

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move v13, v3

    invoke-virtual/range {v6 .. v14}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->attachCompactToViews(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZ)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->onAttachedToWindow()V

    const v0, 0x7f0b0585

    invoke-virtual {v1, v0, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    const-string v5, "view"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "item"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "mode"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "environment"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    invoke-direct {v5, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;)V

    sget-object v6, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->LEFT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    if-ne v0, v6, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_8

    const v6, 0x7f0b059e

    goto :goto_8

    :cond_8
    const v6, 0x7f0b05ab

    :goto_8
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v6, "findViewById(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_9

    const v10, 0x7f0b059a

    goto :goto_9

    :cond_9
    const v10, 0x7f0b05a7

    :goto_9
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_a

    const v11, 0x7f0b059f

    goto :goto_a

    :cond_a
    const v11, 0x7f0b05ac

    :goto_a
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_b

    const v12, 0x7f0b05a2

    goto :goto_b

    :cond_b
    const v12, 0x7f0b05af

    :goto_b
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_c

    const v13, 0x7f0b05a3

    goto :goto_c

    :cond_c
    const v13, 0x7f0b05b0

    :goto_c
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v13, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const v14, 0x7f0b05a0

    goto :goto_d

    :cond_d
    const v14, 0x7f0b05ad

    :goto_d
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v14, Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const v15, 0x7f0b05a1

    goto :goto_e

    :cond_e
    const v15, 0x7f0b05ae

    :goto_e
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v15, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    const v16, 0x7f0b05a6

    :goto_f
    move/from16 v7, v16

    goto :goto_10

    :cond_f
    const v16, 0x7f0b05b3

    goto :goto_f

    :goto_10
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v16, v7

    check-cast v16, Landroid/widget/TextView;

    if-eqz v0, :cond_10

    const v7, 0x7f0b05a4

    goto :goto_11

    :cond_10
    const v7, 0x7f0b05b1

    :goto_11
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_11

    const v17, 0x7f0b033c

    :goto_12
    move/from16 v8, v17

    goto :goto_13

    :cond_11
    const v17, 0x7f0b04bd

    goto :goto_12

    :goto_13
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v8

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    const v0, 0x7f0b033d

    goto :goto_14

    :cond_12
    const v0, 0x7f0b04be

    :goto_14
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->cardViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v6, :cond_14

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_13

    goto :goto_15

    :cond_13
    move-object/from16 v19, v6

    goto :goto_16

    :cond_14
    :goto_15
    move-object/from16 v19, v1

    :goto_16
    new-instance v8, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer$bind$1;

    invoke-direct {v8, v4, v1}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer$bind$1;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    new-instance v6, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer$bind$2;

    invoke-direct {v6, v4, v1}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer$bind$2;-><init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V

    sget-object v4, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne v3, v4, :cond_15

    const/16 v21, 0x1

    goto :goto_17

    :cond_15
    const/16 v21, 0x0

    :goto_17
    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v2}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    const/16 v22, 0x1

    move-object v2, v6

    move-object v6, v5

    move-object v3, v7

    move-object v7, v9

    move-object v4, v8

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object v15, v3

    move-object/from16 v16, v17

    move-object/from16 v17, v0

    move-object/from16 v18, v19

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    invoke-virtual/range {v6 .. v22}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->attachToViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZ)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->onAttachedToWindow()V

    const v0, 0x7f0b0585

    invoke-virtual {v1, v0, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/render/RenderMode;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "parent"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mode"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    sget-object p3, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->LEFT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    if-ne p0, p3, :cond_0

    const p0, 0x7f0e00ee

    goto :goto_0

    :cond_0
    const p0, 0x7f0e00ef

    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    const-string v0, "parent"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mode"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    sget-object p3, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->LEFT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    if-ne p0, p3, :cond_1

    const p0, 0x7f0e00f0

    goto :goto_1

    :cond_1
    const p0, 0x7f0e00f1

    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 1

    iget p0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0585

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->onDetachedFromWindow()V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->detachFromViews()V

    :cond_1
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0585

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->onDetachedFromWindow()V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->detachFromViews()V

    :cond_3
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 8

    iget p0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0585

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->updateUIMode(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p3, :cond_2

    const p2, 0x7f06038c

    goto :goto_1

    :cond_2
    const p2, 0x7f06038b

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const p2, 0x7f0b059d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const p2, 0x7f0b05aa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0585

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    if-eqz p2, :cond_5

    check-cast p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_6

    invoke-virtual {p0, p3}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->updateUIMode(Z)V

    goto/16 :goto_8

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p3, :cond_7

    const p2, 0x7f06038c

    goto :goto_4

    :cond_7
    const p2, 0x7f06038b

    :goto_4
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    if-eqz p3, :cond_8

    const p2, 0x7f080190

    goto :goto_5

    :cond_8
    const p2, 0x7f08018f

    :goto_5
    if-eqz p3, :cond_9

    const p3, 0x7f08024b

    goto :goto_6

    :cond_9
    const p3, 0x7f08024a

    :goto_6
    const p4, 0x7f0b05a3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const p4, 0x7f0b05a0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const p4, 0x7f0b05a1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const p4, 0x7f0b05a6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const p4, 0x7f0b05b0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const p4, 0x7f0b05ad

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const p4, 0x7f0b05ae

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const p4, 0x7f0b05b3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_a
    :goto_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :cond_b
    const p0, 0x7f0b033c

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    const p0, 0x7f0b04bd

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_d
    const p0, 0x7f0b033d

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    const p0, 0x7f0b04be

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
