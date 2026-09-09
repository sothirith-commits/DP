.class public final Lcom/deepalhome/launcher/adb/AdbConnectionManager;
.super Lio/github/muntashirakon/adb/AbsAdbConnectionManager;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

.field public static final appName$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static volatile initAttempted:Z

.field public static final initLock:Ljava/lang/Object;

.field public static mCertificate:Ljava/security/cert/Certificate;

.field public static mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/adb/AdbConnectionManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    sget-object v1, Lcom/deepalhome/launcher/adb/AdbConnectionManager$appName$2;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager$appName$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->appName$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->initLock:Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, v0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;-><init>()V

    return-void
.end method

.method public static ensureKeyMaterialInitialized()V
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mPrivateKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mCertificate:Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->initLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mPrivateKey:Ljava/security/PrivateKey;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mCertificate:Ljava/security/cert/Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->initAttempted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->initAttempted:Z

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :try_start_3
    sget-object v3, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->readPrivateKeyFromFile(Landroid/app/Application;)Ljava/security/PrivateKey;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "AdbConnectionManager"

    const-string v5, "Read ADB private key failed, will regenerate."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v2

    :goto_0
    sput-object v3, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mPrivateKey:Ljava/security/PrivateKey;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v3, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->readCertificateFromFile(Landroid/app/Application;)Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_6
    const-string v4, "AdbConnectionManager"

    const-string v5, "Read ADB certificate failed, will regenerate."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sput-object v2, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mCertificate:Ljava/security/cert/Certificate;

    sget-object v3, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mPrivateKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_3

    if-nez v2, :cond_4

    :cond_3
    sget-object v2, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->regenerateKeyMaterial(Landroid/app/Application;)V

    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public static escapeX500RdnValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "\u0000"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    const/16 v6, 0x5c

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0x22

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    const/16 v5, 0x3e

    if-ne v4, v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v5, 0x3b

    if-ne v4, v5, :cond_8

    goto :goto_1

    :cond_8
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_9

    goto :goto_1

    :cond_9
    const/16 v5, 0x20

    if-ne v4, v5, :cond_a

    if-eqz v3, :cond_b

    if-ne v3, v1, :cond_c

    goto :goto_1

    :cond_a
    const/16 v5, 0x23

    if-ne v4, v5, :cond_c

    if-nez v3, :cond_c

    :cond_b
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static readCertificateFromFile(Landroid/app/Application;)Ljava/security/cert/Certificate;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "cert.pem"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readPrivateKeyFromFile(Landroid/app/Application;)Ljava/security/PrivateKey;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "private.key"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static regenerateKeyMaterial(Landroid/app/Application;)V
    .locals 16

    const-string v0, "CN="

    const-string v1, "AdbConnectionManager"

    const-string v2, "Invalid certificate subject: "

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    const-string v5, "SHA1PRNG"

    invoke-static {v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v5

    const/16 v6, 0x800

    invoke-virtual {v4, v6, v5}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    sget-object v6, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->appName$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v6, "DeepalHome"

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->escapeX500RdnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SHA512withRSA"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const v0, 0x5265c00

    int-to-long v10, v0

    add-long/2addr v8, v10

    new-instance v10, Landroid/sun/security/x509/CertificateExtensions;

    invoke-direct {v10}, Landroid/sun/security/x509/CertificateExtensions;-><init>()V

    const-string v0, "SubjectKeyIdentifier"

    new-instance v11, Landroid/sun/security/x509/SubjectKeyIdentifierExtension;

    new-instance v12, Landroid/sun/security/x509/KeyIdentifier;

    invoke-direct {v12, v5}, Landroid/sun/security/x509/KeyIdentifier;-><init>(Ljava/security/PublicKey;)V

    iget-object v12, v12, Landroid/sun/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {v12}, [B->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-direct {v11}, Landroid/sun/security/x509/Extension;-><init>()V

    iput-object v3, v11, Landroid/sun/security/x509/SubjectKeyIdentifierExtension;->id:Landroid/sun/security/x509/KeyIdentifier;

    new-instance v13, Landroid/sun/security/x509/KeyIdentifier;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v12}, [B->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    iput-object v12, v13, Landroid/sun/security/x509/KeyIdentifier;->octetString:[B

    iput-object v13, v11, Landroid/sun/security/x509/SubjectKeyIdentifierExtension;->id:Landroid/sun/security/x509/KeyIdentifier;

    sget-object v12, Landroid/sun/security/x509/PKIXExtensions;->SubjectKey_Id:Landroid/sun/security/util/ObjectIdentifier;

    iput-object v12, v11, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/sun/security/x509/Extension;->critical:Z

    new-instance v14, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v14}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v13, v13, Landroid/sun/security/x509/KeyIdentifier;->octetString:[B

    const/4 v15, 0x4

    invoke-virtual {v14, v15, v13}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    iput-object v13, v11, Landroid/sun/security/x509/Extension;->extensionValue:[B

    invoke-virtual {v10, v0, v11}, Landroid/sun/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Landroid/sun/security/x509/X500Name;

    invoke-direct {v0, v6}, Landroid/sun/security/x509/X500Name;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", falling back."

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/sun/security/x509/X500Name;

    const-string v2, "CN=DeepalHome"

    invoke-direct {v0, v2}, Landroid/sun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    :goto_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v8, "PrivateKeyUsage"

    new-instance v9, Landroid/sun/security/x509/PrivateKeyUsageExtension;

    invoke-direct {v9}, Landroid/sun/security/x509/Extension;-><init>()V

    iput-object v2, v9, Landroid/sun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    iput-object v6, v9, Landroid/sun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    sget-object v11, Landroid/sun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Landroid/sun/security/util/ObjectIdentifier;

    iput-object v11, v9, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    iput-boolean v12, v9, Landroid/sun/security/x509/Extension;->critical:Z

    invoke-virtual {v9}, Landroid/sun/security/x509/PrivateKeyUsageExtension;->encodeThis$2()V

    invoke-virtual {v10, v8, v9}, Landroid/sun/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Landroid/sun/security/x509/CertificateValidity;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v2, v8, Landroid/sun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    iput-object v6, v8, Landroid/sun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    new-instance v2, Landroid/sun/security/x509/X509CertInfo;

    invoke-direct {v2}, Landroid/sun/security/x509/X509CertInfo;-><init>()V

    const-string v6, "version"

    new-instance v9, Landroid/sun/security/x509/CertificateVersion;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x2

    iput v11, v9, Landroid/sun/security/x509/CertificateVersion;->version:I

    invoke-virtual {v2, v6, v9}, Landroid/sun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "serialNumber"

    new-instance v9, Landroid/sun/security/x509/CertificateSerialNumber;

    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    const v12, 0x7fffffff

    and-int/2addr v11, v12

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v12, Landroid/sun/security/x509/SerialNumber;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    int-to-long v13, v11

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    iput-object v11, v12, Landroid/sun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    iput-object v12, v9, Landroid/sun/security/x509/CertificateSerialNumber;->serial:Landroid/sun/security/x509/SerialNumber;

    invoke-virtual {v2, v6, v9}, Landroid/sun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "algorithmID"

    new-instance v9, Landroid/sun/security/x509/CertificateAlgorithmId;

    invoke-static {v7}, Landroid/sun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Landroid/sun/security/x509/AlgorithmId;

    move-result-object v7

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v7, v9, Landroid/sun/security/x509/CertificateAlgorithmId;->algId:Landroid/sun/security/x509/AlgorithmId;

    invoke-virtual {v2, v6, v9}, Landroid/sun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "subject"

    new-instance v7, Landroid/sun/security/x509/CertificateSubjectName;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Landroid/sun/security/x509/CertificateSubjectName;->dnName:Landroid/sun/security/x509/X500Name;

    invoke-virtual {v2, v6, v7}, Landroid/sun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "key"

    new-instance v7, Landroid/sun/security/x509/CertificateX509Key;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v5, v7, Landroid/sun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    invoke-virtual {v2, v6, v7}, Landroid/sun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "validity"

    invoke-virtual {v2, v5, v8}, Landroid/sun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "issuer"

    new-instance v6, Landroid/sun/security/x509/CertificateIssuerName;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v0, v6, Landroid/sun/security/x509/CertificateIssuerName;->dnName:Landroid/sun/security/x509/X500Name;

    invoke-virtual {v2, v5, v6}, Landroid/sun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "extensions"

    invoke-virtual {v2, v0, v10}, Landroid/sun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/sun/security/x509/X509CertImpl;

    invoke-direct {v0, v2}, Landroid/sun/security/x509/X509CertImpl;-><init>(Landroid/sun/security/x509/X509CertInfo;)V

    invoke-virtual {v0, v4}, Landroid/sun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;)V

    sput-object v4, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mPrivateKey:Ljava/security/PrivateKey;

    sput-object v0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mCertificate:Ljava/security/cert/Certificate;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "private.key"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v5, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->writeCertificateToFile(Landroid/app/Application;Landroid/sun/security/x509/X509CertImpl;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-static {v5, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    const-string v2, "Generate ADB key material failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v3, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mPrivateKey:Ljava/security/PrivateKey;

    sput-object v3, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mCertificate:Ljava/security/cert/Certificate;

    :goto_3
    return-void
.end method

.method public static writeCertificateToFile(Landroid/app/Application;Landroid/sun/security/x509/X509CertImpl;)V
    .locals 10

    const-string v0, "getBytes(...)"

    const-string v1, "UTF_8"

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "cert.pem"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Landroid/sun/misc/BASE64Encoder;

    invoke-direct {p0}, Landroid/sun/misc/BASE64Encoder;-><init>()V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string v2, "-----BEGIN CERTIFICATE-----"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {p1}, Landroid/sun/security/x509/X509CertImpl;->getEncoded()[B

    move-result-object p1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p1, 0x39

    new-array v5, p1, [B

    invoke-virtual {p0, v3}, Landroid/sun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    :goto_0
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, p1, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    goto :goto_2

    :cond_0
    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v7, p1

    :goto_2
    if-nez v7, :cond_2

    goto :goto_5

    :cond_2
    :goto_3
    if-ge v6, v7, :cond_4

    const/4 v8, 0x3

    add-int v9, v8, v6

    if-gt v9, v7, :cond_3

    invoke-virtual {p0, v3, v5, v6, v8}, Landroid/sun/misc/BASE64Encoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_4

    :cond_3
    sub-int v8, v7, v6

    invoke-virtual {p0, v3, v5, v6, v8}, Landroid/sun/misc/BASE64Encoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    :goto_4
    move v6, v9

    goto :goto_3

    :cond_4
    if-ge v7, p1, :cond_5

    :goto_5
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write(I)V

    const-string p0, "-----END CERTIFICATE-----"

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {v3, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Landroid/sun/misc/CharacterEncoder;->encodeLineSuffix()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_6
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v3, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    invoke-static {}, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->ensureKeyMaterialInitialized()V

    sget-object p0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mCertificate:Ljava/security/cert/Certificate;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ADB certificate not initialized."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->appName$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "<get-appName>(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    invoke-static {}, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->ensureKeyMaterialInitialized()V

    sget-object p0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->mPrivateKey:Ljava/security/PrivateKey;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ADB private key not initialized."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
