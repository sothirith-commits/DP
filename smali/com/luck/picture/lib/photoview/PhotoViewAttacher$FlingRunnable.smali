.class public final Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public mCurrentX:I

.field public mCurrentY:I

.field public final mScroller:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Ljava/lang/Object;

    iput p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    iput p2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    iput-object p4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Ljava/lang/Object;

    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Ljava/lang/Object;

    check-cast v0, Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v1, v0, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    iget-object v2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget v3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    iget p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    invoke-interface {v1, v3, p0, v0, v2}, Lcom/liulishuo/okdownload/DownloadListener;->connectEnd(IILcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget-object v2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;

    iget-object v3, v2, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    iput v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    iput v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    iget-object v0, v2, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
