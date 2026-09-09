.class public Lme/wcy/lrcview/LrcView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final hideTimelineRunnable:Lme/wcy/lrcview/LrcView$5;

.field public isFling:Z

.field public isIntroAlignTop:Z

.field public isLayoutFrozen:Z

.field public isMultiTouch:Z

.field public isShowTimeline:Z

.field public isTouching:Z

.field public mAnchorLine:I

.field public final mAnimationDuration:J

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public final mAutoPlayOnDrag:Z

.field public mBlurEnabled:Z

.field public final mBlurFilters:[Landroid/graphics/BlurMaskFilter;

.field public mBlurStrategy:Lme/wcy/lrcview/BlurStrategy;

.field public mBoldEnabled:Z

.field public mCurrentLine:I

.field public mCurrentTextColor:I

.field public mCurrentTextSize:F

.field public mDefaultLabel:Ljava/lang/String;

.field public final mDividerHeight:F

.field public mDrawHeight:I

.field public final mDrawableWidth:I

.field public mFlag:Ljava/lang/Object;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mInitialTime:J

.field public mLastLayoutHeight:I

.field public mLastLayoutWidth:I

.field public mLayoutMetricsCacheCursor:I

.field public final mLayoutMetricsCaches:[Lme/wcy/lrcview/LrcView$LayoutMetricsCache;

.field public mLineY:[F

.field public final mLrcEntryList:Ljava/util/ArrayList;

.field public final mLrcPadding:F

.field public final mLrcPaint:Landroid/text/TextPaint;

.field public mMaxBlurRadius:F

.field public final mMeasurePaint:Landroid/text/TextPaint;

.field public mNormalTextColor:I

.field public mNormalTextSize:F

.field public mOffset:F

.field public mOnLineRenderInfoListener:Lme/wcy/lrcview/LrcView$OnLineRenderInfoListener;

.field public mOnLyricProgressListener:Lme/wcy/lrcview/LrcView$OnLyricProgressListener;

.field public mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

.field public final mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field public final mScroller:Landroid/widget/Scroller;

.field public final mShowTimeline:Z

.field public mTextGravity:I

.field public final mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field public final mTimePaint:Landroid/text/TextPaint;

.field public mTimeTextColor:I

.field public final mTimeTextWidth:I

.field public mTimelineColor:I

.field public mTimelineTextColor:I

.field public final timelineKeepTimeMs:J


# direct methods
.method public static $r8$lambda$PlEmEIYs2pKLk2h90Vp3ePb5ZkM(Lme/wcy/lrcview/LrcView;J)V
    .locals 3

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lme/wcy/lrcview/LrcView;->findShowLine(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->shouldAlignTop(I)Z

    move-result p2

    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->notifyLineHeightChanged()V

    :cond_2
    iget-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    iput-boolean p2, p0, Lme/wcy/lrcview/LrcView;->isIntroAlignTop:Z

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getTopOffset()F

    move-result p1

    iget v1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->endAnimation()V

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    iget-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isIntroAlignTop:Z

    if-eqz p1, :cond_8

    :cond_7
    iget p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    iget-wide v1, p0, Lme/wcy/lrcview/LrcView;->mAnimationDuration:J

    invoke-virtual {p0, p1, v1, v2}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    :cond_8
    :goto_1
    iput-boolean p2, p0, Lme/wcy/lrcview/LrcView;->isIntroAlignTop:Z

    if-eqz v0, :cond_9

    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mOnLyricProgressListener:Lme/wcy/lrcview/LrcView$OnLyricProgressListener;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getCurrentLyric()Ljava/lang/String;

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getNextLyric()Ljava/lang/String;

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getThirdLyric()Ljava/lang/String;

    check-cast p1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;

    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    iget-object p0, p1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->sendLyricToHUD()V

    :cond_9
    :goto_2
    return-void
.end method

.method public static synthetic $r8$lambda$QE7k-VczTvWeAOdmR-0LrDKFUmU(Lme/wcy/lrcview/LrcView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lme/wcy/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->reset()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    new-instance v1, Lme/wcy/lrcview/LrcView$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, Lme/wcy/lrcview/LrcView$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mMeasurePaint:Landroid/text/TextPaint;

    const/4 p1, 0x6

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v2, [Lme/wcy/lrcview/LrcView$LayoutMetricsCache;

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_0

    new-instance v5, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;

    invoke-direct {v5, v0}, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;-><init>(I)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lme/wcy/lrcview/LrcView;->mLayoutMetricsCaches:[Lme/wcy/lrcview/LrcView$LayoutMetricsCache;

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mLayoutMetricsCacheCursor:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lme/wcy/lrcview/LrcView;->mInitialTime:J

    const/4 v2, -0x1

    iput v2, p0, Lme/wcy/lrcview/LrcView;->mLastLayoutWidth:I

    iput v2, p0, Lme/wcy/lrcview/LrcView;->mLastLayoutHeight:I

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mDrawHeight:I

    iput v2, p0, Lme/wcy/lrcview/LrcView;->mAnchorLine:I

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->mAutoPlayOnDrag:Z

    iput-boolean v1, p0, Lme/wcy/lrcview/LrcView;->mShowTimeline:Z

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->mBoldEnabled:Z

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->mBlurEnabled:Z

    const/4 v3, 0x0

    iput v3, p0, Lme/wcy/lrcview/LrcView;->mMaxBlurRadius:F

    sget-object v4, Lme/wcy/lrcview/BlurStrategy;->PIXEL:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    iput-object v4, p0, Lme/wcy/lrcview/LrcView;->mBlurStrategy:Lme/wcy/lrcview/BlurStrategy;

    const/16 v4, 0xd

    new-array v5, v4, [Landroid/graphics/BlurMaskFilter;

    iput-object v5, p0, Lme/wcy/lrcview/LrcView;->mBlurFilters:[Landroid/graphics/BlurMaskFilter;

    new-instance v5, Lme/wcy/lrcview/LrcView$4;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lme/wcy/lrcview/LrcView$4;-><init>(ILjava/lang/Object;)V

    new-instance v6, Lme/wcy/lrcview/LrcView$5;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0}, Lme/wcy/lrcview/LrcView$5;-><init>(ILjava/lang/Object;)V

    iput-object v6, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lme/wcy/lrcview/R$styleable;->LrcView:[I

    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700d6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/16 v8, 0xf

    invoke-virtual {p2, v8, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/16 v7, 0xa

    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_1

    iget v6, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    iput v6, p0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mDividerHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0c0026

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lme/wcy/lrcview/LrcView;->mAnimationDuration:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    int-to-long v6, p1

    :cond_2
    iput-wide v6, p0, Lme/wcy/lrcview/LrcView;->mAnimationDuration:J

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0600a3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/16 v6, 0x9

    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mNormalTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0600a2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 v6, 0x5

    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0600a6

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/16 v6, 0x14

    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mTimelineTextColor:I

    const/4 p1, 0x7

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v6, 0x7f1302af

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    const/16 p1, 0xb

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mLrcPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0600a5

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/16 v6, 0x12

    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mTimelineColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0700d9

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/16 v6, 0x13

    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    const/16 v6, 0xc

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080191

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_4
    iput-object v6, p0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600a4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lme/wcy/lrcview/LrcView;->mTimeTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/16 v7, 0x11

    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/16 v7, 0xe

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, p0, Lme/wcy/lrcview/LrcView;->mTextGravity:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lme/wcy/lrcview/LrcView;->mAnchorLine:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lme/wcy/lrcview/LrcView;->mAutoPlayOnDrag:Z

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lme/wcy/lrcview/LrcView;->mShowTimeline:Z

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lme/wcy/lrcview/LrcView;->mBlurEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700d5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/16 v4, 0x8

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lme/wcy/lrcview/LrcView;->mMaxBlurRadius:F

    const/4 v2, 0x4

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lme/wcy/lrcview/LrcView;->mBoldEnabled:Z

    iget v2, p0, Lme/wcy/lrcview/LrcView;->mMaxBlurRadius:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    iput v3, p0, Lme/wcy/lrcview/LrcView;->mMaxBlurRadius:F

    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0700d4

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lme/wcy/lrcview/LrcView;->mDrawableWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0c0027

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v2, p2

    iput-wide v2, p0, Lme/wcy/lrcview/LrcView;->timelineKeepTimeMs:J

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0700d8

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lme/wcy/lrcview/LrcView;->mTimeTextWidth:I

    iget-object p2, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v2, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v2, p0, Lme/wcy/lrcview/LrcView;->mBoldEnabled:Z

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public static synthetic access$000(Lme/wcy/lrcview/LrcView;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getFlag()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lme/wcy/lrcview/LrcView;)I
    .locals 0

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getCenterLine()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Lme/wcy/lrcview/LrcView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    return-void
.end method

.method private getAnchorY()F
    .locals 4

    iget v0, p0, Lme/wcy/lrcview/LrcView;->mAnchorLine:I

    const/high16 v1, 0x40000000    # 2.0f

    if-ltz v0, :cond_1

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    if-eqz v0, :cond_1

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lme/wcy/lrcview/LrcView;->mAnchorLine:I

    iget-object v3, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    aget p0, p0, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getDrawHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    return p0
.end method

.method private getCenterLine()I
    .locals 7

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    iget-object v2, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    array-length v0, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getDrawHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v3, v1

    :goto_0
    if-gt v3, v2, :cond_4

    add-int v4, v3, v2

    ushr-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    aget v5, v5, v4

    cmpg-float v6, v5, v0

    if-gez v6, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    cmpl-float v2, v5, v0

    if-lez v2, :cond_3

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    if-gtz v3, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    array-length v1, p0

    if-lt v3, v1, :cond_6

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_6
    add-int/lit8 v1, v3, -0x1

    aget v2, p0, v1

    sub-float v2, v0, v2

    aget p0, p0, v3

    sub-float/2addr p0, v0

    cmpg-float p0, v2, p0

    if-gez p0, :cond_7

    move v3, v1

    :cond_7
    return v3

    :cond_8
    :goto_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v1

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    iget v4, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    invoke-virtual {p0, v1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v0

    if-gez v5, :cond_9

    move v3, v1

    move v0, v4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    return v3
.end method

.method private getDrawHeight()I
    .locals 1

    iget v0, p0, Lme/wcy/lrcview/LrcView;->mDrawHeight:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getFlag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mFlag:Ljava/lang/Object;

    return-object p0
.end method

.method private getLrcWidth()F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lme/wcy/lrcview/LrcView;->mLrcPadding:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getTopOffset()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->getTopOffset(I)F

    move-result p0

    return p0
.end method

.method private setFlag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mFlag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyTextSize()V
    .locals 3

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v1, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    iget v2, p0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isLayoutFrozen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final clearLayoutMetricsCache()V
    .locals 6

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLayoutMetricsCaches:[Lme/wcy/lrcview/LrcView$LayoutMetricsCache;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const/4 v5, -0x1

    iput v5, v4, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->lineIndex:I

    iput v5, v4, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->widthPx:I

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v4, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->textSizePx:F

    iput-boolean v2, v4, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->boldEnabled:Z

    const/high16 v5, -0x80000000

    iput v5, v4, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->gravity:I

    sget-object v5, Lme/wcy/lrcview/LrcView$LayoutMetrics;->EMPTY:Lme/wcy/lrcview/LrcView$LayoutMetrics;

    iput-object v5, v4, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->metrics:Lme/wcy/lrcview/LrcView$LayoutMetrics;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lme/wcy/lrcview/LrcView;->mLayoutMetricsCacheCursor:I

    return-void
.end method

.method public final computeScroll()V
    .locals 3

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getCenterLine()I

    move-result v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Lme/wcy/lrcview/LrcView$5;

    iget-wide v1, p0, Lme/wcy/lrcview/LrcView;->timelineKeepTimeMs:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lme/wcy/lrcview/LrcView;->mLrcPadding:F

    add-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p0

    shr-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    sub-float/2addr p3, p0

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final endAnimation()V
    .locals 1

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final findShowLine(J)I
    .locals 6

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_2

    add-int v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/wcy/lrcview/LrcEntry;

    iget-wide v4, v4, Lme/wcy/lrcview/LrcEntry;->time:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_1

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getCurrentLyric()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/wcy/lrcview/LrcEntry;

    iget-object p0, p0, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getDividerHeightPx()F
    .locals 0

    iget p0, p0, Lme/wcy/lrcview/LrcView;->mDividerHeight:F

    return p0
.end method

.method public getNextLyric()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_2

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/wcy/lrcview/LrcEntry;

    iget-object p0, p0, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getOffset(I)F
    .locals 2

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    if-eqz v0, :cond_3

    array-length v0, v0

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lme/wcy/lrcview/LrcView;->mAnchorLine:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->getTopOffset(I)F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->shouldAlignTop(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getTopOffset()F

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getAnchorY()F

    move-result v0

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    aget p0, p0, p1

    sub-float/2addr v0, p0

    return v0

    :cond_3
    :goto_0
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getDrawHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public getThirdLyric()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    add-int/lit8 v0, v0, 0x2

    if-ltz v0, :cond_2

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/wcy/lrcview/LrcEntry;

    iget-object p0, p0, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getTopOffset(I)F
    .locals 4

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getDrawHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p0, v2

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v1}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getDrawHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    if-eqz v3, :cond_2

    array-length v3, v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    aget p1, v0, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    int-to-float v0, v1

    div-float/2addr v0, v2

    add-float/2addr v0, p0

    sub-float/2addr v0, p1

    return v0
.end method

.method public final hasLrc()Z
    .locals 0

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final initEntryList()V
    .locals 7

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->clearLayoutMetricsCache()V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v1, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    iget v2, p0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v1, p0, Lme/wcy/lrcview/LrcView;->mBoldEnabled:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/wcy/lrcview/LrcEntry;

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getLrcWidth()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lme/wcy/lrcview/LrcView;->mTextGravity:I

    invoke-virtual {v3, v0, v4, v5}, Lme/wcy/lrcview/LrcEntry;->buildLayout(Landroid/text/TextPaint;II)Landroid/text/StaticLayout;

    move-result-object v4

    iput-object v4, v3, Lme/wcy/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [F

    iput-object v2, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_2

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v5}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v6}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    shr-int/lit8 v5, v6, 0x1

    int-to-float v5, v5

    iget v6, p0, Lme/wcy/lrcview/LrcView;->mDividerHeight:F

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    aput v3, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lme/wcy/lrcview/LrcView;->mInitialTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_3

    invoke-virtual {p0, v0, v1}, Lme/wcy/lrcview/LrcView;->findShowLine(J)I

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lme/wcy/lrcview/LrcView;->mInitialTime:J

    :cond_3
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->shouldAlignTop(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getTopOffset()F

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    iput-boolean v2, p0, Lme/wcy/lrcview/LrcView;->isIntroAlignTop:Z

    goto :goto_2

    :cond_4
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isIntroAlignTop:Z

    :goto_2
    return-void

    :cond_5
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    return-void
.end method

.method public final initPlayDrawable()V
    .locals 4

    iget v0, p0, Lme/wcy/lrcview/LrcView;->mTimeTextWidth:I

    iget v1, p0, Lme/wcy/lrcview/LrcView;->mDrawableWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getDrawHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lme/wcy/lrcview/LrcView;->mDrawableWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    add-int v3, v0, v2

    add-int/2addr v2, v1

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public final measureEntry(ILme/wcy/lrcview/LrcEntry;F)Lme/wcy/lrcview/LrcView$LayoutMetrics;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Lme/wcy/lrcview/LrcView;->getLrcWidth()F

    move-result v4

    float-to-int v4, v4

    if-eqz v2, :cond_c

    if-gtz v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v5, v0, Lme/wcy/lrcview/LrcView;->mLayoutMetricsCaches:[Lme/wcy/lrcview/LrcView$LayoutMetricsCache;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, v5, v8

    iget-boolean v10, v0, Lme/wcy/lrcview/LrcView;->mBoldEnabled:Z

    iget v11, v0, Lme/wcy/lrcview/LrcView;->mTextGravity:I

    iget v12, v9, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->lineIndex:I

    if-ne v12, v1, :cond_1

    iget v12, v9, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->widthPx:I

    if-ne v12, v4, :cond_1

    iget v12, v9, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->textSizePx:F

    invoke-static {v12, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_1

    iget-boolean v12, v9, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->boldEnabled:Z

    if-ne v12, v10, :cond_1

    iget v10, v9, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->gravity:I

    if-ne v10, v11, :cond_1

    iget-object v9, v9, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->metrics:Lme/wcy/lrcview/LrcView$LayoutMetrics;

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_3

    return-object v9

    :cond_3
    iget-object v6, v0, Lme/wcy/lrcview/LrcView;->mMeasurePaint:Landroid/text/TextPaint;

    iget-object v8, v0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v8, v0, Lme/wcy/lrcview/LrcView;->mBoldEnabled:Z

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget v8, v0, Lme/wcy/lrcview/LrcView;->mTextGravity:I

    invoke-virtual {v2, v6, v4, v8}, Lme/wcy/lrcview/LrcEntry;->buildLayout(Landroid/text/TextPaint;II)Landroid/text/StaticLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lme/wcy/lrcview/LrcEntry;->getShowText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v15, 0x1

    if-eqz v8, :cond_4

    move v9, v7

    goto :goto_3

    :cond_4
    move v8, v7

    move v9, v15

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_6

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_5

    add-int/lit8 v9, v9, 0x1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v8, 0x0

    move v12, v8

    move v8, v7

    :goto_4
    if-ge v8, v10, :cond_7

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v9

    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    if-gtz v8, :cond_8

    move v13, v7

    goto :goto_5

    :cond_8
    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v8, v15

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    move v13, v8

    :goto_5
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    if-gtz v8, :cond_9

    move v14, v7

    goto :goto_6

    :cond_9
    const/4 v9, 0x2

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v8, v15

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    move v14, v8

    :goto_6
    new-instance v11, Lme/wcy/lrcview/LrcView$LayoutMetrics;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v9

    if-le v10, v2, :cond_a

    move v7, v15

    :cond_a
    move-object v8, v11

    move-object v2, v11

    move v11, v7

    invoke-direct/range {v8 .. v14}, Lme/wcy/lrcview/LrcView$LayoutMetrics;-><init>(IIZFII)V

    array-length v6, v5

    if-nez v6, :cond_b

    goto :goto_7

    :cond_b
    iget v6, v0, Lme/wcy/lrcview/LrcView;->mLayoutMetricsCacheCursor:I

    aget-object v7, v5, v6

    iget-boolean v8, v0, Lme/wcy/lrcview/LrcView;->mBoldEnabled:Z

    iget v9, v0, Lme/wcy/lrcview/LrcView;->mTextGravity:I

    iput v1, v7, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->lineIndex:I

    iput v4, v7, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->widthPx:I

    iput v3, v7, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->textSizePx:F

    iput-boolean v8, v7, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->boldEnabled:Z

    iput v9, v7, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->gravity:I

    iput-object v2, v7, Lme/wcy/lrcview/LrcView$LayoutMetricsCache;->metrics:Lme/wcy/lrcview/LrcView$LayoutMetrics;

    add-int/2addr v6, v15

    array-length v1, v5

    rem-int/2addr v6, v1

    iput v6, v0, Lme/wcy/lrcview/LrcView;->mLayoutMetricsCacheCursor:I

    :goto_7
    return-object v2

    :cond_c
    :goto_8
    sget-object v0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->EMPTY:Lme/wcy/lrcview/LrcView$LayoutMetrics;

    return-object v0
.end method

.method public final notifyLineHeightChanged()V
    .locals 14

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;-><init>(Lme/wcy/lrcview/LrcView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v3}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v4

    iget v5, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    invoke-virtual {p0, v0, v3, v5}, Lme/wcy/lrcview/LrcView;->measureEntry(ILme/wcy/lrcview/LrcEntry;F)Lme/wcy/lrcview/LrcView$LayoutMetrics;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/wcy/lrcview/LrcEntry;

    iget v5, p0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {p0, v0, v1, v5}, Lme/wcy/lrcview/LrcView;->measureEntry(ILme/wcy/lrcview/LrcEntry;F)Lme/wcy/lrcview/LrcView$LayoutMetrics;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->EMPTY:Lme/wcy/lrcview/LrcView$LayoutMetrics;

    :goto_0
    iget v1, v3, Lme/wcy/lrcview/LrcView$LayoutMetrics;->heightPx:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v1, v0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->heightPx:I

    if-lez v1, :cond_3

    iget v1, p0, Lme/wcy/lrcview/LrcView;->mDividerHeight:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v12, v1

    goto :goto_1

    :cond_3
    move v12, v2

    :goto_1
    iget-boolean v1, p0, Lme/wcy/lrcview/LrcView;->mBlurEnabled:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lme/wcy/lrcview/LrcView;->mMaxBlurRadius:F

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v2, v1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    add-int/lit8 v13, v2, 0x2

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mOnLineRenderInfoListener:Lme/wcy/lrcview/LrcView$OnLineRenderInfoListener;

    if-eqz v1, :cond_5

    new-instance v2, Lme/wcy/lrcview/LrcView$LineRenderInfo;

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getLrcWidth()F

    iget v9, v3, Lme/wcy/lrcview/LrcView$LayoutMetrics;->twoVisualLinesHeightPx:I

    iget v11, v0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->singleVisualLineHeightPx:I

    iget v7, v3, Lme/wcy/lrcview/LrcView$LayoutMetrics;->visualLineCount:I

    iget v8, v3, Lme/wcy/lrcview/LrcView$LayoutMetrics;->singleVisualLineHeightPx:I

    iget v10, v0, Lme/wcy/lrcview/LrcView$LayoutMetrics;->heightPx:I

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lme/wcy/lrcview/LrcView$LineRenderInfo;-><init>(IIIIIIII)V

    invoke-interface {v1, v2}, Lme/wcy/lrcview/LrcView$OnLineRenderInfoListener;->onLineRenderInfoChanged(Lme/wcy/lrcview/LrcView$LineRenderInfo;)V

    :cond_5
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->endAnimation()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v8, v0, Lme/wcy/lrcview/LrcView;->mDividerHeight:F

    iget v9, v0, Lme/wcy/lrcview/LrcView;->mTimeTextWidth:I

    const/4 v10, 0x1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p0}, Lme/wcy/lrcview/LrcView;->getDrawHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual/range {p0 .. p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v2

    iget-object v13, v0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    const/4 v11, 0x0

    if-nez v2, :cond_0

    iget v2, v0, Lme/wcy/lrcview/LrcView;->mCurrentTextColor:I

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v2, Landroid/text/StaticLayout;

    iget-object v12, v0, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lme/wcy/lrcview/LrcView;->getLrcWidth()F

    move-result v3

    float-to-int v14, v3

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v18, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    int-to-float v1, v1

    invoke-virtual {v0, v7, v2, v1}, Lme/wcy/lrcview/LrcView;->drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V

    return-void

    :cond_0
    iget-boolean v2, v0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lme/wcy/lrcview/LrcView;->getCenterLine()I

    move-result v2

    :goto_0
    move v12, v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :goto_1
    iget-boolean v2, v0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    iget-object v14, v0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lme/wcy/lrcview/LrcView;->mShowTimeline:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, v0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    iget v2, v0, Lme/wcy/lrcview/LrcView;->mTimelineColor:I

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v9

    int-to-float v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v9

    int-to-float v4, v1

    move-object/from16 v1, p1

    move v3, v5

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lme/wcy/lrcview/LrcView;->mTimeTextColor:I

    move-object/from16 v2, v17

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/wcy/lrcview/LrcEntry;

    iget-wide v3, v1, Lme/wcy/lrcview/LrcEntry;->time:J

    sget-object v1, Lme/wcy/lrcview/LrcUtils;->PATTERN_LINE:Ljava/util/regex/Pattern;

    const-wide/32 v5, 0xea60

    div-long v5, v3, v5

    long-to-int v1, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    rem-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%02d"

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v3, v9

    int-to-float v3, v3

    iget-object v4, v0, Lme/wcy/lrcview/LrcView;->mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v5, v4

    div-float/2addr v5, v15

    sub-float v5, v16, v5

    invoke-virtual {v7, v1, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-boolean v1, v0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v1, :cond_3

    move v1, v12

    goto :goto_2

    :cond_3
    iget v1, v0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-direct/range {p0 .. p0}, Lme/wcy/lrcview/LrcView;->getDrawHeight()I

    move-result v3

    int-to-float v4, v3

    div-float v5, v4, v15

    iget-object v6, v0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    if-eqz v6, :cond_4

    if-ltz v1, :cond_4

    array-length v9, v6

    if-ge v1, v9, :cond_4

    iget v5, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    aget v9, v6, v1

    add-float/2addr v5, v9

    :cond_4
    const/4 v15, 0x0

    if-eqz v6, :cond_9

    array-length v6, v6

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v6, v9, :cond_9

    if-ltz v1, :cond_9

    move v2, v1

    :goto_3
    if-lez v2, :cond_6

    add-int/lit8 v6, v2, -0x1

    iget v9, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    iget-object v11, v0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    aget v11, v11, v6

    add-float/2addr v9, v11

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v11}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v11

    shr-int/2addr v11, v10

    int-to-float v11, v11

    add-float/2addr v9, v11

    cmpg-float v9, v9, v15

    if-gez v9, :cond_5

    goto :goto_4

    :cond_5
    move v2, v6

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    :goto_4
    move v6, v1

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v6, v9, :cond_8

    add-int/lit8 v9, v6, 0x1

    iget v11, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    iget-object v15, v0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    aget v15, v15, v9

    add-float/2addr v11, v15

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v15}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v15

    shr-int/2addr v15, v10

    int-to-float v15, v15

    sub-float/2addr v11, v15

    cmpl-float v11, v11, v4

    if-lez v11, :cond_7

    goto :goto_6

    :cond_7
    move v6, v9

    const/4 v15, 0x0

    goto :goto_5

    :cond_8
    :goto_6
    move v4, v2

    move v2, v6

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    sub-int v6, v2, v4

    add-int/2addr v6, v10

    iget v9, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    move v9, v4

    const/4 v11, 0x0

    :goto_8
    if-gt v9, v2, :cond_17

    iget-object v15, v0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    if-eqz v15, :cond_a

    array-length v15, v15

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v15, v10, :cond_a

    iget-object v10, v0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    aget v10, v10, v9

    move/from16 v22, v2

    move v11, v10

    goto :goto_a

    :cond_a
    if-ne v9, v4, :cond_b

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_9
    move/from16 v22, v2

    if-gt v10, v9, :cond_c

    const/4 v15, 0x1

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v2}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v2

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual/range {v16 .. v16}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v16

    add-int v16, v16, v2

    shr-int/lit8 v2, v16, 0x1

    int-to-float v2, v2

    add-float/2addr v2, v8

    add-float/2addr v11, v2

    add-int/2addr v10, v15

    move/from16 v2, v22

    goto :goto_9

    :cond_b
    move/from16 v22, v2

    const/4 v15, 0x1

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v2}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v2

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v10}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v10

    add-int/2addr v10, v2

    shr-int/lit8 v2, v10, 0x1

    int-to-float v2, v2

    add-float/2addr v2, v8

    add-float/2addr v2, v11

    move v11, v2

    :cond_c
    :goto_a
    iget v2, v0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    if-ne v9, v2, :cond_d

    iget v2, v0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v0, Lme/wcy/lrcview/LrcView;->mCurrentTextColor:I

    :goto_b
    const/4 v15, 0x1

    goto :goto_c

    :cond_d
    iget-boolean v2, v0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v2, :cond_e

    if-ne v9, v12, :cond_e

    iget v2, v0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v0, Lme/wcy/lrcview/LrcView;->mTimelineTextColor:I

    goto :goto_b

    :cond_e
    iget v2, v0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v0, Lme/wcy/lrcview/LrcView;->mNormalTextColor:I

    const/4 v15, 0x0

    :goto_c
    iget v10, v0, Lme/wcy/lrcview/LrcView;->mOffset:F

    add-float v17, v10, v11

    sub-int v10, v9, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v21

    if-nez v15, :cond_16

    if-nez v21, :cond_f

    move/from16 v16, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v18, v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_12

    :cond_f
    iget-object v10, v0, Lme/wcy/lrcview/LrcView;->mBlurStrategy:Lme/wcy/lrcview/BlurStrategy;

    if-eqz v10, :cond_10

    :goto_d
    move-object/from16 v16, v10

    goto :goto_e

    :cond_10
    sget-object v10, Lme/wcy/lrcview/BlurStrategy;->PIXEL:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    goto :goto_d

    :goto_e
    move/from16 v18, v5

    move/from16 v19, v3

    move/from16 v20, v6

    invoke-interface/range {v16 .. v21}, Lme/wcy/lrcview/BlurStrategy;->calculateBlurRatio(FFIII)F

    move-result v10

    iget-boolean v15, v0, Lme/wcy/lrcview/LrcView;->mBlurEnabled:Z

    move/from16 v16, v1

    if-eqz v15, :cond_15

    iget v15, v0, Lme/wcy/lrcview/LrcView;->mMaxBlurRadius:F

    const/4 v1, 0x0

    cmpl-float v15, v15, v1

    if-lez v15, :cond_15

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v15, v1

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    if-gtz v15, :cond_11

    move/from16 v19, v3

    move/from16 v20, v4

    :goto_f
    move/from16 v18, v5

    const/4 v3, 0x0

    goto :goto_10

    :cond_11
    const/16 v1, 0xc

    if-le v15, v1, :cond_12

    move v15, v1

    :cond_12
    iget-object v1, v0, Lme/wcy/lrcview/LrcView;->mBlurFilters:[Landroid/graphics/BlurMaskFilter;

    aget-object v19, v1, v15

    if-eqz v19, :cond_13

    move/from16 v20, v4

    move/from16 v18, v5

    move-object/from16 v23, v19

    move/from16 v19, v3

    move-object/from16 v3, v23

    goto :goto_10

    :cond_13
    move/from16 v19, v3

    iget v3, v0, Lme/wcy/lrcview/LrcView;->mMaxBlurRadius:F

    move/from16 v20, v4

    int-to-float v4, v15

    const/high16 v18, 0x41400000    # 12.0f

    div-float v4, v4, v18

    mul-float/2addr v4, v3

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v4, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_14

    goto :goto_f

    :cond_14
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    move/from16 v18, v5

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    aput-object v3, v1, v15

    :goto_10
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_11

    :cond_15
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v18, v5

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_11
    const v1, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v1, v10

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v3, 0xff

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v4, 0xffffff

    and-int/2addr v2, v4

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v2, v1

    const/4 v1, 0x0

    goto :goto_13

    :cond_16
    move/from16 v16, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v18, v5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_13
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/wcy/lrcview/LrcEntry;

    iget-object v2, v2, Lme/wcy/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v7, v2, v11}, Lme/wcy/lrcview/LrcView;->drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V

    const/4 v2, 0x1

    add-int/2addr v9, v2

    move v10, v2

    move/from16 v1, v16

    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v2, v22

    goto/16 :goto_8

    :cond_17
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p1, p0, Lme/wcy/lrcview/LrcView;->mLastLayoutWidth:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eq p4, p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mLastLayoutHeight:I

    if-eq p5, v0, :cond_2

    move p2, p3

    :cond_2
    iput p4, p0, Lme/wcy/lrcview/LrcView;->mLastLayoutWidth:I

    iput p5, p0, Lme/wcy/lrcview/LrcView;->mLastLayoutHeight:I

    iput p5, p0, Lme/wcy/lrcview/LrcView;->mDrawHeight:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->initPlayDrawable()V

    iget-boolean p3, p0, Lme/wcy/lrcview/LrcView;->isLayoutFrozen:Z

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p3

    if-nez p3, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_4
    const-wide/16 p3, 0x0

    if-nez p1, :cond_b

    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    if-eqz p1, :cond_b

    array-length p1, p1

    iget-object p5, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-eq p1, p5, :cond_5

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_6
    iget-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget p1, p0, Lme/wcy/lrcview/LrcView;->mAnchorLine:I

    if-gez p1, :cond_9

    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    iget-object p5, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget p3, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0, p3, p1, p2}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    goto :goto_1

    :cond_8
    iget p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    iget p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0, p1, p3, p4}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->notifyLineHeightChanged()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-wide v1, p0, Lme/wcy/lrcview/LrcView;->timelineKeepTimeMs:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    iget-object v4, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Lme/wcy/lrcview/LrcView$5;

    const-wide/16 v5, 0x64

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v3, v7, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-le v7, v9, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v7, p0, Lme/wcy/lrcview/LrcView;->isMultiTouch:Z

    if-eqz v7, :cond_3

    if-eq v3, v9, :cond_1

    if-ne v3, v8, :cond_2

    :cond_1
    iput-boolean v10, p0, Lme/wcy/lrcview/LrcView;->isMultiTouch:Z

    :cond_2
    return v10

    :cond_3
    if-eq v3, v9, :cond_4

    if-ne v3, v8, :cond_7

    :cond_4
    iput-boolean v10, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lme/wcy/lrcview/LrcView;->mAutoPlayOnDrag:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getCenterLine()I

    move-result v3

    iget-object v7, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lme/wcy/lrcview/LrcEntry;

    iget-wide v7, v7, Lme/wcy/lrcview/LrcEntry;->time:J

    iget-object v9, p0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    check-cast v9, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    const-string v11, "this$0"

    iget-object v9, v9, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/deepalhome/launcher/music/MusicAppWindow;->interceptSeekWhenUnsupported(Lkotlin/jvm/functions/Function0;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    sget-object v9, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Lcom/deepalhome/launcher/music/MusicManager;->seekTo(J)V

    iput-boolean v10, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v3, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_0
    iget-boolean v3, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getCenterLine()I

    move-result v3

    invoke-virtual {p0, v3, v5, v6}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    invoke-virtual {p0, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_8
    :goto_1
    iget-boolean v3, p0, Lme/wcy/lrcview/LrcView;->isMultiTouch:Z

    if-nez v3, :cond_b

    iput-boolean v9, p0, Lme/wcy/lrcview/LrcView;->isMultiTouch:Z

    iput-boolean v10, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    iget-boolean v3, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    if-eqz v3, :cond_9

    iput-boolean v10, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    iget-object v3, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v9}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_9
    iget-boolean v3, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getCenterLine()I

    move-result v3

    invoke-virtual {p0, v3, v5, v6}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    invoke-virtual {p0, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    return v10
.end method

.method public final reset()V
    .locals 2

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->endAnimation()V

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isMultiTouch:Z

    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isIntroAlignTop:Z

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lme/wcy/lrcview/LrcView;->mLineY:[F

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->clearLayoutMetricsCache()V

    const/4 v1, 0x0

    iput v1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final runOnUi(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setAnchorLine(I)V
    .locals 2

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;-><init>(Lme/wcy/lrcview/LrcView;II)V

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->mBlurEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lme/wcy/lrcview/LrcView;->mBlurEnabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mBlurFilters:[Landroid/graphics/BlurMaskFilter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isLayoutFrozen:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    iget p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBlurStrategy(Lme/wcy/lrcview/BlurStrategy;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lme/wcy/lrcview/BlurStrategy;->PIXEL:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    :cond_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mBlurStrategy:Lme/wcy/lrcview/BlurStrategy;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mBlurStrategy:Lme/wcy/lrcview/BlurStrategy;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBoldEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->mBoldEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lme/wcy/lrcview/LrcView;->mBoldEnabled:Z

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isLayoutFrozen:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    iget p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentColor(I)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setCurrentTextSize(F)V
    .locals 2

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;-><init>(Lme/wcy/lrcview/LrcView;FI)V

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDrawHeight(I)V
    .locals 2

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;-><init>(Lme/wcy/lrcview/LrcView;II)V

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 2

    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isLayoutFrozen:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isLayoutFrozen:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->initPlayDrawable()V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setMaxBlurRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mMaxBlurRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mMaxBlurRadius:F

    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mBlurFilters:[Landroid/graphics/BlurMaskFilter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isLayoutFrozen:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    iget p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mNormalTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setNormalTextSize(F)V
    .locals 2

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;-><init>(Lme/wcy/lrcview/LrcView;FI)V

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnLineHeightChangeListener(Lme/wcy/lrcview/LrcView$OnLineHeightChangeListener;)V
    .locals 0

    return-void
.end method

.method public setOnLineRenderInfoListener(Lme/wcy/lrcview/LrcView$OnLineRenderInfoListener;)V
    .locals 0

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mOnLineRenderInfoListener:Lme/wcy/lrcview/LrcView$OnLineRenderInfoListener;

    return-void
.end method

.method public setOnLyricProgressListener(Lme/wcy/lrcview/LrcView$OnLyricProgressListener;)V
    .locals 0

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mOnLyricProgressListener:Lme/wcy/lrcview/LrcView$OnLyricProgressListener;

    return-void
.end method

.method public setOnPlayClickListener(Lme/wcy/lrcview/LrcView$OnPlayClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    return-void
.end method

.method public setOnTapListener(Lme/wcy/lrcview/LrcView$OnTapListener;)V
    .locals 0

    return-void
.end method

.method public setTextGravity(I)V
    .locals 2

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;-><init>(Lme/wcy/lrcview/LrcView;II)V

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTimeTextColor(I)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mTimeTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTimelineColor(I)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mTimelineColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTimelineTextColor(I)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mTimelineTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final shouldAlignTop(I)Z
    .locals 2

    iget v0, p0, Lme/wcy/lrcview/LrcView;->mAnchorLine:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final smoothScrollTo(IJ)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p1

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_2

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    iget v1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v1, 0x1

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, p0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p1, Lme/wcy/lrcview/LrcUtils;->PATTERN_LINE:Ljava/util/regex/Pattern;

    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
