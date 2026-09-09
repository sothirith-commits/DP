.class public abstract Landroid/sun/security/provider/JavaKeyStore;
.super Ljava/security/KeyStoreSpi;
.source "SourceFile"


# instance fields
.field public final entries:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    return-void
.end method

.method public static getPreKeyedHash([C)Ljava/security/MessageDigest;
    .locals 9

    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    array-length v6, p0

    if-ge v4, v6, :cond_0

    add-int/lit8 v6, v5, 0x1

    aget-char v7, p0, v4

    shr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v5, 0x2

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    move p0, v3

    :goto_1
    if-ge p0, v1, :cond_1

    aput-byte v3, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "Mighty Aphrodite"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    return-object v0
.end method


# virtual methods
.method public abstract convertAlias(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final engineAliases()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public final engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final engineDeleteEntry(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object p0, p0, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    return-object p0

    :cond_0
    check-cast p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object p0, p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    return-object p1
.end method

.method public final engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object v2, v2, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    check-cast v2, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object v2, v2, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    :goto_0
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object p0, p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/Date;

    check-cast p0, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object p0, p0, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->date:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/Date;

    check-cast p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object p0, p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 12

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_c

    new-instance p1, Landroidx/cardview/widget/CardView$1;

    invoke-direct {p1, p2}, Landroidx/cardview/widget/CardView$1;-><init>([C)V

    check-cast p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object p0, p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p0, :cond_b

    :try_start_0
    new-instance p2, Landroid/sun/security/util/DerValue;

    invoke-direct {p2, p0}, Landroid/sun/security/util/DerValue;-><init>([B)V

    iget-object p0, p2, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    invoke-virtual {p0}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object p2

    invoke-virtual {p0}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v1

    filled-new-array {p2, v1}, [Landroid/sun/security/util/DerValue;

    move-result-object p2

    iget-object v1, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_a

    const/4 p0, 0x0

    aget-object v1, p2, p0

    invoke-static {v1}, Landroid/sun/security/x509/AlgorithmId;->parse(Landroid/sun/security/util/DerValue;)Landroid/sun/security/x509/AlgorithmId;

    move-result-object v1

    aget-object v2, p2, p0

    iget-object v2, v2, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v2, v2, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    move-result-object v3

    aget-object p2, p2, v2

    iget-object p2, p2, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object p2, p2, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_8

    invoke-virtual {v1}, Landroid/sun/security/x509/AlgorithmId;->getOID()Landroid/sun/security/util/ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Landroid/sun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "1.3.6.1.4.1.42.2.17.1.1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const/16 v1, 0x14

    new-array v2, v1, [B

    invoke-static {p2, p0, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p2

    add-int/lit8 v4, v3, -0x28

    div-int/lit8 v5, v4, 0x14

    rem-int/lit8 v6, v4, 0x14

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    new-array v6, v4, [B

    invoke-static {p2, v1, v6, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v7, v4, [B

    move v8, p0

    move v9, v8

    :goto_0
    iget-object v10, p1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v10, Ljava/security/MessageDigest;

    if-ge v8, v5, :cond_3

    iget-object v11, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v11, [B

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v10, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    add-int/lit8 v10, v5, -0x1

    if-ge v8, v10, :cond_2

    array-length v10, v2

    invoke-static {v2, p0, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    sub-int v10, v4, v9

    invoke-static {v2, p0, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x14

    goto :goto_0

    :cond_3
    new-array v2, v4, [B

    move v5, p0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-byte v8, v6, v5

    aget-byte v9, v7, v5

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v10, v4}, Ljava/security/MessageDigest;->update([B)V

    iget-object v4, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {v4, p0}, Ljava/util/Arrays;->fill([BB)V

    iput-object v0, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    invoke-virtual {v10, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    :goto_3
    array-length v0, p1

    if-ge p0, v0, :cond_6

    aget-byte v0, p1, p0

    add-int/lit8 v4, v3, -0x14

    add-int/2addr v4, p0

    aget-byte v4, p2, v4

    if-ne v0, v4, :cond_5

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "Cannot recover key"

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :try_start_1
    new-instance p0, Landroid/sun/security/util/DerValue;

    invoke-direct {p0, v2}, Landroid/sun/security/util/DerValue;-><init>([B)V

    invoke-static {p0}, Landroid/sun/security/pkcs/PKCS8Key;->parseKey(Landroid/sun/security/util/DerValue;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "Unsupported key protection algorithm"

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "encryptedData field overrun"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "encryptionAlgorithm field overrun"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
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

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoding must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "Private key not stored as PKCS #8 EncryptedPrivateKeyInfo"

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "Password must not be null"

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    return p0
.end method

.method public final engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    return p0
.end method

.method public final engineLoad(Ljava/io/InputStream;[C)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v2

    if-nez v1, :cond_0

    :try_start_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object v15, v2

    goto/16 :goto_a

    :cond_0
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/sun/security/provider/JavaKeyStore;->getPreKeyedHash([C)Ljava/security/MessageDigest;

    move-result-object v4

    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljava/security/DigestInputStream;

    invoke-direct {v6, v1, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v3

    :goto_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    const v7, -0x1120113

    if-ne v1, v7, :cond_2

    const/4 v1, 0x1

    const/4 v7, 0x2

    if-eq v6, v1, :cond_3

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v15, v2

    goto/16 :goto_9

    :cond_3
    :goto_1
    if-ne v6, v1, :cond_4

    const-string v8, "X509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    move-object/from16 v17, v8

    move-object v8, v3

    move-object/from16 v3, v17

    goto :goto_2

    :cond_4
    new-instance v8, Ljava/util/Hashtable;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/util/Hashtable;-><init>(I)V

    :goto_2
    iget-object v9, v0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_3
    if-ge v11, v9, :cond_d

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    if-ne v12, v1, :cond_9

    new-instance v12, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    invoke-direct {v12, v10}, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;-><init>(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v2

    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-direct {v14, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v14, v12, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1, v5}, Landroid/sun/misc/IOUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, v12, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    move v14, v10

    :goto_4
    if-ge v14, v1, :cond_7

    if-ne v6, v7, :cond_6

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertificateFactory;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :cond_5
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    invoke-virtual {v8, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v10

    :cond_6
    :goto_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-static {v10, v5}, Landroid/sun/misc/IOUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v10

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x2

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    iput-object v1, v12, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :cond_8
    iget-object v1, v0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v1, v13, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v10, 0x2

    goto :goto_7

    :cond_9
    move-object v15, v2

    move v1, v7

    if-ne v12, v1, :cond_c

    new-instance v1, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;-><init>(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    iput-object v10, v1, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->date:Ljava/util/Date;

    const/4 v10, 0x2

    if-ne v6, v10, :cond_b

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertificateFactory;

    goto :goto_6

    :cond_a
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v12

    invoke-virtual {v8, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v12

    :cond_b
    :goto_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    invoke-static {v12, v5}, Landroid/sun/misc/IOUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v12

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v13}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    iput-object v12, v1, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V

    iget-object v12, v0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v12, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v11, v11, 0x1

    move v7, v10

    const/4 v1, 0x1

    move v10, v2

    move-object v2, v15

    goto/16 :goto_3

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognized keystore entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v15, v2

    move v2, v10

    if-eqz p2, :cond_f

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [B

    invoke-virtual {v5, v1}, Ljava/io/DataInputStream;->readFully([B)V

    move v10, v2

    :goto_8
    array-length v2, v0

    if-ge v10, v2, :cond_f

    aget-byte v2, v0, v10

    aget-byte v3, v1, v10

    if-ne v2, v3, :cond_e

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Password verification failed"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Keystore was tampered with, or password was incorrect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_f
    monitor-exit v15

    return-void

    :goto_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid keystore format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_a
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    if-nez v1, :cond_0

    new-instance v1, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;-><init>(I)V

    iput-object p2, v1, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, v1, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->date:Ljava/util/Date;

    iget-object p2, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Cannot overwrite own certificate"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 3

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;-><init>(I)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;

    new-instance v2, Landroidx/cardview/widget/CardView$1;

    invoke-direct {v2, p3}, Landroidx/cardview/widget/CardView$1;-><init>([C)V

    invoke-virtual {v2, p2}, Landroidx/cardview/widget/CardView$1;->protect(Ljava/security/Key;)[B

    move-result-object p2

    iput-object p2, v1, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p4, :cond_0

    array-length p2, p4

    if-eqz p2, :cond_0

    invoke-virtual {p4}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/cert/Certificate;

    iput-object p2, v1, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    iput-object p2, v1, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :goto_0
    iget-object p2, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Key protection algorithm not found"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Cannot store non-PrivateKeys"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 5

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v0

    if-eqz p2, :cond_4

    :try_start_0
    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-direct {v1, p2}, Landroid/sun/security/util/DerValue;-><init>([B)V

    iget-object v1, v1, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    invoke-virtual {v1}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v2

    invoke-virtual {v1}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v3

    filled-new-array {v2, v3}, [Landroid/sun/security/util/DerValue;

    move-result-object v2

    iget-object v3, v1, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x0

    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/sun/security/x509/AlgorithmId;->parse(Landroid/sun/security/util/DerValue;)Landroid/sun/security/x509/AlgorithmId;

    aget-object v3, v2, v1

    iget-object v3, v3, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v3, v3, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/sun/security/util/DerValue;->getOctetString()[B

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v2, v2, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    invoke-direct {v2, v1}, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;-><init>(I)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v2, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, v2, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p3, :cond_0

    array-length p2, p3

    if-eqz p2, :cond_0

    invoke-virtual {p3}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/cert/Certificate;

    iput-object p2, v2, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    iput-object p2, v2, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :goto_0
    iget-object p2, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Landroid/sun/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

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
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "overrun, bytes = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoding must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "key is not encoded as EncryptedPrivateKeyInfo"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final engineSize()I
    .locals 0

    iget-object p0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result p0

    return p0
.end method

.method public final engineStore(Ljava/io/OutputStream;[C)V
    .locals 8

    iget-object v0, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v0

    if-eqz p2, :cond_4

    :try_start_0
    invoke-static {p2}, Landroid/sun/security/provider/JavaKeyStore;->getPreKeyedHash([C)Ljava/security/MessageDigest;

    move-result-object p2

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/security/DigestOutputStream;

    invoke-direct {v2, p1, p2}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const p1, -0x1120113

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/sun/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object v3, v4

    check-cast v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object v3, v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object v3, v4

    check-cast v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object v3, v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v3, v4

    check-cast v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object v3, v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    move-object v3, v4

    check-cast v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object v3, v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move-object v3, v4

    check-cast v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object v3, v3, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v3, v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    if-ge v5, v3, :cond_0

    move-object v6, v4

    check-cast v6, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object v6, v6, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    move-object v7, v4

    check-cast v7, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;

    iget-object v7, v7, Landroid/sun/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length v7, v6

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object v3, v4

    check-cast v3, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object v3, v3, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->date:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object v3, v4

    check-cast v3, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object v3, v3, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    check-cast v4, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object v4, v4, Landroid/sun/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    monitor-exit v0

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "password can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
