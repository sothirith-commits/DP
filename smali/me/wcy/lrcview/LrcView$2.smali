.class public final Lme/wcy/lrcview/LrcView$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$flag:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView$2;->$r8$classId:I

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lme/wcy/lrcview/LrcView$2;->val$flag:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lme/wcy/lrcview/LrcView$2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    check-cast p1, [Landroid/graphics/Bitmap;

    :try_start_0
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/palette/graphics/Palette$Builder;

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Palette"

    const-string v1, "Exception thrown during async generate"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0

    :pswitch_0
    check-cast p1, [Ljava/lang/String;

    sget-object p0, Lme/wcy/lrcview/LrcUtils;->PATTERN_LINE:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_3

    array-length p0, p1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    const/4 p0, 0x0

    aget-object v1, p1, p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object p0, p1, p0

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p0}, Lme/wcy/lrcview/LrcUtils;->parseLrc(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lme/wcy/lrcview/LrcUtils;->parseLrc(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/wcy/lrcview/LrcEntry;

    iget-wide v4, v1, Lme/wcy/lrcview/LrcEntry;->time:J

    iget-wide v6, v3, Lme/wcy/lrcview/LrcEntry;->time:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-object v3, v3, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    iput-object v3, v1, Lme/wcy/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$2;->val$flag:Ljava/lang/Object;

    iget v1, p0, Lme/wcy/lrcview/LrcView$2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    check-cast p1, Landroidx/palette/graphics/Palette;

    check-cast v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    iget-object p0, v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    iget-object v1, p1, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Landroidx/collection/ArrayMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/palette/graphics/Palette$Swatch;

    if-nez v0, :cond_1

    sget-object v0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v1, v0, v2}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/palette/graphics/Palette$Swatch;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    iget p1, v0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    iget v1, v0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0009

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a000a

    invoke-virtual {v5, v7, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f06002a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f060397

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v11

    if-lez v2, :cond_2

    invoke-static {p1, v4, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    goto :goto_0

    :cond_2
    invoke-static {p1, v5, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    :goto_0
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    iget v4, v0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0005

    invoke-virtual {p1, v0, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0a0006

    invoke-virtual {v0, v5, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    move-result v6

    cmpl-double v2, v2, v11

    if-lez v2, :cond_3

    invoke-static {v1, p1, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    move-result p1

    :goto_1
    move v6, p1

    goto :goto_2

    :cond_3
    invoke-static {v1, v0, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    move-result p1

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentBodyColor:I

    iget v5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentIconColor:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda20;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda20;-><init>(Landroid/widget/FrameLayout;IIIII)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->colorAnimator:Landroid/animation/ValueAnimator;

    :goto_3
    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lme/wcy/lrcview/LrcView;

    invoke-static {p0}, Lme/wcy/lrcview/LrcView;->access$000(Lme/wcy/lrcview/LrcView;)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    if-ne v1, v0, :cond_6

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->reset()V

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->notifyLineHeightChanged()V

    invoke-static {p0}, Lme/wcy/lrcview/LrcView;->access$1900(Lme/wcy/lrcview/LrcView;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
