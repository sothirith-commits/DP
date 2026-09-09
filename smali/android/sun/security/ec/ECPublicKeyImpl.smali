.class public final Landroid/sun/security/ec/ECPublicKeyImpl;
.super Landroid/sun/security/x509/X509Key;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# static fields
.field private static final serialVersionUID:J = -0x222ae9db79b5c3d1L


# instance fields
.field private params:Ljava/security/spec/ECParameterSpec;

.field private w:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V
    .locals 5

    invoke-direct {p0}, Landroid/sun/security/x509/X509Key;-><init>()V

    iput-object p1, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    iput-object p2, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

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
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v0, v1, v2}, Landroid/sun/security/x509/AlgorithmId;-><init>(Landroid/sun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    iput-object v0, p0, Landroid/sun/security/x509/X509Key;->algid:Landroid/sun/security/x509/AlgorithmId;

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result p2

    add-int/lit8 p2, p2, 0x7

    shr-int/lit8 p2, p2, 0x3

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/ec/ECParameters;->trimZeroes([B)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/sun/security/ec/ECParameters;->trimZeroes([B)[B

    move-result-object p1

    array-length v1, v0

    if-gt v1, p2, :cond_0

    array-length v1, p1

    if-gt v1, p2, :cond_0

    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    array-length v3, v0

    sub-int/2addr p2, v3

    add-int/lit8 p2, p2, 0x1

    array-length v3, v0

    invoke-static {v0, v4, v2, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p1

    sub-int/2addr v1, p2

    array-length p2, p1

    invoke-static {p1, v4, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/sun/security/x509/X509Key;->key:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Point coordinates do not match field size"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "EC parameters error"

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Landroid/sun/security/x509/X509Key;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Landroid/sun/security/x509/X509Key;->decode(Ljava/io/InputStream;)V

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

    iget-object p0, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public final getW()Ljava/security/spec/ECPoint;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    return-object p0
.end method

.method public final parseKeyBits()V
    .locals 3

    const-string v0, "Invalid EC key"

    :try_start_0
    iget-object v1, p0, Landroid/sun/security/x509/X509Key;->algid:Landroid/sun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Landroid/sun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v1

    const-class v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    iput-object v1, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    iget-object v2, p0, Landroid/sun/security/x509/X509Key;->key:[B

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/sun/security/ec/ECParameters;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sun EC public key, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bits\n  public x coord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  public y coord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/sun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/security/KeyRep;

    sget-object v1, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    const-string v2, "X.509"

    invoke-virtual {p0}, Landroid/sun/security/x509/X509Key;->getEncoded()[B

    move-result-object p0

    const-string v3, "EC"

    invoke-direct {v0, v1, v3, v2, p0}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method
