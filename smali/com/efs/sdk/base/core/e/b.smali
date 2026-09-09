.class public final Lcom/efs/sdk/base/core/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/processor/action/ILogEncryptAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decrypt(Ljava/lang/String;[B)[B
    .locals 0

    :try_start_0
    invoke-static {p2, p1}, Lcom/efs/sdk/base/core/util/b/a;->a([BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "efs.base"

    const-string p2, "aes decrypt error"

    invoke-static {p1, p2, p0}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final encrypt(Ljava/lang/String;[B)[B
    .locals 0

    :try_start_0
    invoke-static {p2, p1}, Lcom/efs/sdk/base/core/util/b/a;->b([BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "efs.base"

    const-string p2, "aes encrypt error"

    invoke-static {p1, p2, p0}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDeVal()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
