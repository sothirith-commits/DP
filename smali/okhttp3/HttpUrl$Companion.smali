.class public final Lokhttp3/HttpUrl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/HttpUrl$Companion;-><init>()V

    return-void
.end method

.method public static canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p10

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    :goto_0
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    :cond_1
    move/from16 v5, p3

    :goto_1
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v2, 0x40

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v4, p8

    :goto_5
    const/16 v9, 0x80

    and-int/2addr v2, v9

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v2, p9

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "<this>"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move v11, v3

    :goto_7
    if-ge v11, v5, :cond_18

    invoke-virtual {v0, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    const/16 v13, 0x20

    const/16 v14, 0x2b

    const/16 v15, 0x25

    const/16 v10, 0x7f

    if-lt v12, v13, :cond_a

    if-eq v12, v10, :cond_a

    if-lt v12, v9, :cond_7

    if-eqz v4, :cond_a

    :cond_7
    int-to-char v9, v12

    invoke-static {v1, v9}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v9

    if-nez v9, :cond_a

    if-ne v12, v15, :cond_8

    if-eqz v6, :cond_a

    if-eqz v7, :cond_8

    invoke-static {v0, v11, v5}, Lokhttp3/HttpUrl$Companion;->isPercentEncoded(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_8
    if-ne v12, v14, :cond_9

    if-eqz v8, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v11, v9

    const/16 v9, 0x80

    goto :goto_7

    :cond_a
    :goto_8
    new-instance v9, Lokio/Buffer;

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    invoke-virtual {v9, v0, v3, v11}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)V

    const/4 v3, 0x0

    :goto_9
    if-ge v11, v5, :cond_17

    invoke-virtual {v0, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    if-eqz v6, :cond_c

    const/16 v15, 0x9

    if-eq v12, v15, :cond_b

    const/16 v15, 0xa

    if-eq v12, v15, :cond_b

    const/16 v15, 0xc

    if-eq v12, v15, :cond_b

    const/16 v15, 0xd

    if-ne v12, v15, :cond_c

    :cond_b
    :goto_a
    const/16 v15, 0x80

    goto :goto_c

    :cond_c
    if-ne v12, v14, :cond_e

    if-eqz v8, :cond_e

    if-eqz v6, :cond_d

    const-string v15, "+"

    goto :goto_b

    :cond_d
    const-string v15, "%2B"

    :goto_b
    invoke-virtual {v9, v15}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    if-lt v12, v13, :cond_12

    if-eq v12, v10, :cond_12

    const/16 v15, 0x80

    if-lt v12, v15, :cond_f

    if-eqz v4, :cond_13

    :cond_f
    int-to-char v10, v12

    invoke-static {v1, v10}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v10

    if-nez v10, :cond_13

    const/16 v10, 0x25

    if-ne v12, v10, :cond_10

    if-eqz v6, :cond_13

    if-eqz v7, :cond_10

    invoke-static {v0, v11, v5}, Lokhttp3/HttpUrl$Companion;->isPercentEncoded(Ljava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v9, v12}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    :cond_11
    :goto_c
    const/16 v14, 0x25

    goto :goto_10

    :cond_12
    const/16 v15, 0x80

    :cond_13
    :goto_d
    if-nez v3, :cond_14

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    :cond_14
    if-eqz v2, :cond_16

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    goto :goto_e

    :cond_15
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v10, v11

    invoke-virtual {v3, v0, v11, v10, v2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    goto :goto_f

    :cond_16
    :goto_e
    invoke-virtual {v3, v12}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    :goto_f
    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    move-result v10

    and-int/lit16 v13, v10, 0xff

    const/16 v14, 0x25

    invoke-virtual {v9, v14}, Lokio/Buffer;->writeByte(I)V

    sget-object v16, Lokhttp3/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0xf

    aget-char v13, v16, v13

    invoke-virtual {v9, v13}, Lokio/Buffer;->writeByte(I)V

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v16, v10

    invoke-virtual {v9, v10}, Lokio/Buffer;->writeByte(I)V

    const/16 v13, 0x20

    const/16 v14, 0x2b

    goto :goto_f

    :goto_10
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v11, v10

    move v15, v14

    const/16 v10, 0x7f

    const/16 v13, 0x20

    const/16 v14, 0x2b

    goto/16 :goto_9

    :cond_17
    invoke-virtual {v9}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_18
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11
    return-object v0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 1

    const-string v0, "scheme"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x50

    goto :goto_0

    :cond_0
    const-string v0, "https"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1bb

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public static isPercentEncoded(Ljava/lang/String;II)Z
    .locals 2

    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x25

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public static percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZI)Ljava/lang/String;
    .locals 6

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move p4, v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move p0, p2

    :goto_0
    if-ge p0, p3, :cond_8

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v0, 0x2b

    const/16 v1, 0x25

    if-eq p5, v1, :cond_4

    if-ne p5, v0, :cond_3

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    new-instance p5, Lokio/Buffer;

    invoke-direct {p5}, Lokio/Buffer;-><init>()V

    invoke-virtual {p5, p1, p2, p0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)V

    :goto_2
    if-ge p0, p3, :cond_7

    invoke-virtual {p1, p0}, Ljava/lang/String;->codePointAt(I)I

    move-result p2

    if-ne p2, v1, :cond_5

    add-int/lit8 v2, p0, 0x2

    if-ge v2, p3, :cond_5

    add-int/lit8 v3, p0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    if-eq v4, v5, :cond_6

    shl-int/lit8 p0, v3, 0x4

    add-int/2addr p0, v4

    invoke-virtual {p5, p0}, Lokio/Buffer;->writeByte(I)V

    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr p0, v2

    goto :goto_2

    :cond_5
    if-ne p2, v0, :cond_6

    if-eqz p4, :cond_6

    const/16 p2, 0x20

    invoke-virtual {p5, p2}, Lokio/Buffer;->writeByte(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p5, p2}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p0, p2

    goto :goto_2

    :cond_7
    invoke-virtual {p5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-object p0
.end method

.method public static toQueryNamesAndValues$okhttp(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    const/16 v3, 0x26

    const/4 v4, 0x4

    invoke-static {p0, v3, v2, v1, v4}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    const/16 v6, 0x3d

    invoke-static {p0, v6, v2, v1, v4}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    const-string v6, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-eq v4, v5, :cond_2

    if-le v4, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
