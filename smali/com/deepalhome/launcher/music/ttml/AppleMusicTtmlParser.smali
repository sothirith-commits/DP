.class public final Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendVisibleText(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .locals 5

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->sanitizeTextNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    invoke-static {v2}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->tagName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "br"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-static {v2, p1}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->appendVisibleText(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static collectElements(Lorg/w3c/dom/Element;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-static {v3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->tagName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "p"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->collectElements(Lorg/w3c/dom/Element;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static collectSegments(Lorg/w3c/dom/Node;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 8

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_f

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->sanitizeTextNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_e

    new-instance v3, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;

    invoke-direct {v3, v2, v5, v5}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    invoke-static {v2}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->tagName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "br"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v2, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;

    const-string v3, "\n"

    invoke-direct {v2, v3, v5, v5}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_5
    const-string v4, "span"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "begin"

    invoke-static {v2, v3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->parseTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, p1

    :cond_6
    const-string v4, "end"

    invoke-static {v2, v4}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->parseTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_a

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "dur"

    invoke-static {v2, v6}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->parseTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    :cond_7
    const-wide/16 v6, 0x0

    :goto_3
    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_8
    if-nez v5, :cond_9

    move-object v4, p2

    goto :goto_4

    :cond_9
    move-object v4, v5

    :cond_a
    :goto_4
    invoke-static {v2}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->hasTimedChildSpan(Lorg/w3c/dom/Element;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v2, v3, v4, p3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->collectSegments(Lorg/w3c/dom/Node;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v5}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->appendVisibleText(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "toString(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c

    new-instance v2, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;

    invoke-direct {v2, v5, v3, v4}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-static {v2, v3, v4, p3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->collectSegments(Lorg/w3c/dom/Node;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_d
    invoke-static {v2, p1, p2, p3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->collectSegments(Lorg/w3c/dom/Node;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;)V

    :cond_e
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public static hasTimedChildSpan(Lorg/w3c/dom/Element;)Z
    .locals 7

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-static {v3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->tagName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "span"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "begin"

    invoke-static {v3, v4}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "end"

    invoke-static {v3, v4}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "dur"

    invoke-static {v3, v4}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    return v5

    :cond_3
    invoke-static {v3}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->hasTimedChildSpan(Lorg/w3c/dom/Element;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v5

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public static normalizeLines(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 26

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-wide v5, v4, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    invoke-static {v5, v6, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long v9, v5, v7

    iget-wide v11, v4, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    invoke-static {v11, v12, v9, v10}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v4, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->tokens:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    const/16 v16, 0x0

    if-ltz v13, :cond_5

    check-cast v14, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    invoke-static {v15, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    if-eqz v13, :cond_0

    iget-wide v7, v13, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->startMs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 p0, v1

    move-wide/from16 v18, v2

    goto :goto_2

    :cond_0
    move-object/from16 p0, v1

    move-wide/from16 v18, v2

    move-object/from16 v7, v16

    :goto_2
    iget-wide v1, v14, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->startMs:J

    invoke-static {v1, v2, v5, v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v22

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v7, v1

    goto :goto_3

    :cond_1
    const-wide/16 v1, 0x1

    add-long v7, v22, v1

    :goto_3
    iget-wide v1, v14, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->endMs:J

    invoke-static {v1, v2, v7, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    invoke-static {v1, v2, v10, v11}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(JJ)J

    move-result-wide v24

    iget-object v1, v14, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->text:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    cmp-long v1, v24, v22

    if-lez v1, :cond_2

    goto :goto_4

    :cond_2
    move-object/from16 v14, v16

    :goto_4
    if-eqz v14, :cond_3

    iget-object v1, v14, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v16, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    move-object/from16 v20, v16

    move-object/from16 v21, v1

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;-><init>(Ljava/lang/String;JJ)V

    :cond_3
    move-object/from16 v1, v16

    if-eqz v1, :cond_4

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v7, 0x1

    move-object/from16 v1, p0

    move v13, v15

    move-wide/from16 v2, v18

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v16

    :cond_6
    move-object/from16 p0, v1

    move-wide/from16 v18, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v16, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$normalizeLines$1;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$normalizeLines$1;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v13, ""

    const/16 v17, 0x1e

    move-object v12, v9

    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    move-object v7, v1

    move-object v2, v9

    move-wide v8, v5

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;-><init>(JJLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-wide v2, v5

    goto/16 :goto_0

    :cond_7
    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method public static parseLine(Lorg/w3c/dom/Element;)Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->parseTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "end"

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->parseTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v2, "dur"

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->attr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->parseTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :cond_2
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v2, v10}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser;->collectSegments(Lorg/w3c/dom/Node;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;)V

    sget-object v8, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$parseLine$visibleText$1;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$parseLine$visibleText$1;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, ""

    const/16 v9, 0x1e

    move-object v4, v10

    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;

    iget-object v7, v6, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;->startMs:Ljava/lang/Long;

    if-eqz v7, :cond_5

    iget-object v6, v6, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;->text:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "List is empty."

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;

    iget-object v10, v8, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    iget-object v10, v8, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;->startMs:Ljava/lang/Long;

    iget-object v11, v8, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;->text:Ljava/lang/String;

    if-eqz v10, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "toString(...)"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v11, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v8, v8, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$Segment;->endMs:Ljava/lang/Long;

    invoke-direct {v11, v9, v12, v13, v8}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;-><init>(Ljava/lang/String;JLjava/lang/Long;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v8, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->copy$default(Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->copy$default(Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_3
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_d
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1f4

    if-eqz v6, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_5

    :cond_e
    add-long/2addr v9, v0

    :goto_5
    add-long/2addr v7, v0

    invoke-static {v9, v10, v7, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v8

    new-instance v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    move-object v4, v2

    move-wide v6, v0

    invoke-direct/range {v4 .. v9}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;-><init>(Ljava/lang/String;JJ)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_f
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_6
    move-object v7, v0

    goto/16 :goto_c

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_6

    :cond_11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_7

    :cond_12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    iget-wide v11, v1, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->startMs:J

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_8
    if-ge v4, v1, :cond_19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    iget-wide v13, v6, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->startMs:J

    invoke-static {v13, v14, v11, v12}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v13

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    move/from16 p0, v4

    if-eqz v15, :cond_13

    iget-wide v3, v15, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->startMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_a

    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_a

    :cond_15
    add-long v3, v13, v9

    :goto_a
    iget-object v15, v6, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->endMs:Ljava/lang/Long;

    if-eqz v15, :cond_16

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_16
    add-long v9, v13, v7

    invoke-static {v3, v4, v9, v10}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v19

    iget-object v3, v6, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->text:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    cmp-long v3, v19, v13

    if-gtz v3, :cond_17

    goto :goto_b

    :cond_17
    new-instance v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    iget-object v4, v6, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->text:Ljava/lang/String;

    move-object v15, v3

    move-object/from16 v16, v4

    move-wide/from16 v17, v13

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v11, v13

    :cond_18
    :goto_b
    move/from16 v4, p0

    const/4 v3, 0x0

    const-wide/16 v9, 0x1f4

    goto :goto_8

    :cond_19
    move-object v0, v5

    goto/16 :goto_6

    :goto_c
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    return-object v0

    :cond_1a
    new-instance v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    iget-wide v8, v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->startMs:J

    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    iget-wide v10, v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->endMs:J

    sget-object v5, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$parseLine$1;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$parseLine$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, ""

    const/16 v6, 0x1e

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-wide v2, v8

    move-wide v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;-><init>(JJLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static parseTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "ms"

    invoke-static {p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, p0}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_2

    :cond_2
    const-string v2, "s"

    invoke-static {p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x3e8

    if-eqz v3, :cond_3

    invoke-static {v2, p0}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    int-to-double v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    const/16 v2, 0x3a

    invoke-static {p0, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v3

    if-eqz v3, :cond_6

    new-array v3, v0, [C

    const/4 v5, 0x0

    aput-char v2, v3, v5

    invoke-static {p0, v3}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_4
    move-wide v7, v5

    :goto_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_5
    const/16 p0, 0xe10

    int-to-long v9, p0

    mul-long/2addr v5, v9

    const/16 p0, 0x3c

    int-to-long v9, p0

    mul-long/2addr v7, v9

    add-long/2addr v7, v5

    long-to-double v5, v7

    add-double/2addr v5, v1

    int-to-double v0, v4

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    int-to-double v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_7
    :goto_2
    return-object v1
.end method

.method public static sanitizeTextNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_3

    const/16 v1, 0xa0

    const/16 v2, 0x20

    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xd

    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[\\t\\x0B\\f\\r ]+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static tagName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p0, 0x3a

    invoke-static {v0, p0}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    const-string v2, "toLowerCase(...)"

    invoke-static {v0, v1, p0, v0, v2}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
