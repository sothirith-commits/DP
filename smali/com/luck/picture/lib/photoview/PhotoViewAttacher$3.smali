.class public final Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;->$r8$classId:I

    iput-object p2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/GestureHelper;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {p0}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->onDoubleTap()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMidScale:F

    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    invoke-virtual {p0, v3, v2, p1, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p0, v3, v2, p1, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "e"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/GestureHelper;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-interface {p0}, Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;->onSingleTapUp()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/luck/picture/lib/photoview/OnViewTapListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/luck/picture/lib/photoview/OnViewTapListener;->onViewTap()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
