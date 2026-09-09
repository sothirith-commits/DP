.class public final Lcom/google/android/material/carousel/KeylineStateList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final defaultState:Lcom/google/android/material/carousel/KeylineState;

.field public final endShiftRange:F

.field public final endStateSteps:Ljava/util/List;

.field public final endStateStepsInterpolationPoints:[F

.field public final startShiftRange:F

.field public final startStateSteps:Ljava/util/List;

.field public final startStateStepsInterpolationPoints:[F


# direct methods
.method public constructor <init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/ArrayList;Z)[F

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/ArrayList;Z)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    return-void
.end method

.method public static getStateStepInterpolationPoints(FLjava/util/ArrayList;Z)[F
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState;

    if-eqz p2, :cond_0

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v5, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float v5, v4, v5

    :goto_1
    div-float/2addr v5, p0

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    aget v3, v1, v3

    add-float/2addr v3, v5

    :goto_2
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIIF)Lcom/google/android/material/carousel/KeylineState;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p1, Lcom/google/android/material/carousel/KeylineState$Builder;

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    invoke-direct {p1, p0, p6}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FF)V

    const/4 p0, 0x0

    move p2, p0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p6

    if-ge p2, p6, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v4, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    add-float v2, v1, p3

    if-lt p2, p4, :cond_0

    if-gt p2, p5, :cond_0

    const/4 v1, 0x1

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, p0

    :goto_1
    iget v7, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    iget v3, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget-boolean v6, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)V

    iget p6, p6, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr p3, p6

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v8, v0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v8, v2

    iget v9, v0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float v9, v3, v9

    cmpg-float v10, v1, v8

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-gez v10, :cond_0

    invoke-static {v11, v12, v2, v8, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v1

    iget-object v2, v0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    goto :goto_0

    :cond_0
    cmpl-float v2, v1, v9

    if-lez v2, :cond_6

    invoke-static {v12, v11, v9, v3, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v1

    iget-object v2, v0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    aget v8, v0, v6

    move v9, v7

    :goto_1
    if-ge v9, v3, :cond_2

    aget v10, v0, v9

    cmpg-float v13, v1, v10

    if-gtz v13, :cond_1

    add-int/lit8 v0, v9, -0x1

    invoke-static {v12, v11, v8, v10, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v1

    int-to-float v0, v0

    int-to-float v3, v9

    new-array v5, v5, [F

    aput v1, v5, v6

    aput v0, v5, v7

    aput v3, v5, v4

    goto :goto_2

    :cond_1
    add-int/2addr v9, v7

    move v8, v10

    goto :goto_1

    :cond_2
    new-array v5, v5, [F

    fill-array-data v5, :array_0

    :goto_2
    aget v0, v5, v7

    float-to-int v0, v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    aget v1, v5, v4

    float-to-int v1, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    aget v2, v5, v6

    iget v3, v0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    iget v4, v1, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v4, v8, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/carousel/KeylineState$Keyline;

    new-instance v15, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v10, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iget v11, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-static {v10, v11, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v11

    iget v10, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v12, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-static {v10, v12, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v12

    iget v10, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v13, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    invoke-static {v10, v13, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v13

    iget v8, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget v9, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    invoke-static {v8, v9, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v14

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object v10, v15

    move-object v9, v15

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFZF)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v7

    goto :goto_3

    :cond_3
    iget v3, v0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    iget v5, v1, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    invoke-static {v3, v2, v5}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IFI)I

    move-result v3

    iget v5, v0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    invoke-static {v5, v2, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IFI)I

    move-result v1

    new-instance v2, Lcom/google/android/material/carousel/KeylineState;

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    invoke-direct {v2, v0, v4, v3, v1}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/ArrayList;II)V

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keylines being linearly interpolated must have the same number of keylines."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keylines being linearly interpolated must have the same item size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v2, v0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    :goto_4
    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
