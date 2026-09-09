.class public final Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;
.source "SourceFile"


# instance fields
.field public final l1_F1:[[[S

.field public final l1_F2:[[[S

.field public final l2_F1:[[[S

.field public final l2_F2:[[[S

.field public final l2_F3:[[[S

.field public final l2_F5:[[[S

.field public final l2_F6:[[[S

.field public final pk_encoded:[B

.field public final pk_seed:[B

.field public final s1:[[S

.field public final sk_seed:[B

.field public final t1:[[S

.field public final t3:[[S

.field public final t4:[[S


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    iget v4, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->version:I

    const/4 v5, 0x3

    const/16 v6, 0x20

    const/4 v8, 0x0

    iget v9, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    iget v10, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    iget v11, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    if-ne v4, v5, :cond_5

    invoke-static {v8, v1, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v4

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    const/16 v5, 0x40

    invoke-static {v6, v1, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    new-instance v5, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    new-instance v4, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v6, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->hash_algo:Lorg/bouncycastle/crypto/digests/LongDigest;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/digests/LongDigest;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    invoke-direct {v12, v1, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/digests/LongDigest;)V

    invoke-static {v4, v10, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;II)[[S

    move-result-object v6

    invoke-static {v4, v11, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;II)[[S

    move-result-object v13

    invoke-static {v4, v11, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;II)[[S

    move-result-object v1

    invoke-static {v4, v10, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;II)[[S

    move-result-object v14

    invoke-static {v13, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    invoke-static {v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v15

    invoke-static {v12, v10, v11, v11, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;IIIZ)[[[S

    move-result-object v1

    invoke-static {v12, v10, v11, v10, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;IIIZ)[[[S

    move-result-object v4

    invoke-static {v12, v9, v11, v11, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;IIIZ)[[[S

    move-result-object v7

    invoke-static {v12, v9, v11, v10, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;IIIZ)[[[S

    move-result-object v2

    invoke-static {v12, v9, v11, v9, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;IIIZ)[[[S

    move-result-object v11

    invoke-static {v12, v9, v10, v10, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;IIIZ)[[[S

    move-result-object v17

    invoke-static {v12, v9, v10, v9, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;IIIZ)[[[S

    move-result-object v12

    invoke-static {v6, v7, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v1

    invoke-static {v6, v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v4

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v18

    new-array v8, v10, [[[S

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    aget-object v20, v1, v3

    move-object/from16 p2, v1

    invoke-static/range {v20 .. v20}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v1, v13}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v8, v3

    move/from16 v20, v10

    aget-object v10, v4, v3

    invoke-static {v1, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v8, v3

    const/4 v1, 0x1

    add-int/2addr v3, v1

    move-object/from16 v1, p2

    move/from16 v10, v20

    goto :goto_0

    :cond_0
    new-array v10, v9, [[[S

    new-array v4, v9, [[[S

    new-array v3, v9, [[[S

    new-array v1, v9, [[[S

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v20

    move-object/from16 p2, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v21, v7, v8

    move/from16 v22, v9

    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v9

    invoke-static {v9, v13}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v10, v8

    move-object/from16 v21, v6

    aget-object v6, v2, v8

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v10, v8

    invoke-static {v9, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v4, v8

    aget-object v0, v2, v8

    invoke-static {v0, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    aget-object v6, v4, v8

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v4, v8

    aget-object v6, v11, v8

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v4, v8

    aget-object v0, v7, v8

    invoke-static {v0, v13}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    aget-object v6, v2, v8

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    invoke-static {v13}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v6

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v3, v8

    aget-object v9, v17, v8

    invoke-static {v0, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v3, v8

    array-length v9, v0

    move-object/from16 v23, v7

    const/16 v19, 0x0

    aget-object v7, v0, v19

    array-length v7, v7

    if-ne v9, v7, :cond_3

    array-length v7, v0

    array-length v9, v0

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/4 v10, 0x2

    new-array v11, v10, [I

    const/4 v10, 0x1

    aput v9, v11, v10

    aput v7, v11, v19

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    const/4 v9, 0x0

    :goto_2
    array-length v10, v0

    if-ge v9, v10, :cond_2

    aget-object v10, v7, v9

    aget-object v11, v0, v9

    aget-short v11, v11, v9

    aput-short v11, v10, v9

    const/4 v10, 0x1

    add-int/lit8 v11, v9, 0x1

    move/from16 v26, v11

    move-object/from16 v27, v13

    :goto_3
    const/4 v10, 0x0

    aget-object v13, v0, v10

    array-length v10, v13

    if-ge v11, v10, :cond_1

    aget-object v10, v7, v9

    aget-object v13, v0, v9

    aget-short v13, v13, v11

    aget-object v28, v0, v11

    aget-short v28, v28, v9

    sget-object v29, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    xor-int v13, v13, v28

    int-to-short v13, v13

    aput-short v13, v10, v11

    const/4 v10, 0x1

    add-int/2addr v11, v10

    goto :goto_3

    :cond_1
    move/from16 v9, v26

    move-object/from16 v13, v27

    goto :goto_2

    :cond_2
    move-object/from16 v27, v13

    aput-object v7, v3, v8

    aget-object v0, v4, v8

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v1, v8

    aget-object v0, v2, v8

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v0

    invoke-static {v0, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    aget-object v6, v1, v8

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v1, v8

    aget-object v0, v17, v8

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v0

    invoke-static {v0, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    aget-object v6, v1, v8

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v1, v8

    aget-object v6, v12, v8

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    aput-object v0, v1, v8

    const/4 v0, 0x1

    add-int/2addr v8, v0

    move-object/from16 v0, p0

    move-object/from16 v6, v21

    move/from16 v9, v22

    move-object/from16 v7, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Computation to upper triangular matrix is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object/from16 v21, v6

    move-object/from16 v24, v10

    move-object/from16 v27, v13

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v13, v3

    move-object v3, v5

    move-object v12, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v27

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v9, p2

    move-object/from16 v8, v18

    move-object/from16 v11, v24

    move-object/from16 v10, v20

    move-object/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    move-object/from16 v2, p0

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    iput-object v1, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    iput-object v0, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    goto/16 :goto_4

    :cond_5
    move-object v2, v0

    move/from16 v22, v9

    move/from16 v20, v10

    const/4 v0, 0x2

    new-array v3, v0, [I

    const/4 v4, 0x1

    aput v22, v3, v4

    const/4 v7, 0x0

    aput v20, v3, v7

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    new-array v9, v0, [I

    aput v20, v9, v4

    aput v11, v9, v7

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    iput-object v9, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    new-array v10, v0, [I

    aput v22, v10, v4

    aput v11, v10, v7

    invoke-static {v8, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[S

    iput-object v10, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    new-array v12, v0, [I

    aput v22, v12, v4

    aput v20, v12, v7

    invoke-static {v8, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[S

    iput-object v12, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    new-array v13, v5, [I

    aput v11, v13, v0

    aput v11, v13, v4

    aput v20, v13, v7

    invoke-static {v8, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[S

    iput-object v13, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    new-array v14, v5, [I

    aput v20, v14, v0

    aput v11, v14, v4

    aput v20, v14, v7

    invoke-static {v8, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[[S

    iput-object v14, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    new-array v15, v5, [I

    aput v11, v15, v0

    aput v11, v15, v4

    aput v22, v15, v7

    invoke-static {v8, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[[S

    iput-object v15, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    new-array v6, v5, [I

    aput v20, v6, v0

    aput v11, v6, v4

    aput v22, v6, v7

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[S

    iput-object v6, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    new-array v7, v5, [I

    aput v22, v7, v0

    aput v11, v7, v4

    const/4 v11, 0x0

    aput v22, v7, v11

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[S

    iput-object v7, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    new-array v11, v5, [I

    aput v20, v11, v0

    aput v20, v11, v4

    const/4 v4, 0x0

    aput v22, v11, v4

    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[[S

    iput-object v11, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    new-array v5, v5, [I

    aput v22, v5, v0

    const/4 v0, 0x1

    aput v20, v5, v0

    aput v22, v5, v4

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    const/4 v5, 0x0

    iput-object v5, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    const/16 v5, 0x20

    invoke-static {v4, v1, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v5

    iput-object v5, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    array-length v4, v5

    invoke-static {v3, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[S[BI)I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v9, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[S[BI)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v10, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[S[BI)I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v12, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[S[BI)I

    move-result v4

    add-int/2addr v4, v3

    const/4 v3, 0x1

    invoke-static {v13, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v5

    add-int/2addr v5, v4

    const/4 v4, 0x0

    invoke-static {v14, v1, v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v15, v1, v8, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v5

    add-int/2addr v5, v8

    invoke-static {v6, v1, v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v7, v1, v6, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v11, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v0

    add-int/2addr v0, v3

    array-length v3, v1

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    :goto_4
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    invoke-static {p7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    invoke-static {p8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    invoke-static {p9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    invoke-static {p10}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    invoke-static {p11}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    invoke-static {p12}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    invoke-static {p13}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->version:I

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    if-ne v0, v1, :cond_0

    invoke-static {v3, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-static {v3, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[S)[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0
.end method
