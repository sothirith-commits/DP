.class public final Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

.field public final synthetic val$media:Lcom/luck/picture/lib/entity/LocalMedia;

.field public final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;Lcom/luck/picture/lib/entity/LocalMedia;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$8;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$8;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    iput-object p3, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$8;->val$path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$8;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    :try_start_0
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$8;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v1, v1, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->onPreviewVideoTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPlaying$1()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object p0, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v1, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPausePlayer:Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->playerDefaultUI(Z)V

    iget-object p0, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPausePlayer:Z

    if-eqz v0, :cond_2

    iget-object p0, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object p0, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    iget-object p0, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->setBackFastUI(Z)V

    iget-object p0, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayButton:Landroid/widget/ImageView;

    const p1, 0x7f08021b

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$8;->val$path:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->access$800(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
