.class public final Lcom/efs/sdk/base/core/e/a/b;
.super Lcom/efs/sdk/base/core/e/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/core/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/core/d/b;)V
    .locals 3

    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/core/d/c;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/core/b/a$b;->a()Lcom/efs/sdk/base/core/b/a;

    move-result-object p0

    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget-object v0, v0, Lcom/efs/sdk/base/core/d/a;->a:Ljava/lang/String;

    const-string v1, "wa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/efs/sdk/base/core/b/c;->a()Lcom/efs/sdk/base/core/b/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/efs/sdk/base/core/b/c;->a:Z

    if-nez v0, :cond_3

    iget-boolean p1, p0, Lcom/efs/sdk/base/core/b/a;->a:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    move-result-object p1

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget v0, v0, Lcom/efs/sdk/base/core/config/a/b;->a:I

    iget-object v1, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isEnableWaStat()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    const-string v2, "disk_limit"

    invoke-virtual {p1, v2, v0}, Lcom/efs/sdk/base/core/f/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/core/f/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/efs/sdk/base/core/b/a;->a:Z

    return-void

    :cond_3
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget v1, v0, Lcom/efs/sdk/base/core/d/a;->c:I

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/efs/sdk/base/core/d/b;->c:[B

    if-eqz v1, :cond_4

    array-length v1, v1

    if-nez v1, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object p0, p0, Lcom/efs/sdk/base/core/b/a;->c:Lcom/efs/sdk/base/core/b/b;

    iget-byte v0, v0, Lcom/efs/sdk/base/core/d/a;->b:B

    invoke-virtual {p0, v0}, Lcom/efs/sdk/base/core/b/b;->a(B)Lcom/efs/sdk/base/core/b/e;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lcom/efs/sdk/base/core/b/e;->a(Lcom/efs/sdk/base/core/d/b;)V

    :cond_6
    return-void
.end method
