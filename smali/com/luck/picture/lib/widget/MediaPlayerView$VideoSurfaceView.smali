.class public Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/widget/MediaPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field public videoHeight:I

.field public videoWidth:I


# virtual methods
.method public final onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoWidth:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoHeight:I

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoWidth:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoHeight:I

    if-lez v2, :cond_8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoWidth:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoHeight:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int/2addr v0, p2

    div-int/2addr v0, v2

    :goto_0
    move v1, p2

    goto :goto_4

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_4

    mul-int/2addr v2, p1

    div-int v1, v2, v0

    :goto_1
    move v0, p1

    goto :goto_4

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoHeight:I

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_2
    move v0, p1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoWidth:I

    iget v4, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoHeight:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v1, p2, v2

    div-int/2addr v1, v4

    goto :goto_3

    :cond_7
    move v1, v2

    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    mul-int/2addr v4, p1

    div-int v1, v4, v2

    goto :goto_1

    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
