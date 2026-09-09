.class public Lcom/kyleduo/switchbutton/SwitchButton;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field public static final CHECKED_PRESSED_STATE:[I

.field public static final UNCHECKED_PRESSED_STATE:[I


# instance fields
.field public mAnimationDuration:J

.field public mBackColor:Landroid/content/res/ColorStateList;

.field public mBackDrawable:Landroid/graphics/drawable/Drawable;

.field public mBackHeight:I

.field public mBackRadius:F

.field public final mBackRectF:Landroid/graphics/RectF;

.field public mBackWidth:I

.field public mCatch:Z

.field public mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public final mClickTimeout:I

.field public mCurrBackColor:I

.field public mCurrThumbColor:I

.field public mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

.field public mDrawDebugRect:Z

.field public mFadeBack:Z

.field public mIsBackUseDrawable:Z

.field public mIsThumbUseDrawable:Z

.field public mLastX:F

.field public mNextBackColor:I

.field public mNextBackDrawable:Landroid/graphics/drawable/Drawable;

.field public mOffLayout:Landroid/text/StaticLayout;

.field public mOffTextColor:I

.field public mOnLayout:Landroid/text/StaticLayout;

.field public mOnTextColor:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPresentThumbRectF:Landroid/graphics/RectF;

.field public mProgress:F

.field public final mProgressAnimator:Landroid/animation/ValueAnimator;

.field public mReady:Z

.field public final mRectPaint:Landroid/graphics/Paint;

.field public mRestoring:Z

.field public final mSafeRectF:Landroid/graphics/RectF;

.field public mStartX:F

.field public mStartY:F

.field public mTextAdjust:I

.field public mTextExtra:I

.field public mTextHeight:F

.field public mTextOff:Ljava/lang/CharSequence;

.field public final mTextOffRectF:Landroid/graphics/RectF;

.field public mTextOn:Ljava/lang/CharSequence;

.field public final mTextOnRectF:Landroid/graphics/RectF;

.field public final mTextPaint:Landroid/text/TextPaint;

.field public mTextThumbInset:I

.field public mTextWidth:F

.field public mThumbColor:Landroid/content/res/ColorStateList;

.field public mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field public mThumbHeight:I

.field public final mThumbMargin:Landroid/graphics/RectF;

.field public mThumbRadius:F

.field public mThumbRangeRatio:F

.field public final mThumbRectF:Landroid/graphics/RectF;

.field public mThumbWidth:I

.field public mTintColor:I

.field public final mTouchSlop:I

.field public mUnsetPressedState:Landroidx/appcompat/widget/Toolbar$2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x10100a0

    const v1, 0x101009e

    const v2, 0x10100a7

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    const v0, -0x10100a0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    invoke-direct/range {p0 .. p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    iput-boolean v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    iput-boolean v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    iput-boolean v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0xfa

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/kyleduo/switchbutton/SwitchButton$1;

    invoke-direct {v7, v3, v0}, Lcom/kyleduo/switchbutton/SwitchButton$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    if-nez v1, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton:[I

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    :goto_0
    const/high16 v9, -0x40800000    # -1.0f

    if-eqz v8, :cond_1

    const/16 v12, 0xb

    invoke-virtual {v8, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    const/16 v14, 0xd

    invoke-virtual {v8, v14, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/16 v14, 0xf

    invoke-virtual {v8, v14, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    const/16 v15, 0x10

    invoke-virtual {v8, v15, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    const/16 v7, 0x11

    invoke-virtual {v8, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    const/16 v3, 0xe

    invoke-virtual {v8, v3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const/16 v6, 0x14

    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/16 v11, 0xc

    invoke-virtual {v8, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    const/16 v4, 0x12

    invoke-virtual {v8, v4, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v10, 0x3

    invoke-virtual {v8, v10, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    const/16 v5, 0x13

    move-object/from16 v18, v2

    const v2, 0x3fe66666    # 1.8f

    invoke-virtual {v8, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move/from16 v16, v2

    const/16 v2, 0xfa

    const/4 v5, 0x0

    invoke-virtual {v8, v5, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    const/4 v5, 0x4

    move/from16 v17, v2

    const/4 v2, 0x1

    invoke-virtual {v8, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v2, 0x15

    move/from16 v19, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v20, v2

    const/4 v2, 0x7

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    const/16 v2, 0x9

    move-object/from16 v22, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move/from16 v23, v2

    const/4 v2, 0x6

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move/from16 v24, v2

    const/4 v2, 0x5

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v25, v17

    move-object/from16 v3, v18

    move/from16 v8, v24

    move/from16 v18, v4

    move/from16 v17, v9

    move-object v15, v10

    move v14, v11

    move/from16 v10, v20

    move-object/from16 v4, v22

    move v9, v2

    move v11, v6

    move/from16 v6, v19

    move-object/from16 v2, v21

    move/from16 v19, v16

    move/from16 v16, v5

    move-object v5, v13

    move-object v13, v12

    move v12, v7

    move/from16 v7, v23

    goto :goto_1

    :cond_1
    const/16 v2, 0xfa

    const v3, 0x3fe66666    # 1.8f

    move/from16 v25, v2

    move/from16 v19, v3

    move/from16 v17, v9

    move/from16 v18, v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_1
    move/from16 v20, v6

    if-nez v1, :cond_2

    move/from16 v21, v12

    move-object/from16 v22, v15

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move/from16 v21, v12

    const v12, 0x10100da

    move-object/from16 v22, v15

    const v15, 0x10100e5

    filled-new-array {v12, v15}, [I

    move-result-object v12

    invoke-virtual {v6, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v1, v12, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v15}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_3
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setClickable(Z)V

    :goto_3
    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    iput v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    iput v8, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    iput v9, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextAdjust:I

    iput-object v13, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    iput v10, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    if-nez v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v4, 0x1010435

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v2, Landroid/util/TypedValue;->data:I

    goto :goto_5

    :cond_5
    const v1, 0x327fc2

    :goto_5
    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    goto :goto_6

    :cond_6
    const/4 v5, 0x1

    :goto_6
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_7

    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    :cond_7
    float-to-double v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    float-to-double v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    iput-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v10, v22

    iput-object v10, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_8

    move v3, v5

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v3, :cond_9

    if-nez v10, :cond_9

    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    :cond_9
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move/from16 v2, v20

    move/from16 v7, v21

    move/from16 v14, v26

    move/from16 v15, v27

    invoke-virtual {v1, v14, v7, v15, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v3, v19

    if-ltz v1, :cond_a

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_8

    :cond_a
    move v5, v3

    :goto_8
    iput v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    move/from16 v4, v18

    iput v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    move/from16 v9, v17

    iput v9, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move/from16 v1, v25

    int-to-long v3, v1

    iput-wide v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    move/from16 v5, v16

    iput-boolean v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    :cond_b
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic access$000(Lcom/kyleduo/switchbutton/SwitchButton;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    return-void
.end method

.method private getProgress()F
    .locals 0

    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    return p0
.end method

.method private getStatusBasedOnPos()Z
    .locals 1

    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setProgress(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final animateToState(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-wide v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    new-array p1, v2, [F

    aput p0, p1, v1

    const/high16 p0, 0x3f800000    # 1.0f

    aput p0, p1, v0

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    new-array p1, v2, [F

    aput p0, p1, v1

    const/4 p0, 0x0

    aput p0, p1, v0

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final drawableStateChanged()V
    .locals 5

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    sget-object v1, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    sget-object v2, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    invoke-virtual {v3, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    :cond_2
    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    :cond_5
    :goto_3
    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getBackRadius()F
    .locals 0

    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    return p0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getThumbHeight()F
    .locals 0

    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    int-to-float p0, p0

    return p0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getThumbRadius()F
    .locals 0

    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    return p0
.end method

.method public getThumbRangeRatio()F
    .locals 0

    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    return p0
.end method

.method public getThumbWidth()F
    .locals 0

    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    int-to-float p0, p0

    return p0
.end method

.method public getTintColor()I
    .locals 0

    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    :cond_0
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    const/high16 v1, 0x437f0000    # 255.0f

    const/16 v2, 0xff

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    rsub-int v0, v4, 0xff

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_5
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    goto :goto_3

    :cond_7
    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    :goto_3
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    mul-int/2addr v5, v4

    div-int/2addr v5, v2

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v6, v5, v7, v8, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    rsub-int v0, v4, 0xff

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    mul-int/2addr v4, v0

    div-int/2addr v4, v2

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_4
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    :goto_5
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v3

    float-to-double v3, v3

    cmpl-double v3, v3, v5

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    :goto_6
    const/4 v4, 0x0

    if-eqz v0, :cond_e

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    cmpl-double v7, v7, v9

    const/high16 v8, 0x40800000    # 4.0f

    if-ltz v7, :cond_b

    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v7

    mul-float/2addr v7, v8

    const/high16 v8, 0x40400000    # 3.0f

    sub-float/2addr v7, v8

    goto :goto_7

    :cond_b
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v7

    float-to-double v9, v7

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    cmpg-double v7, v9, v11

    if-gez v7, :cond_c

    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v7

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    goto :goto_7

    :cond_c
    move v7, v4

    :goto_7
    mul-float/2addr v7, v1

    float-to-int v1, v7

    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v7

    float-to-double v7, v7

    cmpl-double v7, v7, v5

    if-lez v7, :cond_d

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    goto :goto_8

    :cond_d
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    :goto_8
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    mul-int/2addr v8, v1

    div-int/2addr v8, v2

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-virtual {v1, v8, v2, v9, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v1, v7

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_f
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_9
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v1, "#AA0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v1, "#0000FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v11, v1, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->right:F

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v11

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v1, "#00CC00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v5

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    goto :goto_a

    :cond_10
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    :goto_a
    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_11
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    cmpl-float v3, v0, v1

    if-nez v3, :cond_5

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    :goto_3
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_5

    :cond_7
    move v2, v1

    :goto_5
    cmpl-float v3, v0, v1

    if-nez v3, :cond_9

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    goto :goto_7

    :cond_9
    :goto_6
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    :goto_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    :cond_a
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    cmpl-float v3, v3, v1

    const v4, 0x3fe66666    # 1.8f

    if-nez v3, :cond_b

    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    :cond_b
    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-ne p1, v6, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-eqz v4, :cond_d

    int-to-float v4, v4

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    mul-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    sub-int v8, v4, v8

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-float v4, v4

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v4

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v9, v8

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    if-gez v8, :cond_c

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    :cond_c
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v8, v4

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v4, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    int-to-float p1, p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_d

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    :cond_d
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-nez p1, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr p1, v4

    int-to-float p1, p1

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr p1, v4

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr p1, v4

    float-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int p1, v7

    if-gez p1, :cond_e

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    goto/16 :goto_8

    :cond_e
    int-to-float v4, p1

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    div-float v7, v4, v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v8

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    if-gez v4, :cond_f

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    goto/16 :goto_8

    :cond_f
    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    sub-int/2addr p1, v4

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    add-int/2addr p1, v4

    sub-int/2addr v2, p1

    if-lez v2, :cond_10

    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    :cond_10
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-gez p1, :cond_15

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    goto/16 :goto_8

    :cond_11
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-nez p1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v3

    float-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int p1, v7

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    :cond_12
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_13

    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    :cond_13
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    int-to-float p1, p1

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    mul-float/2addr p1, v4

    float-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int p1, v7

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v7, v4

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    int-to-float v4, v4

    add-float/2addr v7, v4

    sub-float/2addr v2, v7

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    int-to-float p1, p1

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, p1

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    if-gez v4, :cond_14

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr p1, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int p1, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_15
    :goto_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    :cond_16
    if-ne p2, v6, :cond_1a

    iget p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-eqz p2, :cond_17

    int-to-float p2, p2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v3

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, v2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    iput p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    int-to-float p2, p2

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    iput p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, v2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr p2, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr p2, v2

    int-to-float v2, p1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_17

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    :cond_17
    iget p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-nez p2, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v2, p2

    iget-object p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    add-float/2addr p2, v2

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    iput p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    if-gez p2, :cond_18

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    goto/16 :goto_9

    :cond_18
    int-to-float p2, p2

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    iput p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    :cond_19
    iget p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-gez p2, :cond_1e

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    goto :goto_9

    :cond_1a
    iget p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-nez p2, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v3

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    iput p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    :cond_1b
    iget p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    int-to-float p2, p2

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, v1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    iput p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    if-gez p2, :cond_1c

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    goto :goto_9

    :cond_1c
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-lez p1, :cond_1d

    iget p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    iget p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    :cond_1d
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    iget p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_1e
    :goto_9
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    iget-object v0, p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_6

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v0

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    sub-float v5, p1, v5

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    invoke-direct {p0, v5}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    iget-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    if-nez p1, :cond_b

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    :cond_2
    const/4 p1, 0x0

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_b

    return v1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    iput-boolean v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    goto/16 :goto_2

    :cond_6
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float p1, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getStatusBasedOnPos()Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_8

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mUnsetPressedState:Landroidx/appcompat/widget/Toolbar$2;

    if-nez p1, :cond_9

    new-instance p1, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v0, 0x1a

    invoke-direct {p1, v0, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mUnsetPressedState:Landroidx/appcompat/widget/Toolbar$2;

    :cond_9
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mUnsetPressedState:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mUnsetPressedState:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar$2;->run()V

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_b
    :goto_2
    return v4

    :cond_c
    :goto_3
    return v1
.end method

.method public final performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result p0

    return p0
.end method

.method public setAnimationDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackDrawableRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackRadius(F)V
    .locals 0

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setCheckedNoEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setDrawDebugRect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setTextAdjust(I)V
    .locals 0

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextAdjust:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextExtra(I)V
    .locals 0

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextThumbInset(I)V
    .locals 0

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbDrawableRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method

.method public setThumbRadius(F)V
    .locals 0

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    iget-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbRangeRatio(F)V
    .locals 0

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {p1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {p1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setup()V
    .locals 9

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-eqz v1, :cond_8

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    :cond_1
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    const/4 v6, 0x1

    if-gt v1, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v8, v7

    sub-int/2addr v1, v3

    add-int/2addr v1, v6

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float v3, v1, v8

    :goto_0
    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    if-gt v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v7, v1

    sub-int/2addr v0, v2

    add-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float v1, v0, v7

    :goto_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    invoke-virtual {v3, v1, v0, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v4

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v1, v7

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    invoke-virtual {v0, v2, v3, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    add-float/2addr v0, v1

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextAdjust:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextAdjust:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    iput-boolean v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    :cond_8
    :goto_2
    return-void
.end method
