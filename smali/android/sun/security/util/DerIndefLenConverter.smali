.class public final Landroid/sun/security/util/DerIndefLenConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:[B

.field public dataPos:I

.field public dataSize:I

.field public index:I

.field public final ndefsList:Ljava/util/ArrayList;

.field public newData:[B

.field public newDataPos:I

.field public numOfTotalLenBytes:I

.field public unresolved:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/sun/security/util/DerIndefLenConverter;->unresolved:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    iput v0, p0, Landroid/sun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    return-void
.end method

.method public static isIndefinite(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    and-int/lit8 p0, p0, 0x7f

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final convert([B)[B
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/sun/security/util/DerIndefLenConverter;->data:[B

    const/4 v2, 0x0

    iput v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    iput v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->index:I

    array-length v3, v1

    iput v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    :cond_0
    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    iget v4, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    iget-object v5, v0, Landroid/sun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0x80

    const/high16 v13, 0x1000000

    const/16 v14, -0x7e

    const/high16 v15, 0x10000

    const/16 v16, -0x7f

    const/16 v10, 0x100

    if-ge v3, v4, :cond_10

    const/4 v11, 0x1

    if-ne v3, v4, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v4, v0, Landroid/sun/security/util/DerIndefLenConverter;->data:[B

    aget-byte v12, v4, v3

    and-int/lit8 v19, v12, 0x1f

    if-nez v19, :cond_9

    and-int/lit8 v19, v12, 0x20

    if-nez v19, :cond_9

    and-int/lit16 v12, v12, 0xc0

    if-nez v12, :cond_9

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v4, v3

    if-nez v3, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v11

    const/4 v4, 0x0

    move v12, v2

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v4

    check-cast v6, [B

    array-length v6, v6

    sub-int/2addr v6, v7

    add-int/2addr v12, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz v3, :cond_8

    iget v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v6, v4

    add-int/2addr v6, v12

    if-ge v6, v9, :cond_4

    new-array v4, v11, [B

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    goto :goto_3

    :cond_4
    if-ge v6, v10, :cond_5

    new-array v4, v8, [B

    aput-byte v16, v4, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v11

    goto :goto_3

    :cond_5
    if-ge v6, v15, :cond_6

    new-array v4, v7, [B

    aput-byte v14, v4, v2

    shr-int/lit8 v12, v6, 0x8

    int-to-byte v12, v12

    aput-byte v12, v4, v11

    int-to-byte v6, v6

    aput-byte v6, v4, v8

    goto :goto_3

    :cond_6
    if-ge v6, v13, :cond_7

    const/4 v4, 0x4

    new-array v12, v4, [B

    const/16 v4, -0x7d

    aput-byte v4, v12, v2

    shr-int/lit8 v4, v6, 0x10

    int-to-byte v4, v4

    aput-byte v4, v12, v11

    shr-int/lit8 v4, v6, 0x8

    int-to-byte v4, v4

    aput-byte v4, v12, v8

    int-to-byte v4, v6

    aput-byte v4, v12, v7

    :goto_2
    move-object v4, v12

    goto :goto_3

    :cond_7
    const/4 v4, 0x5

    new-array v12, v4, [B

    const/16 v4, -0x7c

    aput-byte v4, v12, v2

    shr-int/lit8 v4, v6, 0x18

    int-to-byte v4, v4

    aput-byte v4, v12, v11

    shr-int/lit8 v4, v6, 0x10

    int-to-byte v4, v4

    aput-byte v4, v12, v8

    shr-int/lit8 v4, v6, 0x8

    int-to-byte v4, v4

    aput-byte v4, v12, v7

    int-to-byte v4, v6

    const/4 v6, 0x4

    aput-byte v4, v12, v6

    goto :goto_2

    :goto_3
    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->unresolved:I

    sub-int/2addr v3, v11

    iput v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->unresolved:I

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    array-length v4, v4

    sub-int/2addr v4, v7

    add-int/2addr v4, v3

    iput v4, v0, Landroid/sun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOC does not have matching indefinite-length tag"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/2addr v3, v11

    iput v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    :goto_5
    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    iget v4, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v3, v4, :cond_a

    :goto_6
    move v6, v2

    goto :goto_8

    :cond_a
    iget-object v4, v0, Landroid/sun/security/util/DerIndefLenConverter;->data:[B

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v3, v4, v3

    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Landroid/sun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v3, Ljava/lang/Integer;

    iget v4, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->unresolved:I

    add-int/2addr v3, v11

    iput v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->unresolved:I

    goto :goto_6

    :cond_b
    and-int/lit16 v4, v3, 0x80

    if-ne v4, v9, :cond_e

    and-int/lit8 v3, v3, 0x7f

    const/4 v4, 0x4

    if-gt v3, v4, :cond_d

    iget v4, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    iget v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    sub-int/2addr v4, v6

    add-int/lit8 v6, v3, 0x1

    if-lt v4, v6, :cond_c

    move v4, v2

    move v6, v4

    :goto_7
    if-ge v4, v3, :cond_f

    shl-int/lit8 v6, v6, 0x8

    iget-object v11, v0, Landroid/sun/security/util/DerIndefLenConverter;->data:[B

    iget v12, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v6, v11

    add-int/lit8 v4, v4, 0x1

    const/high16 v13, 0x1000000

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too little data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too much data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    and-int/lit8 v6, v3, 0x7f

    :cond_f
    :goto_8
    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    iget v4, v0, Landroid/sun/security/util/DerIndefLenConverter;->unresolved:I

    if-nez v4, :cond_0

    iget v4, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    sub-int/2addr v4, v3

    iput v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    goto :goto_9

    :cond_10
    move v4, v2

    :goto_9
    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    iget v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v3, v6

    add-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iput v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    iput v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    iput v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->index:I

    :goto_a
    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    iget v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    if-ge v3, v6, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/sun/security/util/DerIndefLenConverter;->writeTag()V

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    iget v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v3, v6, :cond_11

    :goto_b
    const/4 v12, 0x4

    const/16 v13, -0x7d

    const/16 v17, -0x7c

    goto/16 :goto_11

    :cond_11
    iget-object v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->data:[B

    add-int/lit8 v11, v3, 0x1

    iput v11, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v3, v6, v3

    and-int/lit16 v6, v3, 0xff

    invoke-static {v6}, Landroid/sun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v6

    if-eqz v6, :cond_12

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->index:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->index:I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iget v11, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v12, v3

    invoke-static {v3, v2, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v3, v3

    add-int/2addr v6, v3

    iput v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    goto :goto_b

    :cond_12
    and-int/lit16 v6, v3, 0x80

    if-ne v6, v9, :cond_13

    and-int/lit8 v3, v3, 0x7f

    move v6, v2

    move v11, v6

    :goto_c
    if-ge v6, v3, :cond_14

    shl-int/lit8 v11, v11, 0x8

    iget-object v12, v0, Landroid/sun/security/util/DerIndefLenConverter;->data:[B

    iget v13, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v2, v13, 0x1

    iput v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v2, v12, v13

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v11, v2

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto :goto_c

    :cond_13
    and-int/lit8 v11, v3, 0x7f

    :cond_14
    if-ge v11, v9, :cond_15

    iget-object v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v6, v11

    aput-byte v6, v2, v3

    :goto_d
    const/4 v8, 0x5

    const/4 v12, 0x4

    const/16 v13, -0x7d

    :goto_e
    const/16 v17, -0x7c

    goto/16 :goto_f

    :cond_15
    if-ge v11, v10, :cond_16

    iget-object v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v6, v3, 0x1

    aput-byte v16, v2, v3

    add-int/2addr v3, v8

    iput v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v3, v11

    aput-byte v3, v2, v6

    goto :goto_d

    :cond_16
    if-ge v11, v15, :cond_17

    iget-object v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v6, v3, 0x1

    aput-byte v14, v2, v3

    add-int/lit8 v12, v3, 0x2

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    aput-byte v13, v2, v6

    add-int/2addr v3, v7

    iput v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v3, v11

    aput-byte v3, v2, v12

    goto :goto_d

    :cond_17
    const/high16 v2, 0x1000000

    if-ge v11, v2, :cond_18

    iget-object v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iget v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v12, v6, 0x1

    const/16 v13, -0x7d

    aput-byte v13, v3, v6

    add-int/lit8 v18, v6, 0x2

    shr-int/lit8 v2, v11, 0x10

    int-to-byte v2, v2

    aput-byte v2, v3, v12

    add-int/lit8 v2, v6, 0x3

    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v18

    const/4 v12, 0x4

    add-int/2addr v6, v12

    iput v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v6, v11

    aput-byte v6, v3, v2

    const/4 v8, 0x5

    goto :goto_e

    :cond_18
    const/4 v12, 0x4

    const/16 v13, -0x7d

    iget-object v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v6, v3, 0x1

    const/16 v17, -0x7c

    aput-byte v17, v2, v3

    add-int/lit8 v18, v3, 0x2

    shr-int/lit8 v7, v11, 0x18

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v3, 0x3

    shr-int/lit8 v7, v11, 0x10

    int-to-byte v7, v7

    aput-byte v7, v2, v18

    add-int/lit8 v7, v3, 0x4

    shr-int/lit8 v8, v11, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    const/4 v8, 0x5

    add-int/2addr v3, v8

    iput v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v3, v11

    aput-byte v3, v2, v7

    :goto_f
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v11, :cond_19

    iget-object v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iget v6, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    iget-object v7, v0, Landroid/sun/security/util/DerIndefLenConverter;->data:[B

    iget v8, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v7, v7, v8

    aput-byte v7, v3, v6

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x80

    goto :goto_10

    :cond_19
    :goto_11
    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0x80

    goto/16 :goto_a

    :cond_1a
    iget-object v2, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iget v3, v0, Landroid/sun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v3, v6

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    return-object v0
.end method

.method public final writeTag()V
    .locals 5

    iget v0, p0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    iget v1, p0, Landroid/sun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/sun/security/util/DerIndefLenConverter;->data:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v3, v1, v0

    and-int/lit8 v4, v3, 0x1f

    if-nez v4, :cond_1

    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_1

    and-int/lit16 v4, v3, 0xc0

    if-nez v4, :cond_1

    aget-byte v1, v1, v2

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/sun/security/util/DerIndefLenConverter;->dataPos:I

    invoke-virtual {p0}, Landroid/sun/security/util/DerIndefLenConverter;->writeTag()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/sun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/sun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte p0, v3

    aput-byte p0, v0, v1

    :goto_0
    return-void
.end method
