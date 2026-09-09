.class public final Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    return-void
.end method

.method public final onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 50

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const v2, 0x7f130474

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicManager;->shouldNormalizeChineseMetadata(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Traditional-Simplified"

    invoke-static {v3}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "transliterate(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    move-object v11, v2

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    const v2, 0x7f130473

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicManager;->shouldNormalizeChineseMetadata(Ljava/lang/String;)Z

    move-result v3

    const/4 v8, 0x6

    const/4 v9, 0x0

    if-eqz v3, :cond_c

    const-string v3, "Traditional-Simplified"

    invoke-static {v3}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "transliterate(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, ","

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9, v8}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->Companion:Lcom/deepalhome/launcher/music/util/SingerNameConverter$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->instance:Lcom/deepalhome/launcher/music/util/SingerNameConverter;

    if-nez v6, :cond_8

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->instance:Lcom/deepalhome/launcher/music/util/SingerNameConverter;

    if-nez v6, :cond_7

    new-instance v6, Lcom/deepalhome/launcher/music/util/SingerNameConverter;

    invoke-direct {v6, v9}, Lcom/deepalhome/launcher/music/util/SingerNameConverter;-><init>(I)V

    sput-object v6, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->instance:Lcom/deepalhome/launcher/music/util/SingerNameConverter;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->fetchDataFromNetwork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_7
    :goto_2
    monitor-exit v5

    goto :goto_4

    :goto_3
    monitor-exit v5

    throw v0

    :cond_8
    :goto_4
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "englishName"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v6, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->englishToChineseMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, v6, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->isFetching:Z

    if-nez v5, :cond_9

    invoke-virtual {v6}, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->fetchDataFromNetwork()V

    :cond_9
    iget-object v5, v6, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->englishToChineseMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    move-object v4, v5

    :goto_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    const-string v17, ", "

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x3e

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    move-object v7, v2

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    sget-object v16, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;

    new-instance v4, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object v2, v4

    move-object v3, v10

    move-object/from16 p0, v4

    move-object v4, v1

    move-wide/from16 v28, v5

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v30, v7

    move-object v7, v14

    move v0, v8

    move v15, v9

    move-wide/from16 v8, v28

    move-object v0, v10

    move-object/from16 v31, v11

    move-wide/from16 v10, v17

    invoke-direct/range {v2 .. v11}, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.android.bluetooth"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->bluetoothResolver:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;

    sget-object v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->observe(Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v2

    sget-object v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->DISPLAY_TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-static {v4, v12}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->observe(Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v5

    sget-object v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-static {v6, v13}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->observe(Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v7

    sget-object v8, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ALBUM_ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-static {v8, v14}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->observe(Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v9

    filled-new-array {v2, v5, v7, v9}, [Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v5, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;->stateMachine:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;

    iget-object v7, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "observations"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->pickPlainObservation(Ljava/util/List;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    invoke-static {v2, v6, v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->pickPlainObservation(Ljava/util/List;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    const-string v11, "observation"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->CREDIT_LINE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v10, v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-eq v10, v11, :cond_10

    move-object/from16 v17, v8

    :cond_f
    const/4 v8, 0x0

    goto :goto_d

    :cond_10
    iget-object v10, v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    move-object/from16 v17, v8

    const/16 v8, 0x3a

    const/4 v11, 0x6

    invoke-static {v10, v8, v15, v15, v11}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-ltz v8, :cond_11

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_12

    :goto_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_c

    :cond_12
    iget-object v8, v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    const v10, 0xff1a

    invoke-static {v8, v10, v15, v15, v11}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-ltz v8, :cond_13

    goto :goto_b

    :cond_13
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_f

    goto :goto_a

    :goto_c
    sget-object v10, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iget-object v9, v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "substring(...)"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v11

    if-eqz v9, :cond_f

    :goto_d
    if-eqz v8, :cond_14

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v8, v17

    goto :goto_8

    :cond_15
    new-instance v8, Lcom/deepalhome/launcher/music/resolver/BluetoothCandidateHints;

    invoke-direct {v8, v3, v4, v6}, Lcom/deepalhome/launcher/music/resolver/BluetoothCandidateHints;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    sget-object v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->DISPLAY_TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-static {v2, v3, v4}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->pickPlainObservation(Ljava/util/List;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v3

    sget-object v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    sget-object v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ALBUM_ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-static {v2, v4, v6}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->pickPlainObservation(Ljava/util/List;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v11, v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    sget-object v15, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-eq v11, v15, :cond_16

    sget-object v15, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->DISPLAY_TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v11, v15, :cond_17

    :cond_16
    sget-object v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->EMPTY:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v10, v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-eq v10, v11, :cond_17

    sget-object v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->CREDIT_LINE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-eq v10, v11, :cond_17

    sget-object v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->COMPOSITE_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-eq v10, v11, :cond_17

    goto :goto_f

    :cond_17
    const/4 v15, 0x0

    goto :goto_e

    :cond_18
    const/4 v9, 0x0

    :goto_f
    check-cast v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, " | "

    const-string v15, " - "

    if-eqz v10, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v6

    move-object v6, v10

    check-cast v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-object/from16 v18, v10

    iget-object v10, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    move-object/from16 v33, v12

    sget-object v12, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-eq v10, v12, :cond_19

    sget-object v12, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ALBUM_ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v10, v12, :cond_1b

    :cond_19
    sget-object v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->COMPOSITE_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v12, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v12, v10, :cond_1b

    sget-object v10, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, " / "

    iget-object v6, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v6, v10, v12}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v10

    if-nez v10, :cond_1a

    goto :goto_11

    :cond_1a
    invoke-static {v6, v15, v12}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-static {v6, v11, v12}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_1d

    :cond_1b
    :goto_11
    move-object/from16 v6, v17

    move-object/from16 v12, v33

    goto :goto_10

    :cond_1c
    move-object/from16 v33, v12

    const/16 v18, 0x0

    :cond_1d
    move-object/from16 v6, v18

    check-cast v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    if-eqz v3, :cond_1e

    if-eqz v4, :cond_1e

    sget-object v20, Lcom/deepalhome/launcher/music/resolver/PairOrientation;->DIRECT:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    const-string v10, "directFields"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v23

    iget-object v10, v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    iget-object v3, v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    iget-object v4, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    const-string v21, "direct"

    const/16 v22, 0x96

    const/16 v27, 0x1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    move-object/from16 v24, v8

    move-object/from16 v25, v7

    move-object/from16 v26, p0

    invoke-static/range {v17 .. v27}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->scoreCandidate(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/PairOrientation;Ljava/lang/String;ILjava/util/ArrayList;Lcom/deepalhome/launcher/music/resolver/BluetoothCandidateHints;Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;Z)Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    if-eqz v9, :cond_20

    if-eqz v6, :cond_20

    sget-object v20, Lcom/deepalhome/launcher/music/resolver/PairOrientation;->DIRECT:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    sget-object v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v4, v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v4, v3, :cond_1f

    const/16 v3, 0x84

    :goto_12
    move/from16 v22, v3

    goto :goto_13

    :cond_1f
    const/16 v3, 0x76

    goto :goto_12

    :goto_13
    const-string v3, "titleWithSingerList"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v23

    iget-object v3, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    iget-object v4, v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    iget-object v6, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    const-string v21, "pureSingerList"

    const/16 v27, 0x0

    move-object/from16 v17, v4

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v7

    move-object/from16 v26, p0

    invoke-static/range {v17 .. v27}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->scoreCandidate(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/PairOrientation;Ljava/lang/String;ILjava/util/ArrayList;Lcom/deepalhome/launcher/music/resolver/BluetoothCandidateHints;Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;Z)Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v9, v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    sget-object v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->COMPOSITE_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v9, v10, :cond_21

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    sget-object v9, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;

    iget-object v10, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "source"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v6, :cond_23

    const/4 v10, 0x3

    if-eq v9, v10, :cond_23

    sget-object v9, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->delimiters:Ljava/util/List;

    goto :goto_16

    :cond_23
    filled-new-array {v15, v11}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    :goto_16
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v12, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v12, v10, v6}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-eqz v12, :cond_26

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v34, v3

    iget-object v3, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    move-object/from16 v24, v9

    const/4 v9, 0x6

    invoke-static {v3, v12, v6, v9}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v12, 0x2

    if-lt v6, v12, :cond_24

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    invoke-static {v12, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(ILjava/util/List;)Ljava/util/List;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x3e

    move-object/from16 v18, v10

    invoke-static/range {v17 .. v22}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_24

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_25

    :cond_24
    :goto_18
    move-object/from16 v35, v11

    goto :goto_19

    :cond_25
    new-instance v12, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;

    sget-object v9, Lcom/deepalhome/launcher/music/resolver/PairOrientation;->LEFT_TITLE_RIGHT_SINGER:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v35, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v6, v3, v9, v11}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/PairOrientation;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;

    sget-object v11, Lcom/deepalhome/launcher/music/resolver/PairOrientation;->LEFT_SINGER_RIGHT_TITLE:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v3, v6, v11, v10}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/PairOrientation;Ljava/lang/String;)V

    filled-new-array {v12, v9}, [Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1a

    :cond_26
    move-object/from16 v34, v3

    move-object/from16 v24, v9

    goto :goto_18

    :goto_19
    move-object/from16 v9, v24

    move-object/from16 v3, v34

    move-object/from16 v11, v35

    const/4 v6, 0x2

    goto/16 :goto_17

    :cond_27
    move-object/from16 v34, v3

    move-object/from16 v35, v11

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_1a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;

    sget-object v9, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    iget-object v10, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;->title:Ljava/lang/String;

    iget-object v11, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v36, v3

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "toLowerCase(...)"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v12, "composite:"

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v23

    iget-object v3, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;->orientation:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    iget-object v12, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;->singer:Ljava/lang/String;

    iget-object v6, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$ParsedCandidate;->separator:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v22, 0x60

    const/16 v27, 0x0

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    move-object/from16 v19, v11

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v7

    move-object/from16 v26, p0

    invoke-static/range {v17 .. v27}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->scoreCandidate(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/PairOrientation;Ljava/lang/String;ILjava/util/ArrayList;Lcom/deepalhome/launcher/music/resolver/BluetoothCandidateHints;Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;Z)Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v36

    goto :goto_1b

    :cond_28
    move-object/from16 v3, v34

    move-object/from16 v11, v35

    goto/16 :goto_15

    :cond_29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    iget-object v7, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    if-eqz v7, :cond_2a

    iget-object v6, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v6, :cond_2a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2b
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    sget-object v8, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    iget-object v9, v7, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "value"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v10, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildTitleProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object v9

    iget-object v9, v9, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->strict:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    const-string v9, "value"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildSingerProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->strict:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2d
    new-instance v3, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$extract$$inlined$sortedByDescending$1;

    invoke-direct {v3}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor$extract$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    const-string v4, "candidates"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    if-eqz v4, :cond_4f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v8, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->singer:Ljava/lang/String;

    iget-object v9, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->title:Ljava/lang/String;

    if-eqz v7, :cond_2f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    invoke-virtual {v10, v9, v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->sameSongAs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2f
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_30

    const/4 v6, 0x0

    goto :goto_20

    :cond_30
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    iget v6, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    add-int/lit8 v6, v6, 0x18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_31
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    iget v7, v7, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    add-int/lit8 v7, v7, 0x18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_31

    move-object v6, v7

    goto :goto_1f

    :cond_32
    :goto_20
    if-eqz v6, :cond_33

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_21

    :cond_33
    const/4 v5, 0x0

    :goto_21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v11, v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    sget-object v12, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-eq v11, v12, :cond_35

    sget-object v12, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->DISPLAY_TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v11, v12, :cond_34

    :cond_35
    sget-object v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v10, v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v10, v11, :cond_34

    goto :goto_22

    :cond_36
    const/4 v7, 0x0

    :goto_22
    check-cast v7, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    if-eqz v7, :cond_37

    iget-object v6, v7, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    goto :goto_23

    :cond_37
    const/4 v6, 0x0

    :goto_23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v12, v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    sget-object v15, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-eq v12, v15, :cond_39

    sget-object v15, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ALBUM_ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v12, v15, :cond_38

    :cond_39
    sget-object v12, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v11, v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v11, v12, :cond_38

    goto :goto_24

    :cond_3a
    const/4 v10, 0x0

    :goto_24
    check-cast v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    if-eqz v10, :cond_3b

    iget-object v7, v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    goto :goto_25

    :cond_3b
    const/4 v7, 0x0

    :goto_25
    if-eqz v6, :cond_3e

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3c

    goto :goto_26

    :cond_3c
    if-eqz v7, :cond_3e

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3d

    goto :goto_26

    :cond_3d
    sget-object v10, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v8}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-static {v10, v7}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isSingerMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    const/16 v6, 0xaa

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_3e
    :goto_26
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_40

    :cond_3f
    const/4 v15, 0x0

    goto/16 :goto_28

    :cond_40
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_41
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v7, v7, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    sget-object v10, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "value"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v10, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildTitleProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object v11

    iget-object v11, v11, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->strict:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildSingerProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->strict:Ljava/lang/String;

    const-string v12, "value"

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildTitleProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object v12

    iget-object v12, v12, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->strict:Ljava/lang/String;

    const-string v15, "value"

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildSingerProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->strict:Ljava/lang/String;

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_42

    invoke-static {v12}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_43

    :cond_42
    const/4 v15, 0x0

    goto :goto_27

    :cond_43
    const/4 v15, 0x0

    invoke-static {v11, v12, v15}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v17

    if-nez v17, :cond_44

    invoke-static {v7, v12, v15}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-eqz v12, :cond_41

    :cond_44
    invoke-static {v11, v10, v15}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v11

    if-nez v11, :cond_45

    invoke-static {v7, v10, v15}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eqz v7, :cond_41

    :cond_45
    const/16 v6, 0x7d

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_28
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const-string v7, ""

    const/16 v10, 0x5c

    if-eqz v6, :cond_46

    goto :goto_2a

    :cond_46
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v12, v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    sget-object v15, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-eq v12, v15, :cond_47

    sget-object v15, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->DISPLAY_TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v12, v15, :cond_48

    :cond_47
    sget-object v12, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v7}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object v12

    iget-object v11, v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_48

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2a

    :cond_48
    const/4 v15, 0x0

    goto :goto_29

    :cond_49
    :goto_2a
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_2b

    :cond_4a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v11, v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    sget-object v12, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-eq v11, v12, :cond_4c

    sget-object v12, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ALBUM_ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v11, v12, :cond_4b

    :cond_4c
    sget-object v11, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object v11

    iget-object v9, v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    invoke-static {v11, v9}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isSingerMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_4d
    :goto_2b
    sget-object v6, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    move-object/from16 v7, p0

    iget-wide v8, v7, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->duration:J

    iget-wide v10, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->duration:J

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v21, 0x5dc

    move-wide/from16 v17, v10

    move-wide/from16 v19, v8

    invoke-static/range {v17 .. v22}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isDurationMatch(JJJ)Z

    move-result v6

    if-eqz v6, :cond_4e

    add-int/lit8 v5, v5, 0x4

    :cond_4e
    move v9, v5

    goto :goto_2c

    :cond_4f
    move-object/from16 v7, p0

    const/4 v9, 0x0

    :goto_2c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_50

    const/4 v5, 0x0

    goto :goto_2d

    :cond_50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_51

    goto :goto_2d

    :cond_51
    move-object v6, v5

    check-cast v6, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    iget v6, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    :cond_52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    iget v10, v10, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    if-ge v6, v10, :cond_53

    move-object v5, v8

    move v6, v10

    :cond_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_52

    :goto_2d
    check-cast v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    const/16 v3, 0x73

    if-eqz v4, :cond_54

    if-lt v9, v3, :cond_54

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    iget v1, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->confidence:I

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v7, v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->touch(Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;I)Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;

    sget-object v1, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->KEEP:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    const-string v2, "lockSupported:"

    invoke-static {v2, v9}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->title:Ljava/lang/String;

    iget-object v4, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->singer:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/ResolveDecision;Ljava/lang/String;)V

    :goto_2e
    const/4 v8, 0x0

    goto/16 :goto_40

    :cond_54
    iget-wide v10, v7, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->receivedAt:J

    const-wide/16 v17, 0x1388

    const-wide/16 v19, 0x0

    if-eqz v5, :cond_67

    iget v6, v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    if-eqz v4, :cond_55

    iget-object v8, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->title:Ljava/lang/String;

    iget-object v12, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->singer:Ljava/lang/String;

    invoke-virtual {v5, v8, v12}, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->sameSongAs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_55

    const/4 v15, 0x0

    iput-object v15, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    iget v1, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->confidence:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v7, v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->touch(Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;I)Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;

    sget-object v1, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->KEEP:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    const-string v2, "bestCandidateSupportsLock:"

    invoke-static {v2, v6}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v8, v12, v1, v2}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/ResolveDecision;Ljava/lang/String;)V

    goto :goto_2e

    :cond_55
    move-object/from16 p0, v14

    if-eqz v4, :cond_56

    iget-wide v14, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->duration:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2f

    :cond_56
    const/4 v8, 0x0

    :goto_2f
    if-eqz v8, :cond_58

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v14, v19

    if-lez v12, :cond_58

    iget-wide v14, v7, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->duration:J

    cmp-long v12, v14, v19

    if-gtz v12, :cond_57

    goto :goto_30

    :cond_57
    sget-object v12, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v38, 0x5dc

    move-wide/from16 v36, v14

    invoke-static/range {v34 .. v39}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isDurationMatch(JJJ)Z

    move-result v8

    const/4 v12, 0x1

    xor-int/2addr v8, v12

    move/from16 v32, v8

    goto :goto_31

    :cond_58
    :goto_30
    const/16 v32, 0x0

    :goto_31
    iget-object v8, v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    iget-object v14, v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    if-nez v12, :cond_5c

    invoke-static {v14}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_59

    goto :goto_33

    :cond_59
    iget-boolean v12, v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->fromDirectFields:Z

    if-nez v4, :cond_5a

    if-eqz v12, :cond_5c

    goto :goto_32

    :cond_5a
    const/16 v15, 0x87

    if-eqz v12, :cond_5b

    if-lt v6, v15, :cond_5b

    goto :goto_32

    :cond_5b
    if-lt v6, v15, :cond_5c

    sub-int v12, v6, v9

    const/16 v15, 0x14

    if-lt v12, v15, :cond_5c

    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchImmediate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v7, v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->switchTo(Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;

    move-result-object v0

    goto/16 :goto_2e

    :cond_5c
    :goto_33
    iget-object v12, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    if-eqz v12, :cond_5f

    sget-object v15, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    iget-object v3, v12, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->title:Ljava/lang/String;

    move-object/from16 v22, v13

    iget-object v13, v12, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->singer:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v13}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object v15

    invoke-static {v15, v8}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-static {v15, v14}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isSingerMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_60

    iget-wide v14, v12, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->lastSeenAt:J

    sub-long/2addr v10, v14

    cmp-long v8, v10, v17

    if-gtz v8, :cond_60

    iget v8, v12, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->score:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v39

    iget-wide v10, v7, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    cmp-long v10, v10, v19

    if-lez v10, :cond_5d

    goto :goto_34

    :cond_5d
    const/4 v8, 0x0

    :goto_34
    if-eqz v8, :cond_5e

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_35
    move-wide/from16 v37, v10

    goto :goto_36

    :cond_5e
    iget-wide v10, v12, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->duration:J

    goto :goto_35

    :goto_36
    iget v8, v12, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->seenCount:I

    const/4 v10, 0x1

    add-int/lit8 v40, v8, 0x1

    new-instance v8, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    iget-wide v10, v7, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->receivedAt:J

    move-object/from16 v34, v8

    move-object/from16 v35, v3

    move-object/from16 v36, v13

    move-wide/from16 v41, v10

    invoke-direct/range {v34 .. v42}, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;-><init>(Ljava/lang/String;Ljava/lang/String;JIIJ)V

    goto :goto_37

    :cond_5f
    move-object/from16 v22, v13

    :cond_60
    new-instance v8, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    iget-wide v10, v7, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->receivedAt:J

    iget-object v3, v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    iget-object v12, v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    iget-wide v13, v7, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->duration:J

    iget v15, v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    const/16 v47, 0x1

    move-object/from16 v41, v8

    move-object/from16 v42, v3

    move-object/from16 v43, v12

    move-wide/from16 v44, v13

    move/from16 v46, v15

    move-wide/from16 v48, v10

    invoke-direct/range {v41 .. v49}, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;-><init>(Ljava/lang/String;Ljava/lang/String;JIIJ)V

    :goto_37
    iput-object v8, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    iget-object v3, v8, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->title:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    iget-object v3, v8, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->singer:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_39

    :cond_61
    iget v3, v8, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->seenCount:I

    const/4 v11, 0x2

    if-ge v3, v11, :cond_62

    goto :goto_39

    :cond_62
    iget v8, v8, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->score:I

    if-nez v4, :cond_63

    const/16 v10, 0x80

    if-lt v8, v10, :cond_66

    goto :goto_38

    :cond_63
    const/16 v10, 0x66

    if-ge v8, v10, :cond_64

    goto :goto_39

    :cond_64
    if-nez v32, :cond_65

    const/16 v8, 0x73

    if-ge v9, v8, :cond_66

    :cond_65
    :goto_38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchPending:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v7, v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->switchTo(Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;

    move-result-object v0

    goto/16 :goto_2e

    :cond_66
    :goto_39
    const/4 v8, 0x0

    goto :goto_3a

    :cond_67
    move-object/from16 v22, v13

    move-object/from16 p0, v14

    iget-object v3, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    if-eqz v3, :cond_68

    iget-wide v12, v3, Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;->lastSeenAt:J

    move-wide/from16 v19, v12

    :cond_68
    sub-long v10, v10, v19

    cmp-long v3, v10, v17

    if-lez v3, :cond_66

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    :goto_3a
    const/4 v3, -0x1

    if-eqz v4, :cond_6a

    iget v1, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->confidence:I

    invoke-static {v4, v7, v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->touch(Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;I)Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;

    sget-object v1, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->HOLD:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "holdLocked:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v12, 0x3a

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_69

    iget v3, v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    :cond_69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->title:Ljava/lang/String;

    iget-object v4, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->singer:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/ResolveDecision;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_6a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v7, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    sget-object v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-eq v7, v9, :cond_6c

    sget-object v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->DISPLAY_TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v7, v9, :cond_6b

    :cond_6c
    sget-object v7, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v4, v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v4, v7, :cond_6b

    goto :goto_3b

    :cond_6d
    move-object v6, v8

    :goto_3b
    check-cast v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    if-eqz v6, :cond_6e

    iget-object v0, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    if-eqz v0, :cond_6e

    goto :goto_3c

    :cond_6e
    sget-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;

    if-nez v1, :cond_6f

    move-object/from16 v1, v33

    :cond_6f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v4, v2, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    sget-object v7, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-eq v4, v7, :cond_71

    sget-object v7, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ALBUM_ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v4, v7, :cond_70

    :cond_71
    sget-object v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v2, v2, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v2, v4, :cond_70

    goto :goto_3d

    :cond_72
    move-object v6, v8

    :goto_3d
    check-cast v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    if-eqz v6, :cond_73

    iget-object v1, v6, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->normalized:Ljava/lang/String;

    if-eqz v1, :cond_73

    goto :goto_3f

    :cond_73
    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;

    if-nez v22, :cond_74

    move-object/from16 v13, p0

    goto :goto_3e

    :cond_74
    move-object/from16 v13, v22

    :goto_3e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3f
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->HOLD:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "holdNoLock:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_75

    iget v3, v5, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    :cond_75
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/ResolveDecision;Ljava/lang/String;)V

    :goto_40
    new-instance v6, Lcom/deepalhome/launcher/music/resolver/ResolvedSongInfo;

    iget-object v1, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;->decision:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    iget-object v2, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;->reason:Ljava/lang/String;

    iget-object v3, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;->title:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;->singer:Ljava/lang/String;

    invoke-direct {v6, v3, v0, v1, v2}, Lcom/deepalhome/launcher/music/resolver/ResolvedSongInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/ResolveDecision;Ljava/lang/String;)V

    goto :goto_41

    :cond_76
    const/4 v8, 0x0

    move-object v6, v8

    :goto_41
    if-eqz v6, :cond_77

    iget-object v0, v6, Lcom/deepalhome/launcher/music/resolver/ResolvedSongInfo;->title:Ljava/lang/String;

    iget-object v1, v6, Lcom/deepalhome/launcher/music/resolver/ResolvedSongInfo;->singer:Ljava/lang/String;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v3, v28

    goto :goto_42

    :cond_77
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v3, v28

    move-object/from16 v0, v30

    move-object/from16 v2, v31

    invoke-static {v2, v0, v3, v4}, Lcom/deepalhome/launcher/music/MusicManager;->getStableMusicInfo(Ljava/lang/String;Ljava/lang/String;J)Lkotlin/Pair;

    move-result-object v2

    :goto_42
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    new-instance v0, Lcom/deepalhome/launcher/music/Music;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.media.metadata.ART"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_78

    const-string v1, "android.media.metadata.ART_URI"

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_78

    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_78

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_78
    if-nez v1, :cond_79

    const-string v1, ""

    :cond_79
    move-object/from16 v18, v1

    move-object/from16 v16, v0

    move-wide/from16 v20, v3

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/music/Music;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    sget-object v3, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne v1, v3, :cond_7a

    goto :goto_44

    :cond_7a
    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->currentNotificationPackage:Ljava/lang/String;

    if-nez v1, :cond_7c

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v15

    goto :goto_43

    :cond_7b
    move-object v15, v8

    goto :goto_43

    :cond_7c
    move-object v15, v1

    :goto_43
    const-string v1, "com.android.bluetooth"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    :goto_44
    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->normalizeBluetoothMusicInfo(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/Music;

    move-result-object v1

    goto :goto_46

    :cond_7d
    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Lcom/deepalhome/launcher/music/MusicManager;->getStableMusicInfo(Ljava/lang/String;Ljava/lang/String;J)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    goto :goto_45

    :cond_7e
    move-object v1, v0

    goto :goto_46

    :cond_7f
    :goto_45
    const/16 v15, 0xa

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v9, v0

    invoke-static/range {v9 .. v16}, Lcom/deepalhome/launcher/music/Music;->copy$default(Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;JILjava/lang/Object;)Lcom/deepalhome/launcher/music/Music;

    move-result-object v1

    :goto_46
    if-nez v1, :cond_80

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bluetooth notification song info not stable, waiting for author update before refresh: title="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", singer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_80
    sput-object v1, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationMusic:Lcom/deepalhome/launcher/music/Music;

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/music/MusicManager;->persistLastMusic(Lcom/deepalhome/launcher/music/Music;Landroid/media/MediaMetadata;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationInfoAt:J

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, v2, :cond_81

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicManager;->notifyInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    :cond_81
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->evaluateActiveDataSource()V

    :goto_47
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastPlaybackState:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPlaybackState:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->stopPlaybackPolling()V

    sput-boolean v3, Lcom/deepalhome/launcher/music/MusicManager;->playbackPollingActive:Z

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    sget-object v4, Lcom/deepalhome/launcher/music/MusicManager;->playbackPollingRunnable:Lcom/deepalhome/launcher/music/MusicManager$playbackPollingRunnable$1;

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->stopPlaybackPolling()V

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object v4, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Lcom/deepalhome/launcher/music/MusicManager;->publishPlaybackState(Landroid/media/session/PlaybackState;Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_6

    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move p0, v0

    goto :goto_4

    :cond_6
    :goto_3
    move p0, v3

    :goto_4
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-eq v1, v2, :cond_8

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-eq v1, v3, :cond_8

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    move v3, v0

    :cond_8
    :goto_5
    if-eqz p0, :cond_9

    if-eqz v3, :cond_9

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->runOnMain(Lkotlin/jvm/functions/Function0;)V

    :cond_9
    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->bluetoothResolver:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;->stateMachine:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    iput-object v1, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    sput-object v1, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->stopPlaybackPolling()V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->buildFallbackPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager;->publishPlaybackState(Landroid/media/session/PlaybackState;Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->runOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "event"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
