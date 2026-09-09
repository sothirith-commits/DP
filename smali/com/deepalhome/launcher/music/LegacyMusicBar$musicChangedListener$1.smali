.class public final Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onPrivateSourceChanged$com$deepalhome$launcher$music$LegacyMusicBar$musicChangedListener$1(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onInfoChanged(Lcom/deepalhome/launcher/music/Music;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v1, "com.android.bluetooth"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->this$0:Ljava/lang/Object;

    iget v0, v0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    move-object v0, v6

    check-cast v0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/deepalhome/launcher/music/MusicAppWindow;->buildMusicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-nez v9, :cond_0

    sget-object v9, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    :cond_0
    move-object v15, v9

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v12

    move-object v9, v0

    move-object v14, v15

    invoke-virtual/range {v9 .. v14}, Lcom/deepalhome/launcher/music/MusicAppWindow;->buildLyricRequestKey(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/util/s05/music/MusicSource;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v11, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentLyricRequestKey:Ljava/lang/String;

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0

    :cond_1
    move v11, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v11, v5

    :goto_1
    iput-object v7, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v12

    check-cast v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v12, v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v12

    check-cast v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v12, v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v12

    check-cast v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v12, v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v12

    check-cast v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v12, v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v5, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v5, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->durationTv:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v12

    long-to-int v12, v12

    div-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v0, v12}, Lcom/deepalhome/launcher/music/MusicAppWindow;->formatDuration(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v5

    iget-object v10, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverSource:Ljava/lang/Object;

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    instance-of v12, v5, Ljava/lang/String;

    if-eqz v12, :cond_6

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/deepalhome/launcher/music/MusicAppWindow;->normalizeCoverForCompare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_4

    :cond_4
    instance-of v12, v10, Ljava/lang/String;

    if-eqz v12, :cond_5

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicAppWindow;->normalizeCoverForCompare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_5
    const-string v10, ""

    :goto_2
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_3

    :cond_6
    instance-of v12, v5, Landroid/graphics/Bitmap;

    if-eqz v12, :cond_8

    instance-of v12, v10, Landroid/graphics/Bitmap;

    if-eqz v12, :cond_7

    if-ne v10, v5, :cond_7

    goto :goto_4

    :cond_7
    iget-object v10, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_9

    if-eq v10, v5, :cond_a

    goto :goto_3

    :cond_8
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$showCover(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/Object;)V

    :cond_a
    :goto_4
    if-nez v11, :cond_b

    goto :goto_6

    :cond_b
    iput-object v9, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentLyricRequestKey:Ljava/lang/String;

    iget-wide v9, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverInfoRequestToken:J

    add-long/2addr v9, v2

    iput-wide v9, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverInfoRequestToken:J

    sget-object v2, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne v15, v2, :cond_c

    goto :goto_5

    :cond_c
    iget-object v2, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicAppPackageName:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_5
    invoke-static {v0, v7}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$startLyricRequest(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;)J

    move-result-wide v11

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/music/MusicManager;->updateHUDMusicInfo(Lcom/deepalhome/launcher/music/Music;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v13, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    new-instance v14, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;

    move-object v1, v6

    check-cast v1, Lcom/deepalhome/launcher/music/MusicAppWindow;

    move-object v0, v14

    move-object v2, v7

    move-wide v3, v9

    move-object/from16 v5, p1

    move-wide v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;JLcom/deepalhome/launcher/music/Music;J)V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v14}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->loadMusicInfoPayload(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;)V

    :goto_6
    return-void

    :pswitch_0
    move-object v0, v6

    check-cast v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "toLowerCase(...)"

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-nez v6, :cond_d

    sget-object v6, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v18

    move-object v15, v0

    move-object/from16 v20, v6

    invoke-virtual/range {v15 .. v20}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->buildLyricRequestKey(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/util/s05/music/MusicSource;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    iput-object v4, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentMusicKey:Ljava/lang/String;

    iget-object v10, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->titleTv:Landroid/widget/TextView;

    if-nez v10, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v10, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->titleTv:Landroid/widget/TextView;

    if-nez v10, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_8
    iget-object v10, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->singerTv:Landroid/widget/TextView;

    if-nez v10, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    iget-object v10, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->singerTv:Landroid/widget/TextView;

    if-nez v10, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_a
    if-eqz v9, :cond_12

    iget-object v9, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentLyricRequestKey:Ljava/lang/String;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    goto/16 :goto_d

    :cond_12
    iput-object v7, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentLyricRequestKey:Ljava/lang/String;

    sget-object v7, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne v6, v7, :cond_13

    goto :goto_b

    :cond_13
    iget-object v6, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentMusicAppPackageName:Ljava/lang/String;

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_b
    iput-boolean v5, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isAwaitingLyric:Z

    iget-wide v5, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRequestToken:J

    add-long v1, v5, v2

    iput-wide v1, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRequestToken:J

    iget-object v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    iget-object v5, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingHandler:Landroid/os/Handler;

    if-eqz v3, :cond_14

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_14
    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateLyricAnchorLine()V

    sget-object v3, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v3

    if-nez v3, :cond_15

    iget v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    iput v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iget v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    iput v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    goto :goto_c

    :cond_15
    iget v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iget v6, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    if-ne v3, v6, :cond_16

    iget v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iget v7, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    if-ne v3, v7, :cond_16

    goto :goto_c

    :cond_16
    iput v6, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iget v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    iput v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->scheduleWindowUpdate(I)V

    :goto_c
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetLyricViewportHeight(Landroid/view/View;)V

    iget-object v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v3, :cond_17

    iget-object v6, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    const v7, 0x7f1302b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(...)"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->showLoading(Ljava/lang/String;)V

    :cond_17
    new-instance v3, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    const/16 v20, 0x2

    move-object v15, v3

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move-wide/from16 v18, v1

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Object;Ljava/lang/String;JI)V

    const-wide/16 v6, 0x9c4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    sget-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    new-instance v5, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    const/16 v20, 0x1

    move-object v15, v5

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move-wide/from16 v18, v1

    invoke-direct/range {v15 .. v20}, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/Object;Ljava/lang/String;JI)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v5}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->loadMusicInfoPayload(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;)V

    :goto_d
    return-void

    :pswitch_1
    sget-object v0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v6, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    invoke-virtual {v6, v8, v5}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->applyMusicInfo(Lcom/deepalhome/launcher/music/Music;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onMusicAppChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->this$0:Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    check-cast v0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    iput-object p1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$updateMusicAppInfo(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateFavoriteAvailability()V

    return-void

    :pswitch_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    check-cast v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iput-object p1, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentMusicAppPackageName:Ljava/lang/String;

    return-void

    :pswitch_1
    sget-object p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    iput-object p1, v0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentMusicAppPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->applyInteractionState()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$updateMusicAppInfo(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateFavoriteAvailability()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateSeekAvailability()V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->shouldSuppressHUDLyric()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudLyricManager;->clearLyric()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 14

    iget-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->this$0:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    move-object p0, v0

    check-cast p0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateSeekAvailability()V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isUserSeeking:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->positionTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v5

    long-to-int v5, v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {p0, v5}, Lcom/deepalhome/launcher/music/MusicAppWindow;->formatDuration(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    cmpg-float v5, v6, v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v6

    long-to-int v9, v6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v10

    if-eqz v1, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v11, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v3

    :goto_3
    if-eqz v1, :cond_4

    if-nez v5, :cond_4

    move v12, v3

    goto :goto_4

    :cond_4
    move v12, v4

    :goto_4
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v13

    move-object v8, v0

    check-cast v8, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual/range {v8 .. v13}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateProgressThumbPosition(IIZZF)V

    :cond_5
    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$getLyricRenderDelegate(Lcom/deepalhome/launcher/music/MusicAppWindow;)Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$getLyricRenderDelegate(Lcom/deepalhome/launcher/music/MusicAppWindow;)Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->isTtmlMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastLyricUpdateTime:J

    sub-long v5, v0, v5

    sget-object v7, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/deepalhome/launcher/music/MusicSettingsManager;->lyricUpdateThrottleMs$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v7}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_6

    iput-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastLyricUpdateTime:J

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$getLyricRenderDelegate(Lcom/deepalhome/launcher/music/MusicAppWindow;)Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v5

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getLyricOffsetMs()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updateTime(J)V

    :cond_6
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->showLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    if-eqz p1, :cond_b

    if-eq p1, v3, :cond_b

    const/4 v5, 0x2

    if-eq p1, v5, :cond_b

    if-eq p1, v2, :cond_8

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    goto/16 :goto_6

    :cond_7
    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :cond_8
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->loadingPb:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->startAnimation()V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isPlaying:Z

    if-nez p1, :cond_d

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isPlaying:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->resumeBackgroundFloat()V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isPlaying:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v5, 0x7

    :goto_5
    sput v5, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPlayStatus:I

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudLyricManager;->sendMediaInfo()V

    :cond_a
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->sendLyricToHUD()V

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->loadingPb:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->stopAnimation()V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isPlaying:Z

    if-eqz p1, :cond_d

    iput-boolean v4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isPlaying:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V

    :cond_c
    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorY:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_d
    :goto_6
    return-void

    :pswitch_0
    check-cast v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object p0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-nez p0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->isTtmlMode()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updateTime(J)V

    :cond_f
    :goto_7
    return-void

    :pswitch_1
    sget-object p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->applyPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
