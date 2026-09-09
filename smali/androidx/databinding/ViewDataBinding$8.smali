.class public final Landroidx/databinding/ViewDataBinding$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/databinding/ViewDataBinding$8;->$r8$classId:I

    iput-object p2, p0, Landroidx/databinding/ViewDataBinding$8;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 30

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/databinding/ViewDataBinding$8;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding$8;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/koushikdutta/async/Util$8;

    iget-object v0, v0, Lcom/koushikdutta/async/Util$8;->val$sink:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_e

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    move/from16 v29, v6

    goto/16 :goto_8

    :cond_1
    iget-object v8, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v3

    if-gez v11, :cond_0

    invoke-virtual {v8, v7}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-wide v11, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-nez v8, :cond_3

    iput-wide v1, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iget v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    goto :goto_1

    :cond_3
    sub-long v20, v1, v11

    iput-wide v1, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iget-boolean v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    const v12, -0x800001

    const/4 v15, 0x0

    if-eqz v8, :cond_5

    iget v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v16, v8, v11

    if-eqz v16, :cond_4

    iget-object v13, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    float-to-double v9, v8

    iput-wide v9, v13, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iput v11, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_4
    iget-object v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v8, v8, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v8, v8

    iput v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput v15, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iput-boolean v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    move/from16 v29, v6

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_5
    iget v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v8, v8, v11

    if-eqz v8, :cond_6

    iget-object v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v9, v8, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iget v9, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v9, v9

    iget v13, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v14, v13

    const-wide/16 v17, 0x2

    div-long v17, v20, v17

    move-object/from16 v22, v8

    move-wide/from16 v23, v9

    move-wide/from16 v25, v14

    move-wide/from16 v27, v17

    invoke-virtual/range {v22 .. v28}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v8

    iget-object v9, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v10, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    float-to-double v13, v10

    iput-wide v13, v9, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iput v11, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    iget v10, v8, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v13, v10

    iget v8, v8, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    move/from16 v29, v6

    float-to-double v5, v8

    move-object/from16 v22, v9

    move-wide/from16 v23, v13

    move-wide/from16 v25, v5

    move-wide/from16 v27, v17

    invoke-virtual/range {v22 .. v28}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v5

    iget v6, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v6, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const/4 v13, 0x0

    goto :goto_4

    :cond_6
    move/from16 v29, v6

    iget-object v15, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v5, v5

    iget v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v8, v8

    const/4 v13, 0x0

    move-wide/from16 v16, v5

    move-wide/from16 v18, v8

    invoke-virtual/range {v15 .. v21}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v5

    iget v6, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v6, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    :goto_4
    iget v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v6, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iget-object v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v14, v6

    iget-wide v10, v8, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v10, v14, v10

    if-gez v10, :cond_7

    iget-wide v10, v8, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v10, v10

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v10, v5

    iget-wide v14, v8, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double v5, v10, v14

    if-gez v5, :cond_7

    iget-object v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v10, v5, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v5, v10

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput v13, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    goto/16 :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_5
    iget v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v6, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v7, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    iput-boolean v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    sget-object v5, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    new-instance v6, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v6}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v6, v5, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6, v7}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_9

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_9
    const-wide/16 v5, 0x0

    iput-wide v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    const/4 v5, 0x0

    iput-boolean v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    const/4 v9, 0x0

    :goto_6
    iget-object v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v9, v6, :cond_b

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_a

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_7
    if-ltz v6, :cond_d

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_c

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_d
    :goto_8
    add-int/lit8 v6, v29, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_e
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v1, :cond_11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_9
    if-ltz v1, :cond_10

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/koushikdutta/async/Util$8;

    if-nez v1, :cond_12

    new-instance v1, Lcom/koushikdutta/async/Util$8;

    iget-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/core/view/MenuHostHelper;

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/Util$8;-><init>(Landroidx/core/view/MenuHostHelper;)V

    iput-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/koushikdutta/async/Util$8;

    :cond_12
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/koushikdutta/async/Util$8;

    iget-object v1, v0, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    check-cast v1, Landroidx/databinding/ViewDataBinding$8;

    iget-object v0, v0, Lcom/koushikdutta/async/Util$8;->val$bb:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_13
    return-void

    :pswitch_0
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding$8;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar$2;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
