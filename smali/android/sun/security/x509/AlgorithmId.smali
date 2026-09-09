.class public final Landroid/sun/security/x509/AlgorithmId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DH_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final DSA_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final EC_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final MD2_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final MD5_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final RSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final SHA256_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final SHA384_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final SHA512_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final SHA_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static initOidTable:Z = false

.field public static final md2WithRSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final md5WithRSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final nameTable:Ljava/util/HashMap;

.field public static oidTable:Ljava/util/HashMap; = null

.field private static final serialVersionUID:J = 0x640067c6d62263e5L

.field public static final sha1WithDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final sha1WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final sha1WithRSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final sha224WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final sha256WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final sha384WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final sha512WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

.field public static final specifiedWithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;


# instance fields
.field private algParams:Ljava/security/AlgorithmParameters;

.field private algid:Landroid/sun/security/util/ObjectIdentifier;

.field private constructedFromDer:Z

.field protected params:Landroid/sun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Landroid/sun/security/x509/AlgorithmId;->MD2_oid:Landroid/sun/security/util/ObjectIdentifier;

    const/4 v4, 0x5

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    sput-object v5, Landroid/sun/security/x509/AlgorithmId;->MD5_oid:Landroid/sun/security/util/ObjectIdentifier;

    new-array v6, v2, [I

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v6

    sput-object v6, Landroid/sun/security/x509/AlgorithmId;->SHA_oid:Landroid/sun/security/util/ObjectIdentifier;

    const/16 v7, 0x9

    new-array v8, v7, [I

    fill-array-data v8, :array_3

    invoke-static {v8}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v8

    sput-object v8, Landroid/sun/security/x509/AlgorithmId;->SHA256_oid:Landroid/sun/security/util/ObjectIdentifier;

    new-array v9, v7, [I

    fill-array-data v9, :array_4

    invoke-static {v9}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v9

    sput-object v9, Landroid/sun/security/x509/AlgorithmId;->SHA384_oid:Landroid/sun/security/util/ObjectIdentifier;

    new-array v7, v7, [I

    fill-array-data v7, :array_5

    invoke-static {v7}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v7

    sput-object v7, Landroid/sun/security/x509/AlgorithmId;->SHA512_oid:Landroid/sun/security/util/ObjectIdentifier;

    const/4 v10, 0x7

    new-array v11, v10, [I

    fill-array-data v11, :array_6

    new-array v12, v2, [I

    fill-array-data v12, :array_7

    new-array v13, v2, [I

    fill-array-data v13, :array_8

    new-array v14, v2, [I

    fill-array-data v14, :array_9

    const/16 v15, 0x8

    filled-new-array {v1, v4, v15, v0, v0}, [I

    move-result-object v0

    new-array v1, v10, [I

    fill-array-data v1, :array_a

    new-array v4, v2, [I

    fill-array-data v4, :array_b

    invoke-static {v4}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v4

    sput-object v4, Landroid/sun/security/x509/AlgorithmId;->EC_oid:Landroid/sun/security/util/ObjectIdentifier;

    new-array v15, v10, [I

    fill-array-data v15, :array_c

    new-array v2, v10, [I

    fill-array-data v2, :array_d

    move-object/from16 v18, v4

    new-array v4, v10, [I

    fill-array-data v4, :array_e

    move-object/from16 v20, v7

    const/4 v10, 0x6

    new-array v7, v10, [I

    fill-array-data v7, :array_f

    move-object/from16 v21, v9

    const/4 v10, 0x7

    new-array v9, v10, [I

    fill-array-data v9, :array_10

    move-object/from16 v22, v8

    new-array v8, v10, [I

    fill-array-data v8, :array_11

    move-object/from16 v23, v6

    new-array v6, v10, [I

    fill-array-data v6, :array_12

    move-object/from16 v24, v3

    const/4 v10, 0x6

    new-array v3, v10, [I

    fill-array-data v3, :array_13

    move-object/from16 v25, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_14

    move-object/from16 v26, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_15

    move-object/from16 v27, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_16

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    sput-object v5, Landroid/sun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    move-object/from16 v28, v5

    const/4 v10, 0x7

    new-array v5, v10, [I

    fill-array-data v5, :array_17

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    sput-object v5, Landroid/sun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    move-object/from16 v29, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_18

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    sput-object v5, Landroid/sun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    move-object/from16 v30, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_19

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    sput-object v5, Landroid/sun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    move-object/from16 v31, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_1a

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    sput-object v5, Landroid/sun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    const/4 v10, 0x6

    new-array v10, v10, [I

    fill-array-data v10, :array_1b

    invoke-static {v10}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v10

    sput-object v10, Landroid/sun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    move-object/from16 v17, v5

    const/4 v10, 0x7

    new-array v5, v10, [I

    fill-array-data v5, :array_1c

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    move-object/from16 v19, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_1d

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    move-object/from16 v32, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_1e

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    new-array v10, v10, [I

    fill-array-data v10, :array_1f

    invoke-static {v10}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v10

    move-object/from16 v16, v5

    move-object/from16 v33, v10

    const/16 v10, 0x8

    new-array v5, v10, [I

    fill-array-data v5, :array_20

    invoke-static {v5}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    new-array v10, v10, [I

    fill-array-data v10, :array_21

    invoke-static {v10}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v10

    invoke-static {v11}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v11

    sput-object v11, Landroid/sun/security/x509/AlgorithmId;->DH_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v12}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v12

    invoke-static {v13}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v13

    invoke-static {v14}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v14

    sput-object v14, Landroid/sun/security/x509/AlgorithmId;->DSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v0}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v1}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Landroid/sun/security/x509/AlgorithmId;->RSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v15}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v15

    sput-object v15, Landroid/sun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v2}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Landroid/sun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v4}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v4

    sput-object v4, Landroid/sun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v7}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-static {v9}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v9

    invoke-static {v8}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-static {v6}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-static {v3}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v3

    move-object/from16 v34, v10

    invoke-static/range {v26 .. v26}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v10

    move-object/from16 v26, v5

    invoke-static/range {v27 .. v27}, Landroid/sun/security/util/ObjectIdentifier;->newInternal([I)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v5

    sput-object v5, Landroid/sun/security/x509/AlgorithmId;->sha1WithDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    move-object/from16 v27, v6

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/sun/security/x509/AlgorithmId;->nameTable:Ljava/util/HashMap;

    move-object/from16 v35, v8

    const-string v8, "MD5"

    move-object/from16 v36, v9

    move-object/from16 v9, v25

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "MD2"

    move-object/from16 v9, v24

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SHA"

    move-object/from16 v9, v23

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SHA256"

    move-object/from16 v9, v22

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SHA384"

    move-object/from16 v9, v21

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SHA512"

    move-object/from16 v9, v20

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "RSA"

    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Diffie-Hellman"

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DSA"

    invoke-virtual {v6, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EC"

    move-object/from16 v1, v18

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA1withECDSA"

    move-object/from16 v1, v28

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA224withECDSA"

    move-object/from16 v1, v29

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA256withECDSA"

    move-object/from16 v1, v30

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA384withECDSA"

    move-object/from16 v1, v31

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA512withECDSA"

    move-object/from16 v1, v17

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MD5withRSA"

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MD2withRSA"

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA1withDSA"

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA1withRSA"

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA256withRSA"

    move-object/from16 v1, v36

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA384withRSA"

    move-object/from16 v1, v35

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA512withRSA"

    move-object/from16 v1, v27

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PBEWithMD5AndDES"

    move-object/from16 v1, v19

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PBEWithMD5AndRC2"

    move-object/from16 v1, v32

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PBEWithSHA1AndDES"

    move-object/from16 v1, v16

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PBEWithSHA1AndRC2"

    move-object/from16 v1, v33

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PBEWithSHA1AndDESede"

    move-object/from16 v1, v26

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PBEWithSHA1AndRC2_40"

    move-object/from16 v1, v34

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x3
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x348
        0x273e
        0x2
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x2
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xb
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xc
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xd
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xd
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1b
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x3
    .end array-data

    :array_16
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x4
    .end array-data

    :array_1b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
    .end array-data

    :array_1c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x3
    .end array-data

    :array_1d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x6
    .end array-data

    :array_1e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xa
    .end array-data

    :array_1f
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xb
    .end array-data

    :array_20
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x3
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sun/security/x509/AlgorithmId;->constructedFromDer:Z

    return-void
.end method

.method public constructor <init>(Landroid/sun/security/util/ObjectIdentifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sun/security/x509/AlgorithmId;->constructedFromDer:Z

    iput-object p1, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Landroid/sun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    iput-object p2, p0, Landroid/sun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/sun/security/x509/AlgorithmId;->constructedFromDer:Z

    return-void
.end method

.method public static algOID(Ljava/lang/String;)Landroid/sun/security/util/ObjectIdentifier;
    .locals 10

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "OID."

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/sun/security/util/ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->MD5_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_2
    const-string v0, "MD2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->MD2_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_3
    const-string v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "SHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_c

    :cond_4
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_b

    :cond_5
    const-string v0, "SHA-384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_a

    :cond_6
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "SHA512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_9

    :cond_7
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->RSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_8
    const-string v0, "Diffie-Hellman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "DH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_8

    :cond_9
    const-string v0, "DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->DSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_a
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->EC_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_b
    const-string v0, "MD5withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "MD5/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_7

    :cond_c
    const-string v0, "MD2withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "MD2/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_6

    :cond_d
    const-string v0, "SHAwithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "SHA1withDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "SHA/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "SHA1/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "DSAWithSHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "DSS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "SHA-1/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_5

    :cond_e
    const-string v0, "SHA1WithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "SHA1/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_4

    :cond_f
    const-string v0, "SHA1withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "ECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_3

    :cond_10
    const-string v0, "SHA224withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_11
    const-string v0, "SHA256withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_12
    const-string v0, "SHA384withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_13
    const-string v0, "SHA512withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_14
    sget-boolean v0, Landroid/sun/security/x509/AlgorithmId;->initOidTable:Z

    if-nez v0, :cond_1c

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1a

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :cond_15
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ALG.ALIAS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v2, :cond_15

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_16

    goto :goto_2

    :cond_16
    sget-object v9, Landroid/sun/security/x509/AlgorithmId;->oidTable:Ljava/util/HashMap;

    if-nez v9, :cond_17

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Landroid/sun/security/x509/AlgorithmId;->oidTable:Ljava/util/HashMap;

    :cond_17
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v0, v4

    invoke-virtual {v9, v6}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    :cond_18
    if-eqz v6, :cond_15

    sget-object v7, Landroid/sun/security/x509/AlgorithmId;->oidTable:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_15

    sget-object v7, Landroid/sun/security/x509/AlgorithmId;->oidTable:Ljava/util/HashMap;

    new-instance v9, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v9, v8}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_19
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1a
    sget-object v0, Landroid/sun/security/x509/AlgorithmId;->oidTable:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/sun/security/x509/AlgorithmId;->oidTable:Ljava/util/HashMap;

    :cond_1b
    sput-boolean v1, Landroid/sun/security/x509/AlgorithmId;->initOidTable:Z

    :cond_1c
    sget-object v0, Landroid/sun/security/x509/AlgorithmId;->oidTable:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_1d
    :goto_3
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_1e
    :goto_4
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_1f
    :goto_5
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->sha1WithDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_20
    :goto_6
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_21
    :goto_7
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_22
    :goto_8
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->DH_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_23
    :goto_9
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->SHA512_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_24
    :goto_a
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->SHA384_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_25
    :goto_b
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->SHA256_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0

    :cond_26
    :goto_c
    sget-object p0, Landroid/sun/security/x509/AlgorithmId;->SHA_oid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Landroid/sun/security/x509/AlgorithmId;
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/sun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/sun/security/x509/AlgorithmId;

    invoke-direct {p0, v0}, Landroid/sun/security/x509/AlgorithmId;-><init>(Landroid/sun/security/util/ObjectIdentifier;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unrecognized algorithm name: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Invalid ObjectIdentifier "

    invoke-static {v1, p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Landroid/sun/security/util/DerValue;)Landroid/sun/security/x509/AlgorithmId;
    .locals 5

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->toDerInputStream()Landroid/sun/security/util/DerInputStream;

    move-result-object p0

    new-instance v0, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Landroid/sun/security/util/DerInputStream;)V

    iget-object v1, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v1

    iget-byte v3, v1, Landroid/sun/security/util/DerValue;->tag:B

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget v1, v1, Landroid/sun/security/util/DerValue;->length:I

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid NULL"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    if-nez p0, :cond_4

    :goto_1
    new-instance p0, Landroid/sun/security/x509/AlgorithmId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/sun/security/x509/AlgorithmId;->constructedFromDer:Z

    iput-object v0, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    iput-object v1, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/sun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Landroid/sun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :try_start_1
    sget-object v1, Landroid/sun/security/ec/ECKeyFactory;->ecInternalProvider:Landroid/sun/security/ec/ECKeyFactory$1;

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Landroid/sun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    invoke-virtual {v1}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    goto :goto_3

    :catch_1
    iput-object v2, p0, Landroid/sun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid AlgorithmIdentifier: extra data"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "algid parse error, not a sequence"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final derEncode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 4

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v0}, Landroid/sun/security/util/ObjectIdentifier;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-boolean v2, p0, Landroid/sun/security/x509/AlgorithmId;->constructedFromDer:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/sun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/sun/security/util/DerValue;

    invoke-virtual {v2}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/sun/security/util/DerValue;-><init>([B)V

    iput-object v3, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    if-nez p0, :cond_2

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/sun/security/util/DerOutputStream;->putLength(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/sun/security/util/DerValue;->encode(Landroid/sun/security/util/DerOutputStream;)V

    :goto_1
    const/16 p0, 0x30

    invoke-virtual {v1, p0, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/sun/security/x509/AlgorithmId;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Landroid/sun/security/x509/AlgorithmId;

    iget-object v1, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    invoke-virtual {v1, v3}, Landroid/sun/security/util/DerValue;->equals(Landroid/sun/security/util/DerValue;)Z

    move-result v1

    :goto_0
    iget-object p0, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    iget-object p1, p1, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {p0, p1}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    instance-of v0, p1, Landroid/sun/security/util/ObjectIdentifier;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/sun/security/util/ObjectIdentifier;

    iget-object p0, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {p0, p1}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    return v2
.end method

.method public final getName()Ljava/lang/String;
    .locals 4

    const-string v0, "withECDSA"

    sget-object v1, Landroid/sun/security/x509/AlgorithmId;->nameTable:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    sget-object v3, Landroid/sun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v2, Landroid/sun/security/util/DerValue;

    iget-object v3, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Landroid/sun/security/util/DerValue;-><init>([B)V

    invoke-static {v2}, Landroid/sun/security/x509/AlgorithmId;->parse(Landroid/sun/security/util/DerValue;)Landroid/sun/security/x509/AlgorithmId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "SHA1"

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-nez v1, :cond_4

    iget-object p0, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {p0}, Landroid/sun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public final getOID()Landroid/sun/security/util/ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    return-object p0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/sun/security/x509/AlgorithmId;->algid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Landroid/sun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    if-nez v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/sun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ", params unparsed"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/sun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/sun/security/x509/AlgorithmId;->params:Landroid/sun/security/util/DerValue;

    if-nez v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/sun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ", params unparsed"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
