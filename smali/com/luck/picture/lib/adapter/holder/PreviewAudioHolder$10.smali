.class public final Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->resetMediaPlayer()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->playerDefaultUI(Z)V

    return-void
.end method
