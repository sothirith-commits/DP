.class public final Lcom/deepalhome/launcher/util/GestureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAiwaysMultiFingerSplit:Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public final mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

.field public final mMaximumFlingVelocity:I

.field public final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;)V
    .locals 3

    const-string v0, "mListener"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lme/wcy/lrcview/LrcView$4;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lme/wcy/lrcview/LrcView$4;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance p2, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;-><init>(Lcom/deepalhome/launcher/util/GestureHelper;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mAiwaysMultiFingerSplit:Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mMaximumFlingVelocity:I

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/deepalhome/launcher/util/GestureHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    iget-object v5, v0, Lcom/deepalhome/launcher/util/GestureHelper;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    iget-object v6, v0, Lcom/deepalhome/launcher/util/GestureHelper;->mAiwaysMultiFingerSplit:Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->this$0:Lcom/deepalhome/launcher/util/GestureHelper;

    iget-object v8, v7, Lcom/deepalhome/launcher/util/GestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v7, Lcom/deepalhome/launcher/util/GestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v8, v7, Lcom/deepalhome/launcher/util/GestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eq v8, v11, :cond_2

    if-eq v8, v9, :cond_2

    move v12, v10

    goto :goto_2

    :cond_2
    move v12, v10

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_3

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v10, v14

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v12, v14

    add-int/2addr v13, v4

    goto :goto_1

    :cond_3
    int-to-float v13, v8

    div-float/2addr v10, v13

    div-float/2addr v12, v13

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    if-eqz v13, :cond_20

    if-eq v13, v4, :cond_1e

    iget-object v14, v7, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    if-eq v13, v11, :cond_17

    const/4 v15, 0x5

    if-eq v13, v15, :cond_15

    const/4 v15, 0x6

    if-eq v13, v15, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v8, -0x1

    if-eq v13, v11, :cond_5

    if-ne v13, v9, :cond_6

    :cond_5
    iput v10, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusX:F

    iput v12, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusY:F

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    iput-object v10, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mStartMutiEvent:Landroid/view/MotionEvent;

    :cond_6
    if-eq v8, v11, :cond_7

    if-eq v8, v9, :cond_7

    :goto_3
    move/from16 v17, v2

    goto/16 :goto_e

    :cond_7
    iget-object v10, v7, Lcom/deepalhome/launcher/util/GestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v7, Lcom/deepalhome/launcher/util/GestureHelper;->mMaximumFlingVelocity:I

    int-to-float v7, v7

    const/16 v12, 0x3e8

    invoke-virtual {v10, v12, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    invoke-virtual {v10, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    if-ne v13, v15, :cond_8

    :goto_5
    add-int/2addr v13, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v16

    add-float v12, v16, v12

    invoke-virtual {v10, v15}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v15

    add-float/2addr v7, v15

    goto :goto_5

    :cond_9
    int-to-float v8, v8

    div-float/2addr v12, v8

    div-float/2addr v7, v8

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->clear()V

    iget-object v6, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastEvent:Landroid/view/MotionEvent;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_6
    if-ge v10, v8, :cond_a

    int-to-float v13, v13

    invoke-virtual {v6, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    add-float v13, v16, v13

    float-to-int v13, v13

    int-to-float v15, v15

    invoke-virtual {v6, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    add-float v15, v16, v15

    float-to-int v15, v15

    add-int/2addr v10, v4

    goto :goto_6

    :cond_a
    div-int/2addr v13, v8

    div-int/2addr v15, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_7
    if-ge v8, v6, :cond_b

    int-to-float v10, v10

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    add-float v10, v17, v10

    float-to-int v10, v10

    int-to-float v3, v3

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    add-float v3, v17, v3

    float-to-int v3, v3

    add-int/2addr v8, v4

    goto :goto_7

    :cond_b
    div-int/2addr v10, v6

    div-int/2addr v3, v6

    const/16 v8, 0x32

    if-ne v6, v11, :cond_11

    sub-int v11, v13, v10

    if-lez v11, :cond_c

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v17

    int-to-float v4, v8

    cmpl-float v4, v17, v4

    if-lez v4, :cond_c

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v17, v15, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v4, v9, :cond_c

    sget-object v3, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->DOUBLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    int-to-float v4, v13

    int-to-float v6, v15

    invoke-interface {v14, v3, v4, v6}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z

    move-result v3

    :goto_8
    move/from16 v17, v2

    goto/16 :goto_f

    :cond_c
    if-gez v11, :cond_d

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v9, v8

    cmpl-float v4, v4, v9

    if-lez v4, :cond_d

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v9, v15, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v4, v9, :cond_d

    sget-object v3, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->DOUBLE_GINGER_RIGHT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    int-to-float v4, v13

    int-to-float v6, v15

    invoke-interface {v14, v3, v4, v6}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z

    move-result v3

    goto :goto_8

    :cond_d
    sub-int v4, v15, v3

    if-lez v4, :cond_e

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move/from16 v17, v2

    int-to-float v2, v8

    cmpl-float v2, v9, v2

    if-lez v2, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v2, v9, :cond_f

    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->DOUBLE_GINGER_UP_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    int-to-float v3, v13

    int-to-float v4, v15

    invoke-interface {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z

    move-result v3

    goto/16 :goto_f

    :cond_e
    move/from16 v17, v2

    :cond_f
    if-gez v4, :cond_10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v9, v8

    cmpl-float v2, v2, v9

    if-lez v2, :cond_10

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v2, v4, :cond_10

    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->DOUBLE_GINGER_DOWN_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    int-to-float v3, v13

    int-to-float v4, v15

    invoke-interface {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z

    move-result v3

    goto/16 :goto_f

    :cond_10
    const/4 v2, 0x3

    goto :goto_9

    :cond_11
    move/from16 v17, v2

    move v2, v9

    :goto_9
    if-ne v6, v2, :cond_21

    sub-int v2, v13, v10

    if-lez v2, :cond_12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v6, v8

    cmpl-float v4, v4, v6

    if-lez v4, :cond_12

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v6, v15, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v4, v6, :cond_12

    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->THREE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    int-to-float v3, v13

    int-to-float v4, v15

    invoke-interface {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z

    move-result v3

    goto/16 :goto_f

    :cond_12
    if-gez v2, :cond_13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v6, v8

    cmpl-float v4, v4, v6

    if-lez v4, :cond_13

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v6, v15, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v4, v6, :cond_13

    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->THREE_GINGER_RIGHT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    int-to-float v3, v13

    int-to-float v4, v15

    invoke-interface {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z

    move-result v3

    goto/16 :goto_f

    :cond_13
    sub-int v3, v15, v3

    if-lez v3, :cond_14

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v6, v8

    cmpl-float v4, v4, v6

    if-lez v4, :cond_14

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v4, v6, :cond_14

    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->THREE_GINGER_UP_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    int-to-float v3, v13

    int-to-float v4, v15

    invoke-interface {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z

    move-result v3

    goto/16 :goto_f

    :cond_14
    if-gez v3, :cond_21

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v6, v8

    cmpl-float v4, v4, v6

    if-lez v4, :cond_21

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v3, v2, :cond_21

    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->THREE_GINGER_DOWN_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    int-to-float v3, v13

    int-to-float v4, v15

    invoke-interface {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z

    move-result v3

    goto/16 :goto_f

    :cond_15
    move/from16 v17, v2

    if-eq v8, v11, :cond_16

    const/4 v2, 0x3

    if-eq v8, v2, :cond_16

    goto :goto_a

    :cond_16
    iput v10, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusX:F

    iput v12, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusY:F

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mStartMutiEvent:Landroid/view/MotionEvent;

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastEvent:Landroid/view/MotionEvent;

    :goto_a
    const/4 v3, 0x1

    goto/16 :goto_f

    :cond_17
    move/from16 v17, v2

    if-eq v8, v11, :cond_18

    const/4 v2, 0x3

    if-eq v8, v2, :cond_18

    goto/16 :goto_e

    :cond_18
    iget v2, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusX:F

    sub-float/2addr v2, v10

    iget v3, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusY:F

    sub-float/2addr v3, v12

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-gez v2, :cond_19

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1d

    :cond_19
    iget-object v2, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mStartMutiEvent:Landroid/view/MotionEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_b
    if-ge v4, v3, :cond_1a

    int-to-float v7, v7

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v9, v7

    float-to-int v7, v9

    int-to-float v8, v8

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    const/4 v9, 0x1

    add-int/2addr v4, v9

    goto :goto_b

    :cond_1a
    div-int/2addr v7, v3

    div-int/2addr v8, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_c
    if-ge v3, v2, :cond_1b

    int-to-float v4, v4

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v4

    float-to-int v4, v8

    int-to-float v7, v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v8, v7

    float-to-int v7, v8

    const/4 v8, 0x1

    add-int/2addr v3, v8

    goto :goto_c

    :cond_1b
    div-int/2addr v4, v2

    div-int/2addr v7, v2

    if-ne v2, v11, :cond_1c

    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    invoke-interface {v14}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipProcess()Z

    goto :goto_d

    :cond_1c
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    invoke-interface {v14}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->mutiFingerSlipProcess()Z

    :cond_1d
    :goto_d
    iput v10, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusX:F

    iput v12, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusY:F

    goto :goto_a

    :cond_1e
    move/from16 v17, v2

    iget-object v2, v7, Lcom/deepalhome/launcher/util/GestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, v7, Lcom/deepalhome/launcher/util/GestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1f
    iget-object v2, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_21

    iput-object v3, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastEvent:Landroid/view/MotionEvent;

    goto :goto_e

    :cond_20
    move/from16 v17, v2

    iput v10, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusX:F

    iput v12, v6, Lcom/deepalhome/launcher/util/GestureHelper$AiwaysMultiFingerSplit;->mLastFocusY:F

    :cond_21
    :goto_e
    const/4 v3, 0x0

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_23

    :cond_22
    iget-object v0, v0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {v0, v1}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->onUp(Landroid/view/MotionEvent;)Z

    :cond_23
    or-int v0, v17, v5

    or-int/2addr v0, v3

    return v0
.end method
