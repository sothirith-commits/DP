.class public final Lcom/deepalhome/launcher/music/LyricChineseConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/LyricChineseConverter;

.field public static final simplifiedTransliterator$delegate:Lkotlin/Lazy;

.field public static final traditionalTransliterator$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/LyricChineseConverter;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/LyricChineseConverter;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/LyricChineseConverter;->INSTANCE:Lcom/deepalhome/launcher/music/LyricChineseConverter;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->$VALUES:[Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/deepalhome/launcher/music/LyricChineseConverter$traditionalTransliterator$2;->INSTANCE:Lcom/deepalhome/launcher/music/LyricChineseConverter$traditionalTransliterator$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/LyricChineseConverter;->traditionalTransliterator$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/deepalhome/launcher/music/LyricChineseConverter$simplifiedTransliterator$2;->INSTANCE:Lcom/deepalhome/launcher/music/LyricChineseConverter$simplifiedTransliterator$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/LyricChineseConverter;->simplifiedTransliterator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPayload(Lcom/deepalhome/launcher/music/ttml/LyricPayload;Z)Lcom/deepalhome/launcher/music/ttml/LyricPayload;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    instance-of v2, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    const-string v3, "source"

    const-string v4, "title"

    if-eqz v2, :cond_0

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    iget-object v2, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;->displayLrc:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/music/LyricChineseConverter;->convertText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;->rawText:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/deepalhome/launcher/music/LyricChineseConverter;->convertText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;->title:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;->source:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    invoke-direct {v3, v2, v1, v5, v0}, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    instance-of v2, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    iget-object v2, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;->fallbackLrc:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v5, Lcom/deepalhome/launcher/music/LyricChineseConverter;->INSTANCE:Lcom/deepalhome/launcher/music/LyricChineseConverter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/music/LyricChineseConverter;->convertText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    iget-object v2, v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-wide v9, v6, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    sget-object v8, Lcom/deepalhome/launcher/music/LyricChineseConverter;->INSTANCE:Lcom/deepalhome/launcher/music/LyricChineseConverter;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v6, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/deepalhome/launcher/music/LyricChineseConverter;->convertText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->tokens:Ljava/util/List;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    new-instance v12, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    sget-object v15, Lcom/deepalhome/launcher/music/LyricChineseConverter;->INSTANCE:Lcom/deepalhome/launcher/music/LyricChineseConverter;

    move-object/from16 p0, v2

    iget-object v2, v11, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->text:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/music/LyricChineseConverter;->convertText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    iget-wide v1, v11, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->startMs:J

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    iget-wide v7, v11, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->endMs:J

    move-object v15, v12

    move-wide/from16 v17, v1

    move-wide/from16 v19, v7

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move/from16 v1, p1

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    goto :goto_3

    :cond_2
    move-object/from16 p0, v2

    move-object/from16 v21, v7

    new-instance v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-wide v11, v6, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;-><init>(JJLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, p1

    goto :goto_2

    :cond_3
    move-object/from16 v21, v7

    new-instance v10, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    invoke-direct {v10, v5}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;-><init>(Ljava/util/ArrayList;)V

    iget-object v6, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;->rawTtml:Ljava/lang/String;

    const-string v1, "rawTtml"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;->title:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;->source:Ljava/lang/String;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    move-object v5, v3

    move-object/from16 v7, v21

    invoke-direct/range {v5 .. v10}, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;)V

    :goto_4
    return-object v3

    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static convertText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/music/LyricChineseConverter;->traditionalTransliterator$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/Transliterator;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/music/LyricChineseConverter;->simplifiedTransliterator$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/Transliterator;

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    const-string p1, "synchronized(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
