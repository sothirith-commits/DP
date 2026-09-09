.class public final Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classifyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;
    .locals 15

    move-object/from16 v2, p2

    const/4 v0, 0x1

    if-eqz v2, :cond_d

    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "<tt"

    invoke-static {v1, v4, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "<?xml"

    invoke-static {v1, v5, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v4, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, "ttml_signature_invalid"

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->legacy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_2
    sget-object v1, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_3
    move-object v6, v7

    goto/16 :goto_8

    :cond_5
    invoke-static {v1}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->tagName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "US"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "tt"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->collectElements(Lorg/w3c/dom/Element;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-static {v4}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->parseLine(Lorg/w3c/dom/Element;)Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_8
    invoke-static {v3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->normalizeLines(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v7

    :goto_5
    if-eqz v1, :cond_a

    new-instance v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;-><init>(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :cond_a
    move-object v0, v7

    goto :goto_7

    :goto_6
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_7
    sget v1, Lkotlin/Result;->$r8$clinit:I

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_b

    move-object v0, v7

    :cond_b
    check-cast v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    move-object v6, v0

    :goto_8
    if-nez v6, :cond_c

    const-string v4, "ttml_parse_failed"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->legacy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;

    new-instance v8, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v4, p0

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;)V

    const-string v1, "ttml"

    invoke-direct {v0, v8, v1, v7}, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;-><init>(Lcom/deepalhome/launcher/music/ttml/LyricPayload;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_d
    :goto_9
    const-string v13, "ttml_missing"

    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p3

    move-object/from16 v14, p5

    invoke-static/range {v9 .. v14}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->legacy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;

    move-result-object v0

    return-object v0
.end method

.method public static legacy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;
    .locals 1

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p5, 0x5f

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "source"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p5, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    invoke-direct {p5, p2, p1, p0, p3}, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;

    const-string p1, "legacy"

    invoke-direct {p0, p5, p1, p4}, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;-><init>(Lcom/deepalhome/launcher/music/ttml/LyricPayload;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
