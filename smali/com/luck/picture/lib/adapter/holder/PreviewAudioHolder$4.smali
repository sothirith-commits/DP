.class public final Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->onBackPressed()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/DateUtils;->formatDurationTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xbb8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    :cond_2
    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/DateUtils;->formatDurationTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
