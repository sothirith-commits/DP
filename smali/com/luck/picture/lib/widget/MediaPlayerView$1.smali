.class public final Lcom/luck/picture/lib/widget/MediaPlayerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/luck/picture/lib/widget/MediaPlayerView;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/widget/MediaPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$1;->this$0:Lcom/luck/picture/lib/widget/MediaPlayerView;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$1;->this$0:Lcom/luck/picture/lib/widget/MediaPlayerView;

    iget-object p0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->surfaceView:Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoWidth:I

    iput p1, p0, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;->videoHeight:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method
