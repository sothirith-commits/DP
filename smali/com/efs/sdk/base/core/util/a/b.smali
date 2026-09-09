.class public final Lcom/efs/sdk/base/core/util/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/core/util/concurrent/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/efs/sdk/base/core/util/concurrent/c<",
        "Lcom/efs/sdk/base/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:[B

.field public d:Ljava/io/File;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/base/core/util/a/b;->g:Z

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/efs/sdk/base/core/util/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request not support method \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/efs/sdk/base/core/util/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "efs.util.http"

    invoke-static {v0, p0}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/util/a/b;->c:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/efs/sdk/base/core/util/a/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/core/util/a/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/core/util/a/b;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/efs/sdk/base/core/util/a/b;->c:[B

    invoke-interface {v0, v1, v2, p0}, Lcom/efs/sdk/base/http/IHttpUtil;->postAsFile(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/core/util/a/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/core/util/a/b;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/efs/sdk/base/core/util/a/b;->c:[B

    invoke-interface {v0, v1, v2, p0}, Lcom/efs/sdk/base/http/IHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/core/util/a/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/core/util/a/b;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/efs/sdk/base/core/util/a/b;->d:Ljava/io/File;

    invoke-interface {v0, v1, v2, p0}, Lcom/efs/sdk/base/http/IHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/core/util/a/b;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/efs/sdk/base/core/util/a/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Lcom/efs/sdk/base/http/IHttpUtil;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method
