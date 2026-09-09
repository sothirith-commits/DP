.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;Ljava/util/HashMap;)Lcom/google/zxing/common/BitMatrix;
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7f

    sget-object v8, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    sget-object v9, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v8

    :cond_0
    sget-object v9, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    :cond_1
    const/4 v9, 0x4

    :goto_0
    sget-object v10, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    sget-object v10, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_1

    :cond_2
    move v10, v12

    :goto_1
    sget-object v11, Lcom/google/zxing/EncodeHintType;->QR_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v7

    goto :goto_2

    :cond_3
    move v11, v12

    :goto_2
    sget-object v13, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    sget-object v15, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    if-eqz v14, :cond_4

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    goto :goto_3

    :cond_4
    move-object v13, v15

    :goto_3
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const v18, 0x7fffffff

    const/4 v6, -0x1

    if-eqz v11, :cond_d

    invoke-virtual {v13, v15}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v13, 0x0

    :cond_5
    new-instance v11, Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-direct {v11, v0, v13, v10, v8}, Lcom/bumptech/glide/load/engine/ActiveResources;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sget-object v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v10}, Lcom/bumptech/glide/load/engine/ActiveResources;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v10

    sget-object v13, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v13}, Lcom/bumptech/glide/load/engine/ActiveResources;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v13

    filled-new-array {v0, v10, v13}, [Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    aget-object v10, v0, v12

    invoke-virtual {v11, v10}, Lcom/bumptech/glide/load/engine/ActiveResources;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/koushikdutta/async/Util$8;

    move-result-object v10

    aget-object v13, v0, v7

    invoke-virtual {v11, v13}, Lcom/bumptech/glide/load/engine/ActiveResources;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/koushikdutta/async/Util$8;

    move-result-object v13

    aget-object v14, v0, v5

    invoke-virtual {v11, v14}, Lcom/bumptech/glide/load/engine/ActiveResources;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/koushikdutta/async/Util$8;

    move-result-object v14

    filled-new-array {v10, v13, v14}, [Lcom/koushikdutta/async/Util$8;

    move-result-object v10

    move v14, v6

    move v13, v12

    move/from16 v15, v18

    :goto_4
    if-ge v13, v4, :cond_7

    aget-object v4, v10, v13

    iget-object v5, v4, Lcom/koushikdutta/async/Util$8;->val$bb:Ljava/lang/Object;

    check-cast v5, Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/Util$8;->getSize(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    aget-object v5, v0, v13

    iget-object v12, v11, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    check-cast v12, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v4, v5, v12}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-ge v4, v15, :cond_6

    move v15, v4

    move v14, v13

    :cond_6
    add-int/2addr v13, v7

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v12, 0x0

    goto :goto_4

    :cond_7
    if-ltz v14, :cond_c

    aget-object v0, v10, v14

    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    iget-object v5, v0, Lcom/koushikdutta/async/Util$8;->val$sink:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    iget-object v11, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v12

    const/4 v13, 0x4

    invoke-virtual {v4, v12, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget-object v12, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->this$1:Lcom/koushikdutta/async/Util$8;

    iget v13, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->characterLength:I

    if-lez v13, :cond_9

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->getCharacterCountIndicator()I

    move-result v14

    iget-object v15, v12, Lcom/koushikdutta/async/Util$8;->val$bb:Ljava/lang/Object;

    check-cast v15, Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v11, v15}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v15

    invoke-virtual {v4, v14, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :cond_9
    iget v14, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->charsetEncoderIndex:I

    if-ne v11, v2, :cond_a

    iget-object v10, v12, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    check-cast v10, Lcom/bumptech/glide/load/engine/ActiveResources;

    iget-object v10, v10, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    check-cast v10, Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v10, v10, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v10, v10, v14

    invoke-virtual {v10}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v10

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/common/CharacterSetECI;

    invoke-virtual {v10}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v10

    const/16 v11, 0x8

    invoke-virtual {v4, v10, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_5

    :cond_a
    if-lez v13, :cond_8

    iget-object v15, v12, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    check-cast v15, Lcom/bumptech/glide/load/engine/ActiveResources;

    iget-object v15, v15, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget v10, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->fromPosition:I

    add-int/2addr v13, v10

    invoke-virtual {v15, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v12, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    check-cast v12, Lcom/bumptech/glide/load/engine/ActiveResources;

    iget-object v12, v12, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    check-cast v12, Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v12, v12, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v12, v12, v14

    invoke-virtual {v12}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-static {v10, v11, v4, v12}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V

    goto :goto_5

    :cond_b
    iget-object v0, v0, Lcom/koushikdutta/async/Util$8;->val$bb:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/qrcode/decoder/Version;

    goto/16 :goto_10

    :cond_c
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big for any version"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sget-object v4, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v13}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_11

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v15, 0x30

    if-lt v12, v15, :cond_f

    const/16 v15, 0x39

    if-gt v12, v15, :cond_f

    move v11, v7

    goto :goto_7

    :cond_f
    const/16 v5, 0x60

    if-ge v12, v5, :cond_10

    sget-object v5, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v5, v5, v12

    if-eq v5, v6, :cond_10

    move v5, v7

    :goto_7
    add-int/2addr v4, v7

    goto :goto_6

    :cond_10
    move-object v4, v3

    goto :goto_8

    :cond_11
    if-eqz v5, :cond_12

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_8

    :cond_12
    if-eqz v11, :cond_10

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_8
    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-ne v4, v3, :cond_13

    if-eqz v14, :cond_13

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/common/CharacterSetECI;

    if-eqz v11, :cond_13

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v2

    const/4 v12, 0x4

    invoke-virtual {v5, v2, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {v11}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v2

    const/16 v11, 0x8

    invoke-virtual {v5, v2, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :cond_13
    if-eqz v10, :cond_14

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v2

    const/4 v10, 0x4

    invoke-virtual {v5, v2, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_9

    :cond_14
    const/4 v10, 0x4

    :goto_9
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v2

    invoke-virtual {v5, v2, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {v0, v4, v2, v13}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V

    sget-object v10, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v10

    iget v11, v5, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v4, v10}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v12

    add-int/2addr v12, v11

    iget v11, v2, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v12, v11

    invoke-static {v12, v10, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_c

    :cond_15
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big for requested version"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v10

    iget v11, v5, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v4, v10}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v10

    add-int/2addr v10, v11

    iget v11, v2, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v10, v11

    move v11, v7

    :goto_a
    const-string v12, "Data too big"

    const/16 v13, 0x28

    if-gt v11, v13, :cond_7e

    invoke-static {v11}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v13

    invoke-static {v10, v13, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v14

    if-eqz v14, :cond_7d

    iget v10, v5, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v4, v13}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v11

    add-int/2addr v11, v10

    iget v10, v2, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v11, v10

    move v10, v7

    const/16 v13, 0x28

    :goto_b
    if-gt v10, v13, :cond_7c

    invoke-static {v10}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v13

    invoke-static {v11, v13, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v14

    if-eqz v14, :cond_7b

    move-object v10, v13

    :goto_c
    new-instance v11, Lcom/google/zxing/common/BitArray;

    invoke-direct {v11}, Lcom/google/zxing/common/BitArray;-><init>()V

    iget v12, v5, Lcom/google/zxing/common/BitArray;->size:I

    iget v13, v11, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v13, v12

    invoke-virtual {v11, v13}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v12, :cond_17

    invoke-virtual {v5, v13}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v14

    invoke-virtual {v11, v14}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/2addr v13, v7

    goto :goto_d

    :cond_17
    if-ne v4, v3, :cond_18

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    goto :goto_e

    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_e
    invoke-virtual {v4, v10}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v3

    shl-int v5, v7, v3

    if-ge v0, v5, :cond_7a

    invoke-virtual {v11, v0, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget v0, v2, Lcom/google/zxing/common/BitArray;->size:I

    iget v3, v11, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v3, v0

    invoke-virtual {v11, v3}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_19

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    invoke-virtual {v11, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/2addr v3, v7

    goto :goto_f

    :cond_19
    move-object v3, v4

    move-object v0, v10

    move-object v4, v11

    :goto_10
    iget-object v2, v0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/umeng/analytics/pro/bo;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v2, v2, v5

    iget-object v5, v2, Lcom/umeng/analytics/pro/bo;->a:Ljava/lang/Object;

    check-cast v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_11
    if-ge v11, v10, :cond_1a

    aget-object v13, v5, v11

    iget v13, v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v12, v13

    add-int/2addr v11, v7

    goto :goto_11

    :cond_1a
    iget v5, v2, Lcom/umeng/analytics/pro/bo;->b:I

    mul-int/2addr v12, v5

    iget v5, v0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    sub-int v10, v5, v12

    const/16 v11, 0x8

    mul-int/lit8 v12, v10, 0x8

    iget v11, v4, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v11, v12, :cond_79

    const/4 v11, 0x0

    :goto_12
    const/4 v13, 0x4

    if-ge v11, v13, :cond_1b

    iget v13, v4, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v13, v12, :cond_1b

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/2addr v11, v7

    goto :goto_12

    :cond_1b
    const/4 v13, 0x0

    iget v11, v4, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v11, v11, 0x7

    if-lez v11, :cond_1c

    :goto_13
    const/16 v14, 0x8

    if-ge v11, v14, :cond_1c

    invoke-virtual {v4, v13}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/2addr v11, v7

    const/4 v13, 0x0

    goto :goto_13

    :cond_1c
    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v11

    sub-int v11, v10, v11

    const/4 v13, 0x0

    :goto_14
    if-ge v13, v11, :cond_1e

    and-int/lit8 v15, v13, 0x1

    if-nez v15, :cond_1d

    const/16 v14, 0xec

    :goto_15
    const/16 v15, 0x8

    goto :goto_16

    :cond_1d
    const/16 v14, 0x11

    goto :goto_15

    :goto_16
    invoke-virtual {v4, v14, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/2addr v13, v7

    goto :goto_14

    :cond_1e
    iget v11, v4, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v11, v12, :cond_78

    iget-object v2, v2, Lcom/umeng/analytics/pro/bo;->a:Ljava/lang/Object;

    check-cast v2, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_17
    if-ge v12, v11, :cond_1f

    aget-object v15, v2, v12

    iget v15, v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v13, v15

    add-int/2addr v12, v7

    goto :goto_17

    :cond_1f
    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    if-ne v2, v10, :cond_77

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_18
    if-ge v11, v13, :cond_46

    new-array v14, v7, [I

    move/from16 v24, v9

    new-array v9, v7, [I

    if-ge v11, v13, :cond_45

    rem-int v25, v5, v13

    sub-int v1, v13, v25

    div-int v26, v5, v13

    add-int/lit8 v27, v26, 0x1

    div-int v28, v10, v13

    add-int/lit8 v29, v28, 0x1

    sub-int v7, v26, v28

    move-object/from16 v26, v0

    sub-int v0, v27, v29

    if-ne v7, v0, :cond_44

    move-object/from16 v27, v3

    add-int v3, v1, v25

    if-ne v13, v3, :cond_43

    add-int v3, v28, v7

    mul-int/2addr v3, v1

    add-int v31, v29, v0

    mul-int v31, v31, v25

    add-int v3, v31, v3

    if-ne v5, v3, :cond_42

    if-ge v11, v1, :cond_20

    const/4 v1, 0x0

    aput v28, v14, v1

    aput v7, v9, v1

    goto :goto_19

    :cond_20
    const/4 v1, 0x0

    aput v29, v14, v1

    aput v0, v9, v1

    :goto_19
    aget v0, v14, v1

    new-array v1, v0, [B

    const/16 v3, 0x8

    mul-int/lit8 v7, v12, 0x8

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_23

    move/from16 v29, v5

    move-object/from16 v28, v8

    move/from16 v25, v13

    const/16 v5, 0x8

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_1b
    if-ge v13, v5, :cond_22

    invoke-virtual {v4, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_21

    rsub-int/lit8 v5, v13, 0x7

    const/16 v30, 0x1

    shl-int v5, v30, v5

    or-int/2addr v5, v8

    move v8, v5

    goto :goto_1c

    :cond_21
    const/16 v30, 0x1

    :goto_1c
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x8

    goto :goto_1b

    :cond_22
    const/16 v30, 0x1

    int-to-byte v5, v8

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v13, v25

    move-object/from16 v8, v28

    move/from16 v5, v29

    goto :goto_1a

    :cond_23
    move/from16 v29, v5

    move-object/from16 v28, v8

    move/from16 v25, v13

    const/4 v3, 0x0

    aget v5, v9, v3

    add-int v3, v0, v5

    new-array v7, v3, [I

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v0, :cond_24

    aget-byte v9, v1, v8

    and-int/lit16 v9, v9, 0xff

    aput v9, v7, v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto :goto_1d

    :cond_24
    const/4 v9, 0x1

    sget-object v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v4

    new-instance v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move/from16 v32, v10

    filled-new-array {v9}, [I

    move-result-object v10

    invoke-direct {v4, v8, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_41

    sub-int/2addr v3, v5

    if-lez v3, :cond_40

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v10, "GenericGFPolys do not have same GenericGF field"

    if-lt v5, v4, :cond_2e

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v33, v11

    move/from16 v11, v30

    :goto_1e
    if-gt v11, v5, :cond_2d

    add-int/lit8 v30, v11, -0x1

    iget v9, v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    add-int v30, v30, v9

    iget-object v9, v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v9, v9, v30

    move/from16 v35, v12

    const/4 v12, 0x1

    filled-new-array {v12, v9}, [I

    move-result-object v9

    const/4 v12, 0x0

    aget v22, v9, v12

    if-nez v22, :cond_27

    move-object/from16 v34, v14

    const/4 v12, 0x1

    const/4 v14, 0x2

    :goto_1f
    if-ge v12, v14, :cond_25

    aget v21, v9, v12

    if-nez v21, :cond_25

    const/16 v21, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    :cond_25
    if-ne v12, v14, :cond_26

    const/16 v36, 0x0

    filled-new-array/range {v36 .. v36}, [I

    move-result-object v9

    move/from16 v37, v6

    move/from16 v38, v15

    move/from16 v15, v36

    goto :goto_20

    :cond_26
    move/from16 v37, v6

    const/16 v36, 0x0

    rsub-int/lit8 v6, v12, 0x2

    new-array v14, v6, [I

    move/from16 v38, v15

    move/from16 v15, v36

    invoke-static {v9, v12, v14, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v14

    goto :goto_20

    :cond_27
    move/from16 v37, v6

    move-object/from16 v34, v14

    move/from16 v38, v15

    move v15, v12

    :goto_20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v12

    if-nez v12, :cond_28

    aget v12, v9, v15

    if-nez v12, :cond_29

    :cond_28
    move-object/from16 v36, v2

    const/4 v14, 0x1

    goto :goto_24

    :cond_29
    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v12, v4

    array-length v14, v9

    add-int v15, v12, v14

    const/16 v30, 0x1

    add-int/lit8 v15, v15, -0x1

    new-array v15, v15, [I

    move-object/from16 v36, v2

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v12, :cond_2b

    move/from16 v39, v12

    aget v12, v4, v2

    move-object/from16 v40, v4

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v14, :cond_2a

    add-int v41, v2, v4

    aget v42, v15, v41

    move/from16 v43, v14

    aget v14, v9, v4

    invoke-virtual {v6, v12, v14}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v14

    xor-int v14, v42, v14

    aput v14, v15, v41

    const/4 v14, 0x1

    add-int/2addr v4, v14

    move/from16 v14, v43

    goto :goto_22

    :cond_2a
    move/from16 v43, v14

    const/4 v14, 0x1

    add-int/2addr v2, v14

    move/from16 v12, v39

    move-object/from16 v4, v40

    move/from16 v14, v43

    goto :goto_21

    :cond_2b
    const/4 v14, 0x1

    new-instance v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v2, v6, v15}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    :goto_23
    move-object v4, v2

    goto :goto_25

    :goto_24
    iget-object v2, v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    goto :goto_23

    :goto_25
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v14

    move v9, v14

    move-object/from16 v14, v34

    move/from16 v12, v35

    move-object/from16 v2, v36

    move/from16 v6, v37

    move/from16 v15, v38

    goto/16 :goto_1e

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move-object/from16 v36, v2

    move/from16 v37, v6

    :goto_26
    move/from16 v35, v12

    move-object/from16 v34, v14

    move/from16 v38, v15

    goto :goto_27

    :cond_2e
    move-object/from16 v36, v2

    move/from16 v37, v6

    move/from16 v33, v11

    goto :goto_26

    :goto_27
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v4, v3, [I

    const/4 v6, 0x0

    invoke-static {v7, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v3, :cond_3f

    const/4 v9, 0x1

    if-le v3, v9, :cond_31

    aget v11, v4, v6

    if-nez v11, :cond_31

    move v11, v9

    :goto_28
    if-ge v11, v3, :cond_2f

    aget v12, v4, v11

    if-nez v12, :cond_2f

    add-int/2addr v11, v9

    goto :goto_28

    :cond_2f
    if-ne v11, v3, :cond_30

    filled-new-array {v6}, [I

    move-result-object v4

    goto :goto_29

    :cond_30
    sub-int v9, v3, v11

    new-array v12, v9, [I

    invoke-static {v4, v11, v12, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v12

    :cond_31
    :goto_29
    if-ltz v5, :cond_3e

    array-length v6, v4

    add-int v9, v6, v5

    new-array v9, v9, [I

    const/4 v11, 0x0

    :goto_2a
    if-ge v11, v6, :cond_32

    aget v12, v4, v11

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v12

    aput v12, v9, v11

    add-int/2addr v11, v13

    goto :goto_2a

    :cond_32
    new-instance v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v4, v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iget-object v6, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v6

    if-nez v6, :cond_3c

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v6

    iget-object v9, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v10, v9

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    sub-int/2addr v10, v6

    aget v6, v9, v10

    if-eqz v6, :cond_3b

    iget-object v10, v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v6, v10, v6

    iget v10, v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    sub-int/2addr v10, v6

    sub-int/2addr v10, v11

    iget-object v6, v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v6, v6, v10

    iget-object v10, v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v11, v10

    :goto_2b
    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v12

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v13

    if-lt v12, v13, :cond_38

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v12

    if-nez v12, :cond_38

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v12

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v13

    iget-object v14, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v15, v14

    const/16 v30, 0x1

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v15, v13

    aget v13, v14, v15

    invoke-virtual {v8, v13, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v13

    if-ltz v12, :cond_37

    iget-object v14, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-nez v13, :cond_33

    iget-object v14, v14, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v39, v2

    move/from16 v40, v6

    move-object/from16 v41, v10

    const/4 v10, 0x1

    goto :goto_2d

    :cond_33
    array-length v15, v9

    move-object/from16 v39, v2

    add-int v2, v15, v12

    new-array v2, v2, [I

    move/from16 v40, v6

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v15, :cond_34

    move-object/from16 v41, v10

    aget v10, v9, v6

    invoke-virtual {v14, v10, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    aput v10, v2, v6

    const/4 v10, 0x1

    add-int/2addr v6, v10

    move-object/from16 v10, v41

    goto :goto_2c

    :cond_34
    move-object/from16 v41, v10

    const/4 v10, 0x1

    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v6, v14, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v14, v6

    :goto_2d
    if-ltz v12, :cond_36

    if-nez v13, :cond_35

    move-object/from16 v6, v41

    goto :goto_2e

    :cond_35
    add-int/2addr v12, v10

    new-array v2, v12, [I

    const/4 v6, 0x0

    aput v13, v2, v6

    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v6, v8, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    :goto_2e
    invoke-virtual {v11, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    invoke-virtual {v4, v14}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v4

    move-object/from16 v2, v39

    move/from16 v6, v40

    move-object/from16 v10, v41

    goto :goto_2b

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_38
    filled-new-array {v11, v4}, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v6, v2

    sub-int v6, v5, v6

    const/4 v8, 0x0

    :goto_2f
    if-ge v8, v6, :cond_39

    add-int v9, v3, v8

    const/4 v10, 0x0

    aput v10, v7, v9

    add-int/2addr v8, v4

    goto :goto_2f

    :cond_39
    const/4 v10, 0x0

    add-int/2addr v3, v6

    array-length v4, v2

    invoke-static {v2, v10, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v5, [B

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v5, :cond_3a

    add-int v4, v0, v3

    aget v4, v7, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_30

    :cond_3a
    const/4 v4, 0x1

    new-instance v3, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v3, v1, v2}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    move-object/from16 v1, v36

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, v38

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v0, v37

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v0, 0x0

    aget v2, v34, v0

    add-int v12, v35, v2

    add-int/lit8 v11, v33, 0x1

    move-object v2, v1

    move v7, v4

    move/from16 v9, v24

    move/from16 v13, v25

    move-object/from16 v0, v26

    move-object/from16 v3, v27

    move-object/from16 v8, v28

    move/from16 v5, v29

    move-object/from16 v4, v31

    move/from16 v10, v32

    move-object/from16 v1, p1

    goto/16 :goto_18

    :cond_3b
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    move-object/from16 v26, v0

    move-object v1, v2

    move-object/from16 v27, v3

    move/from16 v29, v5

    move v0, v6

    move-object/from16 v28, v8

    move/from16 v24, v9

    move v5, v10

    move v2, v15

    if-ne v5, v12, :cond_76

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v13, 0x0

    :goto_31
    if-ge v13, v2, :cond_49

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_47
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v5, v5, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    array-length v6, v5

    if-ge v13, v6, :cond_47

    aget-byte v5, v5, v13

    const/16 v6, 0x8

    invoke-virtual {v3, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_32

    :cond_48
    const/4 v5, 0x1

    add-int/2addr v13, v5

    goto :goto_31

    :cond_49
    const/4 v13, 0x0

    :goto_33
    if-ge v13, v0, :cond_4c

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    array-length v5, v4

    if-ge v13, v5, :cond_4a

    aget-byte v4, v4, v13

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_34

    :cond_4b
    const/4 v4, 0x1

    add-int/2addr v13, v4

    goto :goto_33

    :cond_4c
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    move/from16 v1, v29

    if-ne v1, v0, :cond_75

    new-instance v0, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    move-object/from16 v8, v28

    iput-object v8, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object/from16 v4, v27

    iput-object v4, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v10, v26

    iput-object v10, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Lcom/google/zxing/qrcode/decoder/Version;

    iget v1, v10, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    const/16 v2, 0x11

    add-int/2addr v1, v2

    new-instance v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v2, v1, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    sget-object v1, Lcom/google/zxing/EncodeHintType;->QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v6, p1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x8

    if-ltz v1, :cond_4e

    if-ge v1, v7, :cond_4e

    goto :goto_35

    :cond_4d
    const/16 v7, 0x8

    :cond_4e
    const/4 v1, -0x1

    :goto_35
    iget v4, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iget v5, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    const/4 v9, -0x1

    if-ne v1, v9, :cond_6b

    move v6, v9

    move/from16 v1, v18

    const/4 v13, 0x0

    :goto_36
    if-ge v13, v7, :cond_6a

    invoke-static {v3, v8, v10, v13, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v9, 0x1

    invoke-static {v2, v9}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v11

    const/4 v14, 0x0

    invoke-static {v2, v14}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v12

    add-int/2addr v12, v11

    move v11, v14

    move v15, v11

    :goto_37
    add-int/lit8 v7, v5, -0x1

    iget-object v14, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast v14, [[B

    if-ge v11, v7, :cond_51

    aget-object v7, v14, v11

    move/from16 p0, v6

    move/from16 v18, v15

    const/4 v15, 0x0

    :goto_38
    add-int/lit8 v6, v4, -0x1

    if-ge v15, v6, :cond_50

    aget-byte v6, v7, v15

    add-int/lit8 v23, v15, 0x1

    move-object/from16 v25, v2

    aget-byte v2, v7, v23

    if-ne v6, v2, :cond_4f

    add-int/lit8 v2, v11, 0x1

    aget-object v2, v14, v2

    aget-byte v15, v2, v15

    if-ne v6, v15, :cond_4f

    aget-byte v2, v2, v23

    if-ne v6, v2, :cond_4f

    add-int/lit8 v18, v18, 0x1

    :cond_4f
    move/from16 v15, v23

    move-object/from16 v2, v25

    goto :goto_38

    :cond_50
    move-object/from16 v25, v2

    add-int/2addr v11, v9

    move/from16 v6, p0

    move/from16 v15, v18

    const/4 v14, 0x0

    goto :goto_37

    :cond_51
    move-object/from16 v25, v2

    move/from16 p0, v6

    const/4 v2, 0x3

    mul-int/2addr v15, v2

    add-int/2addr v15, v12

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_39
    if-ge v2, v5, :cond_65

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v4, :cond_64

    aget-object v9, v14, v2

    add-int/lit8 v11, v7, 0x6

    if-ge v11, v4, :cond_59

    aget-byte v12, v9, v7

    move-object/from16 v23, v3

    const/4 v3, 0x1

    if-ne v12, v3, :cond_5a

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, v9, v12

    if-nez v12, :cond_5a

    const/4 v12, 0x2

    add-int/lit8 v18, v7, 0x2

    aget-byte v12, v9, v18

    if-ne v12, v3, :cond_5a

    const/4 v12, 0x3

    add-int/lit8 v18, v7, 0x3

    aget-byte v12, v9, v18

    if-ne v12, v3, :cond_5a

    const/4 v12, 0x4

    add-int/lit8 v18, v7, 0x4

    aget-byte v12, v9, v18

    if-ne v12, v3, :cond_5a

    add-int/lit8 v12, v7, 0x5

    aget-byte v12, v9, v12

    if-nez v12, :cond_5a

    aget-byte v11, v9, v11

    if-ne v11, v3, :cond_5a

    const/4 v11, 0x4

    add-int/lit8 v12, v7, -0x4

    if-ltz v12, :cond_55

    array-length v11, v9

    if-ge v11, v7, :cond_52

    goto :goto_3c

    :cond_52
    :goto_3b
    if-ge v12, v7, :cond_54

    aget-byte v11, v9, v12

    if-ne v11, v3, :cond_53

    goto :goto_3c

    :cond_53
    add-int/2addr v12, v3

    goto :goto_3b

    :cond_54
    move v9, v3

    goto :goto_3e

    :cond_55
    :goto_3c
    add-int/lit8 v3, v7, 0x7

    add-int/lit8 v11, v7, 0xb

    if-ltz v3, :cond_5a

    array-length v12, v9

    if-ge v12, v11, :cond_56

    goto :goto_3f

    :cond_56
    :goto_3d
    if-ge v3, v11, :cond_58

    aget-byte v12, v9, v3

    move-object/from16 p1, v9

    const/4 v9, 0x1

    if-ne v12, v9, :cond_57

    goto :goto_3f

    :cond_57
    add-int/2addr v3, v9

    move-object/from16 v9, p1

    goto :goto_3d

    :cond_58
    const/4 v9, 0x1

    :goto_3e
    add-int/2addr v6, v9

    goto :goto_3f

    :cond_59
    move-object/from16 v23, v3

    :cond_5a
    :goto_3f
    add-int/lit8 v3, v2, 0x6

    if-ge v3, v5, :cond_62

    aget-object v9, v14, v2

    aget-byte v9, v9, v7

    const/4 v11, 0x1

    if-ne v9, v11, :cond_62

    add-int/lit8 v9, v2, 0x1

    aget-object v9, v14, v9

    aget-byte v9, v9, v7

    if-nez v9, :cond_62

    const/4 v9, 0x2

    add-int/lit8 v12, v2, 0x2

    aget-object v9, v14, v12

    aget-byte v9, v9, v7

    if-ne v9, v11, :cond_62

    const/16 v20, 0x3

    add-int/lit8 v9, v2, 0x3

    aget-object v9, v14, v9

    aget-byte v9, v9, v7

    const/16 v19, 0x4

    if-ne v9, v11, :cond_63

    add-int/lit8 v9, v2, 0x4

    aget-object v9, v14, v9

    aget-byte v9, v9, v7

    if-ne v9, v11, :cond_63

    add-int/lit8 v9, v2, 0x5

    aget-object v9, v14, v9

    aget-byte v9, v9, v7

    if-nez v9, :cond_63

    aget-object v3, v14, v3

    aget-byte v3, v3, v7

    if-ne v3, v11, :cond_63

    add-int/lit8 v3, v2, -0x4

    if-ltz v3, :cond_5e

    array-length v9, v14

    if-ge v9, v2, :cond_5b

    goto :goto_41

    :cond_5b
    :goto_40
    if-ge v3, v2, :cond_5d

    aget-object v9, v14, v3

    aget-byte v9, v9, v7

    if-ne v9, v11, :cond_5c

    goto :goto_41

    :cond_5c
    add-int/2addr v3, v11

    goto :goto_40

    :cond_5d
    move v12, v11

    goto :goto_43

    :cond_5e
    :goto_41
    add-int/lit8 v3, v2, 0x7

    add-int/lit8 v9, v2, 0xb

    if-ltz v3, :cond_63

    array-length v11, v14

    if-ge v11, v9, :cond_5f

    goto :goto_44

    :cond_5f
    :goto_42
    if-ge v3, v9, :cond_61

    aget-object v11, v14, v3

    aget-byte v11, v11, v7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_60

    goto :goto_44

    :cond_60
    add-int/2addr v3, v12

    goto :goto_42

    :cond_61
    const/4 v12, 0x1

    :goto_43
    add-int/2addr v6, v12

    move v3, v12

    goto :goto_45

    :cond_62
    const/16 v19, 0x4

    const/16 v20, 0x3

    :cond_63
    :goto_44
    const/4 v3, 0x1

    :goto_45
    add-int/2addr v7, v3

    move-object/from16 v3, v23

    goto/16 :goto_3a

    :cond_64
    move-object/from16 v23, v3

    const/4 v3, 0x1

    const/16 v19, 0x4

    const/16 v20, 0x3

    add-int/2addr v2, v3

    move-object/from16 v3, v23

    goto/16 :goto_39

    :cond_65
    move-object/from16 v23, v3

    const/16 v7, 0x28

    const/16 v19, 0x4

    const/16 v20, 0x3

    mul-int/2addr v6, v7

    add-int/2addr v6, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_46
    if-ge v2, v5, :cond_68

    aget-object v9, v14, v2

    const/4 v11, 0x0

    :goto_47
    if-ge v11, v4, :cond_67

    aget-byte v12, v9, v11

    const/4 v15, 0x1

    if-ne v12, v15, :cond_66

    add-int/2addr v3, v15

    :cond_66
    add-int/2addr v11, v15

    goto :goto_47

    :cond_67
    const/4 v15, 0x1

    add-int/2addr v2, v15

    goto :goto_46

    :cond_68
    mul-int v2, v5, v4

    const/4 v9, 0x2

    mul-int/2addr v3, v9

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    div-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    if-ge v3, v1, :cond_69

    move v1, v3

    move v6, v13

    :goto_48
    const/4 v2, 0x1

    goto :goto_49

    :cond_69
    move/from16 v6, p0

    goto :goto_48

    :goto_49
    add-int/2addr v13, v2

    move-object/from16 v3, v23

    move-object/from16 v2, v25

    const/16 v7, 0x8

    goto/16 :goto_36

    :cond_6a
    move-object/from16 v25, v2

    move-object/from16 v23, v3

    move/from16 p0, v6

    move/from16 v1, p0

    goto :goto_4a

    :cond_6b
    move-object/from16 v25, v2

    move-object/from16 v23, v3

    :goto_4a
    iput v1, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    invoke-static {v2, v8, v10, v1, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    iput-object v3, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    const/4 v1, 0x2

    mul-int/lit8 v9, v24, 0x2

    add-int v0, v4, v9

    add-int/2addr v9, v5

    const/16 v2, 0x190

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v0, v6, v0

    div-int v7, v2, v9

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v7, v4, v0

    sub-int v7, v6, v7

    div-int/2addr v7, v1

    mul-int v8, v5, v0

    sub-int v8, v2, v8

    div-int/2addr v8, v1

    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x1

    if-lt v6, v9, :cond_74

    if-lt v2, v9, :cond_74

    iput v6, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    iput v2, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/lit8 v6, v6, 0x1f

    div-int/lit8 v6, v6, 0x20

    iput v6, v1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v6, v2

    new-array v2, v6, [I

    iput-object v2, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v13, 0x0

    :goto_4b
    if-ge v13, v5, :cond_73

    move v6, v7

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v4, :cond_72

    invoke-virtual {v3, v2, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_71

    if-ltz v8, :cond_70

    if-ltz v6, :cond_70

    if-lt v0, v10, :cond_6f

    if-lt v0, v10, :cond_6f

    add-int v9, v6, v0

    add-int v10, v8, v0

    iget v11, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v10, v11, :cond_6e

    iget v11, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-gt v9, v11, :cond_6e

    move v11, v8

    :goto_4d
    if-ge v11, v10, :cond_6d

    iget v12, v1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v12, v11

    move v14, v6

    :goto_4e
    if-ge v14, v9, :cond_6c

    div-int/lit8 v15, v14, 0x20

    add-int/2addr v15, v12

    move-object/from16 v25, v3

    iget-object v3, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v16, v3, v15

    and-int/lit8 v17, v14, 0x1f

    const/16 v18, 0x1

    shl-int v17, v18, v17

    or-int v16, v16, v17

    aput v16, v3, v15

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v25

    goto :goto_4e

    :cond_6c
    move-object/from16 v25, v3

    const/16 v18, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4d

    :cond_6d
    move-object/from16 v25, v3

    const/4 v3, 0x1

    goto :goto_4f

    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    move-object/from16 v25, v3

    move v3, v10

    :goto_4f
    add-int/2addr v2, v3

    add-int/2addr v6, v0

    move-object/from16 v3, v25

    goto :goto_4c

    :cond_72
    move-object/from16 v25, v3

    const/4 v3, 0x1

    add-int/2addr v13, v3

    add-int/2addr v8, v0

    move-object/from16 v3, v25

    goto :goto_4b

    :cond_73
    return-object v1

    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    move-object v2, v3

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v3, "Interleaving error: "

    const-string v4, " and "

    invoke-static {v1, v3, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " differ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    move-object/from16 v31, v4

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7b
    move v13, v7

    move/from16 v24, v9

    const/16 v7, 0x28

    const/16 v19, 0x4

    const/16 v20, 0x3

    move v9, v6

    move-object v6, v1

    const/4 v1, 0x2

    add-int/2addr v10, v13

    move-object v1, v6

    move v6, v9

    move/from16 v9, v24

    move/from16 v44, v13

    move v13, v7

    move/from16 v7, v44

    goto/16 :goto_b

    :cond_7c
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    move v13, v7

    move/from16 v24, v9

    const/16 v7, 0x28

    const/16 v19, 0x4

    const/16 v20, 0x3

    move v9, v6

    move-object v6, v1

    const/4 v1, 0x2

    add-int/2addr v11, v13

    move-object v1, v6

    move v6, v9

    move v7, v13

    move/from16 v9, v24

    goto/16 :goto_a

    :cond_7e
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
