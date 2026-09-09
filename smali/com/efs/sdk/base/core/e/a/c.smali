.class public final Lcom/efs/sdk/base/core/e/a/c;
.super Lcom/efs/sdk/base/core/e/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/core/e/a/a;-><init>()V

    return-void
.end method

.method private static c(Lcom/efs/sdk/base/core/d/b;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/d/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget-byte v2, v0, Lcom/efs/sdk/base/core/d/a;->b:B

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-boolean p0, p0, Lcom/efs/sdk/base/core/d/c;->a:Z

    if-eqz p0, :cond_2

    :cond_0
    iget p0, v0, Lcom/efs/sdk/base/core/d/a;->c:I

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/core/d/b;)V
    .locals 2

    invoke-static {p1}, Lcom/efs/sdk/base/core/e/a/c;->c(Lcom/efs/sdk/base/core/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->c:[B

    invoke-static {v0}, Lcom/efs/sdk/base/core/util/c;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "efs.base"

    const-string v1, "gzip error"

    invoke-static {v0, v1}, Lcom/efs/sdk/base/core/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/d/b;->a([B)V

    const-string v0, "gzip"

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/d/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void
.end method
