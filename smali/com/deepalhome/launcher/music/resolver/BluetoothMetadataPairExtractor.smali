.class public final Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static looksLikeArtist(Ljava/lang/String;)Z
    .locals 3

    const-string v0, " & "

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, ","

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u3001"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, " / "

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public static matchesSinger(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isSingerMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static pickPlainObservation(Ljava/util/List;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;
    .locals 5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v4, v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v4, p1, :cond_0

    sget-object v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v3, v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    if-nez v1, :cond_4

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    iget-object v1, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v1, p2, :cond_2

    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v0, v1, :cond_2

    move-object v2, p1

    :cond_3
    move-object v1, v2

    check-cast v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    :cond_4
    return-object v1
.end method

.method public static scoreCandidate(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/PairOrientation;Ljava/lang/String;ILjava/util/ArrayList;Lcom/deepalhome/launcher/music/resolver/BluetoothCandidateHints;Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;Z)Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;
    .locals 24

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v6, p9

    sget-object v7, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    iget-object v11, v1, Lcom/deepalhome/launcher/music/resolver/BluetoothCandidateHints;->plainTitle:Ljava/lang/String;

    if-eqz v11, :cond_1

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    sget-object v12, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v10}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v11

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v11, 0x0

    :goto_1
    iget-object v12, v1, Lcom/deepalhome/launcher/music/resolver/BluetoothCandidateHints;->plainSinger:Ljava/lang/String;

    invoke-static {v12, v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->matchesSinger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    iget-object v1, v1, Lcom/deepalhome/launcher/music/resolver/BluetoothCandidateHints;->creditValues:Ljava/util/List;

    instance-of v13, v1, Ljava/util/Collection;

    const/4 v14, 0x1

    if-eqz v13, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->matchesSinger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v1, v14

    :goto_2
    if-eqz v2, :cond_6

    sget-object v13, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v2, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->title:Ljava/lang/String;

    if-eqz v13, :cond_6

    invoke-static {v13}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_3

    :cond_5
    sget-object v15, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v10}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v14, :cond_6

    move v10, v14

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-eqz v2, :cond_7

    sget-object v13, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v2, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->singer:Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->matchesSinger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-ne v13, v14, :cond_7

    move v13, v14

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    if-nez v11, :cond_9

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move v15, v14

    :goto_7
    if-nez v12, :cond_b

    if-nez v1, :cond_b

    if-eqz v13, :cond_a

    goto :goto_8

    :cond_a
    const/16 v16, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v16, v14

    :goto_9
    invoke-static {v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->looksLikeArtist(Ljava/lang/String;)Z

    move-result v17

    invoke-static {v7}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataPairExtractor;->looksLikeArtist(Ljava/lang/String;)Z

    move-result v18

    sget-object v19, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;

    sget-object v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v7}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->observe(Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v14

    move/from16 p7, v13

    sget-object v13, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    move/from16 v19, v10

    invoke-static {v13, v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->observe(Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    move-result-object v10

    if-eq v3, v13, :cond_d

    sget-object v13, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ALBUM_ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v3, v13, :cond_c

    goto :goto_a

    :cond_c
    const/4 v13, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v13, 0x1

    :goto_b
    if-eq v3, v9, :cond_f

    sget-object v9, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->DISPLAY_TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-ne v3, v9, :cond_e

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v9, 0x1

    :goto_d
    const-string v3, "-"

    if-eqz v13, :cond_10

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    sget-object v2, Lcom/deepalhome/launcher/music/resolver/PairOrientation;->LEFT_TITLE_RIGHT_SINGER:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    if-ne v4, v2, :cond_10

    const/4 v2, 0x1

    goto :goto_e

    :cond_10
    const/4 v2, 0x0

    :goto_e
    if-eqz v13, :cond_11

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/deepalhome/launcher/music/resolver/PairOrientation;->LEFT_SINGER_RIGHT_TITLE:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    if-ne v4, v3, :cond_11

    const/16 p1, 0x1

    goto :goto_f

    :cond_11
    const/16 p1, 0x0

    :goto_f
    const-string v3, "pureSingerList"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v20, 0x0

    move/from16 v22, v2

    move/from16 v23, v3

    iget-wide v2, v6, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->duration:J

    cmp-long v2, v2, v20

    if-lez v2, :cond_12

    add-int/lit8 v2, p5, 0x6

    const-string v3, "duration>0"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_12
    move/from16 v2, p5

    :goto_10
    if-eqz v11, :cond_13

    add-int/lit8 v2, v2, 0x12

    const-string v3, "matchesPlainTitle"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_13
    if-eqz v12, :cond_14

    add-int/lit8 v2, v2, 0x12

    const-string v3, "matchesPlainSinger"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v1, :cond_15

    add-int/lit8 v2, v2, 0xc

    const-string v1, "matchesCreditSinger"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v17, :cond_16

    add-int/lit8 v2, v2, 0x8

    const-string v1, "singerLooksArtist"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v18, :cond_17

    add-int/lit8 v2, v2, -0x8

    const-string v1, "titleLooksArtist"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_17
    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->CREDIT_LINE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    iget-object v3, v14, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v3, v1, :cond_18

    add-int/lit8 v2, v2, -0x78

    const-string v11, "titleIsCredit"

    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_18
    sget-object v11, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->LYRIC_LIKE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v3, v11, :cond_19

    add-int/lit8 v2, v2, -0x3c

    const-string v3, "titleLooksLyric"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v3, v10, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;->kind:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    if-ne v3, v1, :cond_1a

    add-int/lit8 v2, v2, -0x50

    const-string v1, "singerIsCredit"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1a
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_1c

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x29

    if-ne v10, v11, :cond_1b

    add-int/lit8 v3, v3, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_12
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v1, v11, :cond_1e

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x28

    if-ne v11, v12, :cond_1d

    add-int/lit8 v10, v10, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1e
    if-gt v3, v10, :cond_27

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_13
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_20

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5d

    if-ne v10, v11, :cond_1f

    add-int/lit8 v3, v3, 0x1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_20
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_14
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v1, v11, :cond_22

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_21

    add-int/lit8 v10, v10, 0x1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_22
    if-gt v3, v10, :cond_27

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_24

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3e

    if-ne v10, v11, :cond_23

    add-int/lit8 v3, v3, 0x1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_24
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_16
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v1, v11, :cond_26

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3c

    if-ne v11, v12, :cond_25

    add-int/lit8 v10, v10, 0x1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_26
    if-le v3, v10, :cond_28

    :cond_27
    add-int/lit8 v2, v2, -0x26

    const-string v1, "titleUnbalancedBracket"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-gt v1, v3, :cond_29

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    if-lt v1, v3, :cond_29

    add-int/lit8 v2, v2, -0x12

    const-string v1, "titleTooShortForLongSinger"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_29
    if-eqz v9, :cond_2b

    add-int/lit8 v1, v2, 0xa

    const-string v3, "titleSourceComposite"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/deepalhome/launcher/music/resolver/PairOrientation;->LEFT_SINGER_RIGHT_TITLE:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    if-ne v4, v3, :cond_2a

    add-int/lit8 v2, v2, 0x14

    const-string v1, "titleSourceRightAsTitle"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2a
    move v2, v1

    :goto_17
    if-nez v17, :cond_2b

    if-nez v16, :cond_2b

    add-int/lit8 v2, v2, -0x8

    const-string v1, "singerLacksArtistEvidence"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2b
    if-eqz v13, :cond_34

    if-eqz v23, :cond_2c

    const/4 v1, 0x4

    goto :goto_18

    :cond_2c
    const/16 v1, 0x14

    :goto_18
    sub-int/2addr v2, v1

    if-eqz v23, :cond_2d

    const-string v1, "artistSingerListPenalty"

    goto :goto_19

    :cond_2d
    const-string v1, "artistSourcePenalty"

    :goto_19
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_31

    if-eqz v23, :cond_2e

    const/4 v9, 0x0

    goto :goto_1a

    :cond_2e
    if-eqz v22, :cond_2f

    const/16 v9, 0xc

    goto :goto_1a

    :cond_2f
    const/16 v9, 0x34

    :goto_1a
    sub-int/2addr v2, v9

    if-nez v9, :cond_30

    const-string v1, "artistSourceNoTitlePenaltySkipped"

    goto :goto_1b

    :cond_30
    const-string v1, "artistSourceMissingTitleEvidence"

    :goto_1b
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_31
    const-string v1, "/"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    add-int/lit8 v2, v2, -0x24

    const-string v1, "artistSlashPenalty"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_32
    if-eqz v22, :cond_33

    add-int/lit8 v2, v2, 0x36

    const-string v1, "artistDashTitleSinger"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_33
    if-eqz p1, :cond_34

    add-int/lit8 v2, v2, -0x1c

    const-string v1, "artistDashSingerTitlePenalty"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_34
    move-object/from16 v1, p8

    if-nez p10, :cond_35

    if-nez v1, :cond_35

    if-nez v15, :cond_35

    if-nez v16, :cond_35

    if-nez v22, :cond_35

    if-nez v23, :cond_35

    add-int/lit8 v2, v2, -0x1c

    const-string v3, "compositeWithoutEvidence"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_35
    if-eqz v1, :cond_39

    sget-object v3, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->title:Ljava/lang/String;

    iget-object v9, v1, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->singer:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-static {v3, v8}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isSingerMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    add-int/lit8 v2, v2, 0x2a

    const-string v3, "supportsLock"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_36
    if-eqz v19, :cond_37

    add-int/lit8 v2, v2, 0xc

    const-string v3, "matchesLockTitle"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_37
    if-eqz p7, :cond_38

    add-int/lit8 v2, v2, 0xc

    const-string v3, "matchesLockSinger"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_38
    :goto_1c
    iget-wide v9, v1, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->duration:J

    iget-wide v11, v6, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->duration:J

    const-wide/16 v13, 0x5dc

    invoke-static/range {v9 .. v14}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isDurationMatch(JJJ)Z

    move-result v1

    if-eqz v1, :cond_39

    add-int/lit8 v2, v2, 0x4

    const-string v1, "durationNearLock"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_39
    move v6, v2

    new-instance v9, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    invoke-static/range {p6 .. p6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    move-object v0, v9

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v7, v10

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/PairOrientation;Ljava/lang/String;ILjava/util/List;Z)V

    return-object v9
.end method
