.class public final Landroid/sun/security/pkcs12/PKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;
.source "SourceFile"


# static fields
.field public static final CertBag_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final PKCS8ShroudedKeyBag_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final PKCS9CertType_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final PKCS9FriendlyName_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final PKCS9LocalKeyId_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final pbeWithSHAAnd3KeyTripleDESCBC_OID:Landroid/sun/security/util/ObjectIdentifier;

.field public static final pbeWithSHAAnd40BitRC2CBC_OID:Landroid/sun/security/util/ObjectIdentifier;


# instance fields
.field public final certEntries:Ljava/util/ArrayList;

.field public final certsMap:Ljava/util/LinkedHashMap;

.field public counter:I

.field public final entries:Ljava/util/Hashtable;

.field public final keyList:Ljava/util/ArrayList;

.field public privateKeyCount:I

.field public random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    const/16 v4, 0x8

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    new-array v6, v4, [I

    fill-array-data v6, :array_5

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    :try_start_0
    new-instance v7, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v7, v1}, Landroid/sun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v7, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS8ShroudedKeyBag_OID:Landroid/sun/security/util/ObjectIdentifier;

    new-instance v1, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v1, v0}, Landroid/sun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v1, Landroid/sun/security/pkcs12/PKCS12KeyStore;->CertBag_OID:Landroid/sun/security/util/ObjectIdentifier;

    new-instance v0, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v3}, Landroid/sun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS9FriendlyName_OID:Landroid/sun/security/util/ObjectIdentifier;

    new-instance v0, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v2}, Landroid/sun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS9LocalKeyId_OID:Landroid/sun/security/util/ObjectIdentifier;

    new-instance v0, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v5}, Landroid/sun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS9CertType_OID:Landroid/sun/security/util/ObjectIdentifier;

    new-instance v0, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v6}, Landroid/sun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd40BitRC2CBC_OID:Landroid/sun/security/util/ObjectIdentifier;

    new-instance v0, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v0, v4}, Landroid/sun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd3KeyTripleDESCBC_OID:Landroid/sun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0xa
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0xa
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x14
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x15
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x16
        0x1
    .end array-data

    :array_5
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

    :array_6
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
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->counter:I

    iput v0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->keyList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->certsMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->certEntries:Ljava/util/ArrayList;

    return-void
.end method

.method public static getBagAttributes(Ljava/lang/String;[B)[B
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/16 v2, 0x30

    const/16 v3, 0x31

    if-eqz p0, :cond_1

    new-instance v4, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v4}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    sget-object v5, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS9FriendlyName_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v4}, Landroid/sun/security/util/ObjectIdentifier;->encode(Landroid/sun/security/util/DerOutputStream;)V

    new-instance v5, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v5}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v6, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v6}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const-string v7, "UnicodeBigUnmarked"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v7, 0x1e

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    array-length v7, p0

    invoke-virtual {v5, v7}, Landroid/sun/security/util/DerOutputStream;->putLength(I)V

    invoke-virtual {v5, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v3, v5}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v6, v2, v4}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_2

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    sget-object v4, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS9LocalKeyId_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v4, v0}, Landroid/sun/security/util/ObjectIdentifier;->encode(Landroid/sun/security/util/DerOutputStream;)V

    new-instance v4, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v4}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v5, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v5}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v4, v6, p1}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    invoke-virtual {v0, v3, v4}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v5, v2, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_2
    new-instance p1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {p1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_4
    invoke-virtual {v1, v3, p1}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static getPBEKey([C)Ljavax/crypto/SecretKey;
    .locals 3

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    const-string p0, "PBE"

    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSecretKey failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public static parseAlgParameters(Landroid/sun/security/util/DerInputStream;)Ljava/security/AlgorithmParameters;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object p0

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    const-string v0, "PBE"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    return-object v1

    :goto_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseAlgParameters failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public static validateChain([Ljava/security/cert/Certificate;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p0, v1

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_1
    return v3
.end method


# virtual methods
.method public final calculateMac([B[C)[B
    .locals 5

    const-string v0, "SHA1"

    const/16 v1, 0x14

    :try_start_0
    new-array v1, v1, [B

    iget-object v2, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->random:Ljava/security/SecureRandom;

    :cond_0
    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string p0, "HmacPBESHA1"

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-static {p2}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    invoke-static {v0}, Landroid/sun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Landroid/sun/security/x509/AlgorithmId;

    move-result-object p1

    invoke-virtual {p1}, Landroid/sun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_2

    array-length p2, p0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    new-instance p2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {p2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v4, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v4}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-static {p1}, Landroid/sun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Landroid/sun/security/x509/AlgorithmId;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/sun/security/x509/AlgorithmId;->derEncode(Landroid/sun/security/util/DerOutputStream;)V

    const/4 p1, 0x4

    invoke-virtual {v4, p1, p0}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    const/16 p0, 0x30

    invoke-virtual {v2, p0, v4}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v2, p1, v1}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    invoke-virtual {v2, v3}, Landroid/sun/security/util/DerOutputStream;->putInteger(I)V

    invoke-virtual {v0, p0, v2}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the digest parameter must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "the digest parameter must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "calculateMac failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public final createEncryptedData([C)[B
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v2, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/16 v7, 0x30

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    iget-object v9, v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    array-length v9, v9

    :goto_0
    move v10, v8

    :goto_1
    if-ge v10, v9, :cond_0

    new-instance v11, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v11}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    sget-object v12, Landroid/sun/security/pkcs12/PKCS12KeyStore;->CertBag_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v12, v11}, Landroid/sun/security/util/ObjectIdentifier;->encode(Landroid/sun/security/util/DerOutputStream;)V

    new-instance v12, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v12}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    sget-object v13, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS9CertType_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v13, v12}, Landroid/sun/security/util/ObjectIdentifier;->encode(Landroid/sun/security/util/DerOutputStream;)V

    new-instance v13, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v13}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v14, v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    aget-object v14, v14, v10

    check-cast v14, Ljava/security/cert/X509Certificate;

    invoke-virtual {v14}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v15

    invoke-virtual {v13, v6, v15}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    invoke-static {v8, v5}, Landroid/sun/security/util/DerValue;->createTag(BZ)B

    move-result v15

    invoke-virtual {v12, v15, v13}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    new-instance v13, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v13}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v13, v7, v12}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    new-instance v13, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v13}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v13, v12}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v8, v5}, Landroid/sun/security/util/DerValue;->createTag(BZ)B

    move-result v12

    invoke-virtual {v11, v12, v13}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    if-nez v10, :cond_2

    iget-object v12, v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    iget-object v13, v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    invoke-static {v12, v13}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getBagAttributes(Ljava/lang/String;[B)[B

    move-result-object v12

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getBagAttributes(Ljava/lang/String;[B)[B

    move-result-object v12

    :goto_2
    if-eqz v12, :cond_3

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    invoke-virtual {v1, v7, v11}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v2, v7, v1}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "PBEWithSHA1AndRC2_40"

    invoke-virtual {v0, v2}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    new-instance v3, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v3}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v4, Landroid/sun/security/x509/AlgorithmId;

    sget-object v9, Landroid/sun/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd40BitRC2CBC_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v4, v9, v0}, Landroid/sun/security/x509/AlgorithmId;-><init>(Landroid/sun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v4, v3}, Landroid/sun/security/x509/AlgorithmId;->derEncode(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, v5, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    sget-object v2, Landroid/sun/security/pkcs/ContentInfo;->DATA_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v1}, Landroid/sun/security/util/ObjectIdentifier;->encode(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v2, v6, v0}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    invoke-static {v8, v8}, Landroid/sun/security/util/DerValue;->createTag(BZ)B

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/sun/security/util/DerOutputStream;->writeImplicit(BLandroid/sun/security/util/DerOutputStream;)V

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v0, v7, v1}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v1, v8}, Landroid/sun/security/util/DerOutputStream;->putInteger(I)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2, v7, v1}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to encrypt safe contents entry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final createSafeContent()[B
    .locals 11

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/16 v3, 0x30

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    new-instance v5, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v5}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    sget-object v6, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS8ShroudedKeyBag_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v6, v5}, Landroid/sun/security/util/ObjectIdentifier;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object v6, v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz v6, :cond_3

    :try_start_0
    new-instance v7, Landroid/sun/security/util/DerValue;

    invoke-direct {v7, v6}, Landroid/sun/security/util/DerValue;-><init>([B)V

    iget-object v7, v7, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    invoke-virtual {v7}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v8

    invoke-virtual {v7}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v9

    filled-new-array {v8, v9}, [Landroid/sun/security/util/DerValue;

    move-result-object v8

    iget-object v9, v7, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    if-nez v9, :cond_2

    const/4 v7, 0x0

    aget-object v9, v8, v7

    invoke-static {v9}, Landroid/sun/security/x509/AlgorithmId;->parse(Landroid/sun/security/util/DerValue;)Landroid/sun/security/x509/AlgorithmId;

    aget-object v9, v8, v7

    iget-object v9, v9, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v9, v9, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    aget-object v10, v8, v9

    invoke-virtual {v10}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v8, v8, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v8, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v8}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v8, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v7, v9}, Landroid/sun/security/util/DerValue;->createTag(BZ)B

    move-result v6

    invoke-virtual {v5, v6, v8}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    iget-object v4, v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    invoke-static {v2, v4}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getBagAttributes(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, v3, v5}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    goto/16 :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "encryptedData field overrun"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "encryptionAlgorithm field overrun"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "overrun, bytes = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "encoding must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Private key not stored as PKCS#8 EncryptedPrivateKeyInfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {p0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v3, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final encryptPrivateKey([B[C)[B
    .locals 2

    const-string v0, "PBEWithSHA1AndDESede"

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    invoke-static {p2}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance p2, Landroid/sun/security/x509/AlgorithmId;

    sget-object v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd3KeyTripleDESCBC_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {p2, v0, p0}, Landroid/sun/security/x509/AlgorithmId;-><init>(Landroid/sun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    new-instance p1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {p1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p2, v0}, Landroid/sun/security/x509/AlgorithmId;->derEncode(Landroid/sun/security/util/DerOutputStream;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p2, p0}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    const/16 p0, 0x30

    invoke-virtual {p1, p0, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/UnrecoverableKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Encrypt Private Key failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public final engineAliases()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public final engineContainsAlias(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized engineDeleteEntry(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    iget-object v4, v4, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    aget-object v2, v4, v2

    :cond_1
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_2
    return-object v1
.end method

.method public final engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/util/Date;

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p0, :cond_4

    :try_start_0
    new-instance p1, Landroid/sun/security/util/DerValue;

    invoke-direct {p1, p0}, Landroid/sun/security/util/DerValue;-><init>([B)V

    iget-object p0, p1, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    invoke-virtual {p0}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object p1

    invoke-virtual {p0}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v0

    filled-new-array {p1, v0}, [Landroid/sun/security/util/DerValue;

    move-result-object p1

    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    aget-object v0, p1, p0

    invoke-static {v0}, Landroid/sun/security/x509/AlgorithmId;->parse(Landroid/sun/security/util/DerValue;)Landroid/sun/security/x509/AlgorithmId;

    move-result-object v0

    aget-object v1, p1, p0

    iget-object v1, v1, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v1, v1, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    aget-object p1, p1, v1

    iget-object p1, p1, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object p1, p1, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    new-instance v1, Landroid/sun/security/util/DerValue;

    new-instance v2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v0, v2}, Landroid/sun/security/x509/AlgorithmId;->derEncode(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/sun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1}, Landroid/sun/security/util/DerValue;->toDerInputStream()Landroid/sun/security/util/DerInputStream;

    move-result-object v0

    new-instance v1, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v1, v0}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Landroid/sun/security/util/DerInputStream;)V

    invoke-static {v0}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->parseAlgParameters(Landroid/sun/security/util/DerInputStream;)Ljava/security/AlgorithmParameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p2}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-virtual {v1}, Landroid/sun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    new-instance v0, Landroid/sun/security/util/DerValue;

    invoke-direct {v0, p1}, Landroid/sun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v0}, Landroid/sun/security/util/DerValue;->toDerInputStream()Landroid/sun/security/util/DerInputStream;

    move-result-object p1

    invoke-virtual {p1}, Landroid/sun/security/util/DerInputStream;->getInteger()I

    invoke-virtual {p1}, Landroid/sun/security/util/DerInputStream;->getSequence()[Landroid/sun/security/util/DerValue;

    move-result-object p1

    new-instance v0, Landroid/sun/security/x509/AlgorithmId;

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getOID()Landroid/sun/security/util/ObjectIdentifier;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/sun/security/x509/AlgorithmId;-><init>(Landroid/sun/security/util/ObjectIdentifier;)V

    invoke-virtual {v0}, Landroid/sun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/UnrecoverableKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Get Key failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_1
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "encryptedData field overrun"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "encryptionAlgorithm field overrun"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "overrun, bytes = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoding must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Private key not stored as PKCS#8 EncryptedPrivateKeyInfo: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public final engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized engineLoad(Ljava/io/InputStream;[C)V
    .locals 11

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->counter:I

    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-direct {v1, p1}, Landroid/sun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Landroid/sun/security/util/DerValue;->toDerInputStream()Landroid/sun/security/util/DerInputStream;

    move-result-object p1

    invoke-virtual {p1}, Landroid/sun/security/util/DerInputStream;->getInteger()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    new-instance v1, Landroid/sun/security/pkcs/ContentInfo;

    invoke-direct {v1, p1}, Landroid/sun/security/pkcs/ContentInfo;-><init>(Landroid/sun/security/util/DerInputStream;)V

    iget-object v2, v1, Landroid/sun/security/pkcs/ContentInfo;->contentType:Landroid/sun/security/util/ObjectIdentifier;

    sget-object v3, Landroid/sun/security/pkcs/ContentInfo;->DATA_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Landroid/sun/security/pkcs/ContentInfo;->getData()[B

    move-result-object v1

    new-instance v2, Landroid/sun/security/util/DerInputStream;

    invoke-direct {v2, v1}, Landroid/sun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v2}, Landroid/sun/security/util/DerInputStream;->getSequence()[Landroid/sun/security/util/DerValue;

    move-result-object v2

    array-length v3, v2

    iput v0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    move v4, v0

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v4, v3, :cond_6

    new-instance v7, Landroid/sun/security/util/DerInputStream;

    aget-object v8, v2, v4

    invoke-virtual {v8}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/sun/security/util/DerInputStream;-><init>([B)V

    new-instance v8, Landroid/sun/security/pkcs/ContentInfo;

    invoke-direct {v8, v7}, Landroid/sun/security/pkcs/ContentInfo;-><init>(Landroid/sun/security/util/DerInputStream;)V

    iget-object v7, v8, Landroid/sun/security/pkcs/ContentInfo;->contentType:Landroid/sun/security/util/ObjectIdentifier;

    sget-object v9, Landroid/sun/security/pkcs/ContentInfo;->DATA_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v7, v9}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Landroid/sun/security/pkcs/ContentInfo;->getData()[B

    move-result-object v5

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :cond_1
    sget-object v9, Landroid/sun/security/pkcs/ContentInfo;->ENCRYPTED_DATA_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v7, v9}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez p2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v7, v8, Landroid/sun/security/pkcs/ContentInfo;->content:Landroid/sun/security/util/DerValue;

    invoke-virtual {v7}, Landroid/sun/security/util/DerValue;->toDerInputStream()Landroid/sun/security/util/DerInputStream;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sun/security/util/DerInputStream;->getInteger()I

    invoke-virtual {v7}, Landroid/sun/security/util/DerInputStream;->getSequence()[Landroid/sun/security/util/DerValue;

    move-result-object v7

    aget-object v8, v7, v0

    invoke-virtual {v8}, Landroid/sun/security/util/DerValue;->getOID()Landroid/sun/security/util/ObjectIdentifier;

    aget-object v8, v7, v5

    invoke-virtual {v8}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    aget-object v8, v7, v6

    invoke-virtual {v8, v0}, Landroid/sun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, v7, v6

    iget-byte v9, v8, Landroid/sun/security/util/DerValue;->tag:B

    const/16 v10, 0x20

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_3

    const/16 v9, 0x24

    int-to-byte v9, v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x4

    :goto_1
    iput-byte v9, v8, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v8}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    move-result-object v8

    aget-object v5, v7, v5

    invoke-virtual {v5}, Landroid/sun/security/util/DerValue;->toDerInputStream()Landroid/sun/security/util/DerInputStream;

    move-result-object v5

    new-instance v7, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v7, v5}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Landroid/sun/security/util/DerInputStream;)V

    invoke-static {v5}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->parseAlgParameters(Landroid/sun/security/util/DerInputStream;)Ljava/security/AlgorithmParameters;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object v9

    invoke-virtual {v7}, Landroid/sun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    invoke-virtual {v7, v6, v9, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v7, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    new-instance v6, Landroid/sun/security/util/DerInputStream;

    invoke-direct {v6, v5}, Landroid/sun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {p0, v6}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->loadSafeContents(Landroid/sun/security/util/DerInputStream;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to decrypt safe contents entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "encrypted content not present!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "public key protected PKCS12 not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-eqz p2, :cond_c

    iget-object v2, p1, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual {p1}, Landroid/sun/security/util/DerInputStream;->getSequence()[Landroid/sun/security/util/DerValue;

    move-result-object p1

    new-instance v2, Landroid/sun/security/util/DerInputStream;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/sun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v2}, Landroid/sun/security/util/DerInputStream;->getSequence()[Landroid/sun/security/util/DerValue;

    move-result-object v2

    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/sun/security/x509/AlgorithmId;->parse(Landroid/sun/security/util/DerValue;)Landroid/sun/security/x509/AlgorithmId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    aget-object v4, p1, v5

    invoke-virtual {v4}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    move-result-object v4

    array-length v7, p1

    if-le v7, v6, :cond_8

    aget-object p1, p1, v6

    iget-byte v5, p1, Landroid/sun/security/util/DerValue;->tag:B

    if-ne v5, v6, :cond_7

    iget-object v5, p1, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    iget-object p1, p1, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object p1, p1, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/sun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v5

    goto :goto_4

    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getInteger, not an int "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p1, p1, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SHA"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "SHA1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "SHA-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_9
    :goto_5
    const-string p1, "SHA1"

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HmacPBE"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-static {p2}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Failed PKCS12 integrity checking"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Integrity check failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_c
    :goto_7
    iget-object p1, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->keyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    :goto_8
    array-length p2, p1

    if-ge v0, p2, :cond_10

    aget-object p2, p1, v0

    iget-object v1, p2, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    if-eqz v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->findMatchedCertificate(Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    :goto_9
    if-eqz v2, :cond_e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_a

    :cond_d
    iget-object v2, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->certsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    goto :goto_9

    :cond_e
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    iput-object v1, p2, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_10
    iget-object p1, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->certEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->certsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p1, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->keyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_11
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "public key protected PKCS12 not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PKCS12 keystore not in version 3 format"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_b
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Cannot overwrite own certificate"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "TrustedCertEntry not supported"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 5

    const-string v0, "Key protection  algorithm not found: "

    const-string v1, "Time "

    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;-><init>(I)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    instance-of v3, p2, Ljava/security/PrivateKey;

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PKCS#8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PKCS8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Private key is not encodedas PKCS#8"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->encryptPrivateKey([B[C)[B

    move-result-object p2

    iput-object p2, v2, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p4, :cond_4

    array-length p2, p4

    const/4 p3, 0x1

    if-le p2, p3, :cond_3

    invoke-static {p4}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->validateChain([Ljava/security/cert/Certificate;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Certificate chain is not validate"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p4}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/cert/Certificate;

    iput-object p2, v2, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v2, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, v2, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    iget-object p2, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Key is not a PrivateKey"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    new-instance p2, Ljava/security/KeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 6

    const-string v0, "Private key is not stored as PKCS#8 EncryptedPrivateKeyInfo: "

    const-string v1, "Time "

    monitor-enter p0

    if-eqz p2, :cond_4

    :try_start_0
    new-instance v2, Landroid/sun/security/util/DerValue;

    invoke-direct {v2, p2}, Landroid/sun/security/util/DerValue;-><init>([B)V

    iget-object v2, v2, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    invoke-virtual {v2}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v4

    filled-new-array {v3, v4}, [Landroid/sun/security/util/DerValue;

    move-result-object v3

    iget-object v4, v2, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x0

    aget-object v4, v3, v2

    invoke-static {v4}, Landroid/sun/security/x509/AlgorithmId;->parse(Landroid/sun/security/util/DerValue;)Landroid/sun/security/x509/AlgorithmId;

    aget-object v4, v3, v2

    iget-object v4, v4, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v4, v4, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v3, v3, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :try_start_1
    new-instance v0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    invoke-direct {v0, v2}, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;-><init>(I)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p3, :cond_0

    invoke-virtual {p3}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/cert/Certificate;

    iput-object p2, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :cond_0
    iget-object p2, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "encryptedData field overrun"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "encryptionAlgorithm field overrun"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "overrun, bytes = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v2, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p3}, Ljava/io/InputStream;->available()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encoding must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    new-instance p2, Ljava/security/KeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final engineSize()I
    .locals 0

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized engineStore(Ljava/io/OutputStream;[C)V
    .locals 7

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/sun/security/util/DerOutputStream;->putInteger(I)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v1, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v1}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    new-instance v2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->createSafeContent()[B

    move-result-object v3

    new-instance v4, Landroid/sun/security/pkcs/ContentInfo;

    invoke-direct {v4, v3}, Landroid/sun/security/pkcs/ContentInfo;-><init>([B)V

    invoke-virtual {v4, v2}, Landroid/sun/security/pkcs/ContentInfo;->encode(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {p0, p2}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->createEncryptedData([C)[B

    move-result-object v3

    new-instance v4, Landroid/sun/security/pkcs/ContentInfo;

    sget-object v5, Landroid/sun/security/pkcs/ContentInfo;->ENCRYPTED_DATA_OID:Landroid/sun/security/util/ObjectIdentifier;

    new-instance v6, Landroid/sun/security/util/DerValue;

    invoke-direct {v6, v3}, Landroid/sun/security/util/DerValue;-><init>([B)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Landroid/sun/security/pkcs/ContentInfo;->contentType:Landroid/sun/security/util/ObjectIdentifier;

    iput-object v6, v4, Landroid/sun/security/pkcs/ContentInfo;->content:Landroid/sun/security/util/DerValue;

    invoke-virtual {v4, v2}, Landroid/sun/security/pkcs/ContentInfo;->encode(Landroid/sun/security/util/DerOutputStream;)V

    new-instance v3, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v3}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4, v2}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v3, Landroid/sun/security/pkcs/ContentInfo;

    invoke-direct {v3, v2}, Landroid/sun/security/pkcs/ContentInfo;-><init>([B)V

    invoke-virtual {v3, v1}, Landroid/sun/security/pkcs/ContentInfo;->encode(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v2, p2}, Landroid/sun/security/pkcs12/PKCS12KeyStore;->calculateMac([B[C)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    new-instance p2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {p2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p2, v4, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "password can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final findMatchedCertificate(Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;)Ljava/security/cert/X509Certificate;
    .locals 6

    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->certEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;

    iget-object v4, p1, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    iget-object v5, v3, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;->keyId:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    iget-object v5, v3, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;->alias:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v1, p1, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, v3, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;->cert:Ljava/security/cert/X509Certificate;

    return-object p0

    :cond_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    iget-object v4, p1, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object p0, v1, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;->cert:Ljava/security/cert/X509Certificate;

    return-object p0

    :cond_4
    if-eqz v2, :cond_5

    iget-object p0, v2, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;->cert:Ljava/security/cert/X509Certificate;

    return-object p0

    :cond_5
    return-object v0
.end method

.method public final getAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v1, 0x14

    new-array v1, v1, [B

    iget-object v2, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->random:Ljava/security/SecureRandom;

    :cond_0
    iget-object p0, p0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 p0, 0x400

    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    :try_start_0
    invoke-static {p1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAlgorithmParameters failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public final loadSafeContents(Landroid/sun/security/util/DerInputStream;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "Set tag error"

    invoke-virtual/range {p1 .. p1}, Landroid/sun/security/util/DerInputStream;->getSequence()[Landroid/sun/security/util/DerValue;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_11

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/sun/security/util/DerValue;->toDerInputStream()Landroid/sun/security/util/DerInputStream;

    move-result-object v6

    new-instance v7, Landroid/sun/security/util/ObjectIdentifier;

    invoke-direct {v7, v6}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Landroid/sun/security/util/DerInputStream;)V

    invoke-virtual {v6}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/sun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v8, v8, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    invoke-virtual {v8}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v8

    sget-object v9, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS8ShroudedKeyBag_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v7, v9}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    new-instance v7, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    invoke-direct {v7, v4}, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;-><init>(I)V

    invoke-virtual {v8}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    iput-object v8, v7, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    iget v8, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    add-int/2addr v8, v10

    iput v8, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    goto :goto_1

    :cond_0
    sget-object v9, Landroid/sun/security/pkcs12/PKCS12KeyStore;->CertBag_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v7, v9}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Landroid/sun/security/util/DerInputStream;

    invoke-virtual {v8}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/sun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v7}, Landroid/sun/security/util/DerInputStream;->getSequence()[Landroid/sun/security/util/DerValue;

    move-result-object v7

    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/sun/security/util/DerValue;->getOID()Landroid/sun/security/util/ObjectIdentifier;

    aget-object v8, v7, v10

    invoke-virtual {v8, v4}, Landroid/sun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v7, v7, v10

    iget-object v7, v7, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    invoke-virtual {v7}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v7

    const-string v8, "X509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported PKCS12 cert value type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v7, v10

    iget-byte v2, v2, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x31

    :try_start_0
    iget-object v9, v6, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    iput-byte v9, v6, Landroid/sun/security/util/DerInputStream;->tag:B

    if-ne v9, v8, :cond_3

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/sun/security/util/DerInputStream;->readVector(I)[Landroid/sun/security/util/DerValue;

    move-result-object v6

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_7

    move v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    array-length v14, v6

    if-ge v9, v14, :cond_8

    new-instance v14, Landroid/sun/security/util/DerInputStream;

    aget-object v15, v6, v9

    invoke-virtual {v15}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/sun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v14}, Landroid/sun/security/util/DerInputStream;->getSequence()[Landroid/sun/security/util/DerValue;

    move-result-object v14

    aget-object v15, v14, v4

    invoke-virtual {v15}, Landroid/sun/security/util/DerValue;->getOID()Landroid/sun/security/util/ObjectIdentifier;

    move-result-object v15

    new-instance v11, Landroid/sun/security/util/DerInputStream;

    aget-object v14, v14, v10

    invoke-virtual {v14}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/sun/security/util/DerInputStream;-><init>([B)V

    :try_start_1
    iget-object v14, v11, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v14

    int-to-byte v14, v14

    iput-byte v14, v11, Landroid/sun/security/util/DerInputStream;->tag:B

    if-ne v14, v8, :cond_6

    invoke-virtual {v11, v10}, Landroid/sun/security/util/DerInputStream;->readVector(I)[Landroid/sun/security/util/DerValue;

    move-result-object v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v14, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS9FriendlyName_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v15, v14}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    aget-object v11, v11, v4

    invoke-virtual {v11}, Landroid/sun/security/util/DerValue;->getBMPString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_4
    sget-object v14, Landroid/sun/security/pkcs12/PKCS12KeyStore;->PKCS9LocalKeyId_OID:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v15, v14}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    aget-object v11, v11, v4

    invoke-virtual {v11}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    move-result-object v12

    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " should have a value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_8
    instance-of v6, v7, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    const-string v8, "01"

    const-string v9, "UTF8"

    if-eqz v6, :cond_d

    check-cast v7, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-nez v12, :cond_9

    iget v6, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    if-ne v6, v10, :cond_f

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    :cond_9
    iput-object v12, v7, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v12, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v8, "Time "

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    :try_start_3
    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-direct {v8, v11, v12}, Ljava/util/Date;-><init>(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v11, v8

    goto :goto_5

    :catch_2
    :cond_a
    const/4 v11, 0x0

    :goto_5
    if-nez v11, :cond_b

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    :cond_b
    iput-object v11, v7, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    iget-object v6, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_c

    iget v6, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->counter:I

    add-int/2addr v6, v10

    iput v6, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->counter:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    :cond_c
    iput-object v13, v7, Landroid/sun/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    iget-object v6, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    instance-of v6, v7, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_f

    check-cast v7, Ljava/security/cert/X509Certificate;

    if-nez v12, :cond_e

    iget v6, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    if-ne v6, v10, :cond_e

    if-nez v5, :cond_e

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    :cond_e
    iget-object v6, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->certEntries:Ljava/util/ArrayList;

    new-instance v8, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;

    invoke-direct {v8, v7, v12, v13}, Landroid/sun/security/pkcs12/PKCS12KeyStore$CertEntry;-><init>(Ljava/security/cert/X509Certificate;[BLjava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v8, v0, Landroid/sun/security/pkcs12/PKCS12KeyStore;->certsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {v8, v6, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported PKCS12 bag value type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, v8, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method
