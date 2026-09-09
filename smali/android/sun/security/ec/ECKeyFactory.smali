.class public final Landroid/sun/security/ec/ECKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Ljava/security/KeyFactory;

.field public static final ecInternalProvider:Landroid/sun/security/ec/ECKeyFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/sun/security/ec/ECKeyFactory$1;

    invoke-direct {v0}, Landroid/sun/security/ec/ECKeyFactory$1;-><init>()V

    new-instance v1, Landroid/sun/security/ec/ECKeyFactory$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/sun/security/ec/ECKeyFactory$2;-><init>(ILjava/io/Serializable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "EC"

    invoke-static {v1, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v1

    sput-object v1, Landroid/sun/security/ec/ECKeyFactory;->INSTANCE:Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Landroid/sun/security/ec/ECKeyFactory;->ecInternalProvider:Landroid/sun/security/ec/ECKeyFactory$1;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method

.method public static implGeneratePrivate(Ljava/security/spec/KeySpec;)Landroid/sun/security/ec/ECPrivateKeyImpl;
    .locals 2

    instance-of v0, p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    new-instance v0, Landroid/sun/security/ec/ECPrivateKeyImpl;

    invoke-virtual {p0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/sun/security/ec/ECPrivateKeyImpl;-><init>([B)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/security/spec/ECPrivateKeySpec;

    new-instance v0, Landroid/sun/security/ec/ECPrivateKeyImpl;

    invoke-virtual {p0}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/sun/security/ec/ECPrivateKeyImpl;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Only ECPrivateKeySpec and PKCS8EncodedKeySpec supported for EC private keys"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static implGeneratePublic(Ljava/security/spec/KeySpec;)Landroid/sun/security/ec/ECPublicKeyImpl;
    .locals 2

    instance-of v0, p0, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v0, Landroid/sun/security/ec/ECPublicKeyImpl;

    invoke-virtual {p0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/sun/security/ec/ECPublicKeyImpl;-><init>([B)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/security/spec/ECPublicKeySpec;

    new-instance v0, Landroid/sun/security/ec/ECPublicKeyImpl;

    invoke-virtual {p0}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/sun/security/ec/ECPublicKeyImpl;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Only ECPublicKeySpec and X509EncodedKeySpec supported for EC public keys"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/sun/security/ec/ECKeyFactory;->implGeneratePrivate(Ljava/security/spec/KeySpec;)Landroid/sun/security/ec/ECPrivateKeyImpl;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public final engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/sun/security/ec/ECKeyFactory;->implGeneratePublic(Ljava/security/spec/KeySpec;)Landroid/sun/security/ec/ECPublicKeyImpl;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/sun/security/ec/ECKeyFactory;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    const-class v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object p0

    :cond_0
    const-class p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "KeySpec must be ECPublicKeySpec or X509EncodedKeySpec for EC public keys"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of p1, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz p1, :cond_5

    const-class p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p1

    :cond_3
    const-class p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "KeySpec must be ECPrivateKeySpec or PKCS8EncodedKeySpec for EC private keys"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Neither public nor private key"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of p0, p1, Ljava/security/PublicKey;

    if-eqz p0, :cond_3

    check-cast p1, Ljava/security/PublicKey;

    instance-of p0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz p0, :cond_1

    instance-of p0, p1, Landroid/sun/security/ec/ECPublicKeyImpl;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    new-instance p0, Landroid/sun/security/ec/ECPublicKeyImpl;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/sun/security/ec/ECPublicKeyImpl;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "X.509"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    new-instance p1, Landroid/sun/security/ec/ECPublicKeyImpl;

    invoke-direct {p1, p0}, Landroid/sun/security/ec/ECPublicKeyImpl;-><init>([B)V

    :goto_0
    return-object p1

    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Public keys must be instance of ECPublicKey or have X.509 encoding"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of p0, p1, Ljava/security/PrivateKey;

    if-eqz p0, :cond_7

    check-cast p1, Ljava/security/PrivateKey;

    instance-of p0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz p0, :cond_5

    instance-of p0, p1, Landroid/sun/security/ec/ECPrivateKeyImpl;

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    new-instance p0, Landroid/sun/security/ec/ECPrivateKeyImpl;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/sun/security/ec/ECPrivateKeyImpl;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    :goto_1
    move-object p1, p0

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PKCS#8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Landroid/sun/security/ec/ECPrivateKeyImpl;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/sun/security/ec/ECPrivateKeyImpl;-><init>([B)V

    goto :goto_1

    :goto_2
    return-object p1

    :cond_6
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Private keys must be instance of ECPrivateKey or have PKCS#8 encoding"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Neither a public nor a private key"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Not an EC key: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Key must not be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
