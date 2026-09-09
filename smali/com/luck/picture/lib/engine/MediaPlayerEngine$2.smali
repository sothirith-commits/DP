.class public final Lcom/luck/picture/lib/engine/MediaPlayerEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic this$0:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

.field public final synthetic val$player:Lcom/luck/picture/lib/widget/MediaPlayerView;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/engine/MediaPlayerEngine;Lcom/luck/picture/lib/widget/MediaPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$2;->this$0:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    iput-object p2, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$2;->val$player:Lcom/luck/picture/lib/widget/MediaPlayerView;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$2;->this$0:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    iget-object v1, v0, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, v0, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;

    iget-object v0, v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->playerDefaultUI()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$2;->val$player:Lcom/luck/picture/lib/widget/MediaPlayerView;

    iget-object p1, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->surfaceView:Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object p0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->surfaceView:Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x2

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method
