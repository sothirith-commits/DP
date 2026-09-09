.class public final Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;
.super Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;
.source "SourceFile"


# instance fields
.field public isPausePlayer:Z

.field public final ivPlayBack:Landroid/widget/ImageView;

.field public final ivPlayButton:Landroid/widget/ImageView;

.field public final ivPlayFast:Landroid/widget/ImageView;

.field public final mHandler:Landroid/os/Handler;

.field public final mPlayCompletionListener:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;

.field public final mPlayErrorListener:Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;

.field public final mPlayPreparedListener:Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;

.field public mPlayer:Landroid/media/MediaPlayer;

.field public final mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

.field public final seekBar:Landroid/widget/SeekBar;

.field public final tvAudioName:Landroid/widget/TextView;

.field public final tvCurrentTime:Landroid/widget/TextView;

.field public final tvTotalDuration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPausePlayer:Z

    new-instance v0, Lme/wcy/lrcview/LrcView$5;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lme/wcy/lrcview/LrcView$5;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    new-instance v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;)V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayCompletionListener:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;

    new-instance v0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayErrorListener:Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;

    new-instance v0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;

    invoke-direct {v0, v1, p0}, Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayPreparedListener:Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;

    const v0, 0x7f0b031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0b063e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvAudioName:Landroid/widget/TextView;

    const v0, 0x7f0b0641

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvCurrentTime:Landroid/widget/TextView;

    const v0, 0x7f0b0649

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvTotalDuration:Landroid/widget/TextView;

    const v0, 0x7f0b03c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0b031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayBack:Landroid/widget/ImageView;

    const v0, 0x7f0b031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayFast:Landroid/widget/ImageView;

    return-void
.end method

.method public static access$800(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPausePlayer:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public final bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 10

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    sget-object v4, Lcom/luck/picture/lib/utils/DateUtils;->SF:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    const-wide/16 v6, 0x3e8

    if-le v4, v5, :cond_0

    goto :goto_0

    :cond_0
    mul-long/2addr v2, v6

    :goto_0
    sget-object v4, Lcom/luck/picture/lib/utils/DateUtils;->SDF_YEAR:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/luck/picture/lib/entity/LocalMedia;->size:J

    const-wide/16 v8, 0x0

    cmp-long v5, v3, v8

    if-ltz v5, :cond_5

    cmp-long v5, v3, v6

    if-gez v5, :cond_1

    long-to-double v3, v3

    const-string v5, ""

    goto :goto_1

    :cond_1
    const-wide/32 v5, 0xf4240

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    const-string v5, "KB"

    goto :goto_1

    :cond_2
    const-wide/32 v5, 0x3b9aca00

    cmp-long v5, v3, v5

    if-gez v5, :cond_3

    long-to-double v3, v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    const-string v5, "MB"

    goto :goto_1

    :cond_3
    long-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v5

    const-string v5, "GB"

    :goto_1
    new-instance v6, Ljava/util/Locale;

    const-string v7, "zh"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.2f"

    invoke-static {v6, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/luck/picture/lib/utils/ValueOf;->toDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v3}, Lcom/luck/picture/lib/utils/ValueOf;->toDouble(Ljava/lang/String;)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_4

    invoke-static {v3}, Lcom/luck/picture/lib/utils/ValueOf;->toDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->loadImage()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v5, v7}, Lcom/luck/picture/lib/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v5, 0x11

    invoke-virtual {v6, v4, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x9a9a9b

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v4, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvAudioName:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v2, p1, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    invoke-static {v2, v3}, Lcom/luck/picture/lib/utils/DateUtils;->formatDurationTime(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvTotalDuration:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v2, p1, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    long-to-int v2, v2

    iget-object v3, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->setBackFastUI(Z)V

    new-instance v2, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;

    invoke-direct {v2, p0, v0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;I)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;

    invoke-direct {v0, p0, p2}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;I)V

    iget-object v2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayFast:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$4;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$8;

    invoke-direct {v0, p0, p1, v1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$8;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;Lcom/luck/picture/lib/entity/LocalMedia;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;Lcom/luck/picture/lib/entity/LocalMedia;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteSize shouldn\'t be less than zero!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isPlaying$1()Z
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadImage()V
    .locals 2

    const v0, 0x7f08021a

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvAudioName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public final onClickBackPressed()V
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V

    return-void
.end method

.method public final onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 2

    new-instance v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;Lcom/luck/picture/lib/entity/LocalMedia;I)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final onViewAttachedToWindow$1()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPausePlayer:Z

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayCompletionListener:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayErrorListener:Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayPreparedListener:Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->playerDefaultUI(Z)V

    return-void
.end method

.method public final onViewDetachedFromWindow$1()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPausePlayer:Z

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->resetMediaPlayer()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->playerDefaultUI(Z)V

    return-void
.end method

.method public final playerDefaultUI(Z)V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvCurrentTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->setBackFastUI(Z)V

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f080219

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->onPreviewVideoTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public final resetMediaPlayer()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPausePlayer:Z

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public final resumePausePlay()V
    .locals 4

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPlaying$1()Z

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPausePlayer:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->playerDefaultUI(Z)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mTickerRunnable:Lme/wcy/lrcview/LrcView$5;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->setBackFastUI(Z)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f08021b

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public final setBackFastUI(Z)V
    .locals 1

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->ivPlayFast:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
