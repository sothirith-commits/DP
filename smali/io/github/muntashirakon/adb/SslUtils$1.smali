.class public final Lio/github/muntashirakon/adb/SslUtils$1;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SourceFile"


# instance fields
.field public final synthetic val$keyPair:Lretrofit2/OkHttpCall$1;


# direct methods
.method public constructor <init>(Lretrofit2/OkHttpCall$1;)V
    .locals 0

    iput-object p1, p0, Lio/github/muntashirakon/adb/SslUtils$1;->val$keyPair:Lretrofit2/OkHttpCall$1;

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    array-length p0, p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    aget-object p3, p1, p2

    const-string v0, "RSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p0, "key"

    return-object p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    const-string v0, "key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/github/muntashirakon/adb/SslUtils$1;->val$keyPair:Lretrofit2/OkHttpCall$1;

    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/security/cert/Certificate;

    check-cast p0, Ljava/security/cert/X509Certificate;

    filled-new-array {p0}, [Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    const-string v0, "key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/github/muntashirakon/adb/SslUtils$1;->val$keyPair:Lretrofit2/OkHttpCall$1;

    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Ljava/security/PrivateKey;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
