.class public final Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;->$r8$classId:I

    iput-object p2, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    iget v0, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->setBackFastUI(Z)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayButton:Landroid/widget/ImageView;

    const p1, 0x7f08021b

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->resetMediaPlayer()V

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->playerDefaultUI(Z)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget-object v1, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    iget-object v2, v1, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;

    iget-object v1, v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    iget-object v2, v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
