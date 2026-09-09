.class public final Landroid/sun/security/ec/ECPrivateKeyImpl;
.super Landroid/sun/security/pkcs/PKCS8Key;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x13b1bfbb8cd8739L


# instance fields
.field private params:Ljava/security/spec/ECParameterSpec;

.field private s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    .locals 4

    invoke-direct {p0}, Landroid/sun/security/pkcs/PKCS8Key;-><init>()V

    iput-object p1, p0, Landroid/sun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    iput-object p2, p0, Landroid/sun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    new-instance v0, Landroid/sun/security/x509/AlgorithmId;

    sget-object v1, Landroid/sun/security/x509/AlgorithmId;->EC_oid:Landroid/sun/security/util/ObjectIdentifier;

    sget v2, Landroid/sun/security/ec/ECParameters;->$r8$clinit:I

    :try_start_0
    const-string v2, "EC"

    sget-object v3, Landroid/sun/security/ec/ECKeyFactory;->ecInternalProvider:Landroid/sun/security/ec/ECKeyFactory$1;

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {v0, v1, v2}, Landroid/sun/security/x509/AlgorithmId;-><init>(Landroid/sun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    iput-object v0, p0, Landroid/sun/security/pkcs/PKCS8Key;->algid:Landroid/sun/security/x509/AlgorithmId;

    :try_start_1
    new-instance p2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {p2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/sun/security/util/DerOutputStream;->putInteger(I)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/sun/security/ec/ECParameters;->trimZeroes([B)[B

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    new-instance p1, Landroid/sun/security/util/DerValue;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/16 v0, 0x30

    invoke-direct {p1, v0, p2}, Landroid/sun/security/util/DerValue;-><init>(B[B)V

    invoke-virtual {p1}, Landroid/sun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/sun/security/pkcs/PKCS8Key;->key:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "EC parameters error"

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Landroid/sun/security/pkcs/PKCS8Key;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Landroid/sun/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "EC"

    return-object p0
.end method

.method public final getParams()Ljava/security/spec/ECParameterSpec;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public final getS()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final parseKeyBits()V
    .locals 6

    const-string v0, "Invalid EC private key"

    :try_start_0
    iget-object v1, p0, Landroid/sun/security/pkcs/PKCS8Key;->key:[B

    array-length v2, v1

    array-length v3, v1

    const/4 v4, 0x2

    if-gt v4, v3, :cond_7

    array-length v3, v1

    if-gt v2, v3, :cond_7

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    invoke-static {v4}, Landroid/sun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-array v4, v2, [B

    invoke-static {v1, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Landroid/sun/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Landroid/sun/security/util/DerIndefLenConverter;-><init>()V

    new-instance v2, Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v1, v4}, Landroid/sun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {v4, v1, v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v2, v4

    :goto_0
    const v1, 0x7fffffff

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->mark(I)V

    new-instance v1, Landroid/sun/security/util/DerValue;

    invoke-direct {v1, v2}, Landroid/sun/security/util/DerValue;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    iget-byte v2, v1, Landroid/sun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-ne v2, v4, :cond_6

    iget-object v1, v1, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    invoke-virtual {v1}, Landroid/sun/security/util/DerInputStream;->getInteger()I

    move-result v2

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Landroid/sun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v4, p0, Landroid/sun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    :goto_1
    iget-object v2, v1, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/sun/security/util/DerInputStream;->getDerValue()Landroid/sun/security/util/DerValue;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/sun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/sun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroid/sun/security/pkcs/PKCS8Key;->algid:Landroid/sun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Landroid/sun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v1

    if-eqz v1, :cond_4

    const-class v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    iput-object v1, p0, Landroid/sun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    return-void

    :cond_4
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v1, "EC domain parameters must be encoded in the algorithm identifier"

    invoke-direct {p0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Version must be 1"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Not a SEQUENCE"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Encoding bytes too short"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_3
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sun EC private key, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/sun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bits\n  private value:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/sun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/sun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
