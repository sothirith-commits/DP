.class public final Lio/github/muntashirakon/adb/SslUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static customConscrypt:Z

.field public static sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSslContext(Lretrofit2/OkHttpCall$1;)Ljavax/net/ssl/SSLContext;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "TLSv1.3"

    sget-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    const-string v3, "org.conscrypt.OpenSSLProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    invoke-static {v2, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    sput-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    sput-boolean v1, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    sput-object v2, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    sput-boolean v0, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    if-eqz v4, :cond_1

    const-string v4, "custom"

    goto :goto_1

    :cond_1
    const-string v4, "default"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " TLSv1.3 provider..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    new-instance v3, Lio/github/muntashirakon/adb/SslUtils$1;

    invoke-direct {v3, p0}, Lio/github/muntashirakon/adb/SslUtils$1;-><init>(Lretrofit2/OkHttpCall$1;)V

    new-array p0, v1, [Ljavax/net/ssl/KeyManager;

    aput-object v3, p0, v0

    new-instance v3, Lio/github/muntashirakon/adb/SslUtils$2;

    invoke-direct {v3}, Lio/github/muntashirakon/adb/SslUtils$2;-><init>()V

    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    aput-object v3, v1, v0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, p0, v1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    sget-object p0, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object p0

    :goto_2
    throw p0
.end method
