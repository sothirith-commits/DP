.class public final Lcom/efs/sdk/base/core/util/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/efs/sdk/base/core/util/a/b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/core/util/concurrent/b<",
            "Lcom/efs/sdk/base/http/HttpResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/efs/sdk/base/core/util/a/b;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/util/a/b;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/util/a/d;->a:Lcom/efs/sdk/base/core/util/a/b;

    iput-object p1, v0, Lcom/efs/sdk/base/core/util/a/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/efs/sdk/base/core/util/a/c;
    .locals 2

    new-instance v0, Lcom/efs/sdk/base/core/util/a/c;

    iget-object v1, p0, Lcom/efs/sdk/base/core/util/a/d;->a:Lcom/efs/sdk/base/core/util/a/b;

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/core/util/a/c;-><init>(Lcom/efs/sdk/base/core/util/a/b;)V

    iget-object v1, p0, Lcom/efs/sdk/base/core/util/a/d;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/efs/sdk/base/core/util/a/d;->b:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/efs/sdk/base/core/util/concurrent/d;->a(Ljava/util/List;)V

    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpListenerList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/efs/sdk/base/core/util/concurrent/d;->a(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/efs/sdk/base/http/AbsHttpListener;)Lcom/efs/sdk/base/core/util/a/d;
    .locals 2

    iget-object v0, p0, Lcom/efs/sdk/base/core/util/a/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/core/util/a/d;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/util/a/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/core/util/a/d;
    .locals 3

    iget-object v0, p0, Lcom/efs/sdk/base/core/util/a/d;->a:Lcom/efs/sdk/base/core/util/a/b;

    iget-object v1, v0, Lcom/efs/sdk/base/core/util/a/b;->f:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lcom/efs/sdk/base/core/util/a/b;->f:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/util/a/d;->a:Lcom/efs/sdk/base/core/util/a/b;

    iget-object v0, v0, Lcom/efs/sdk/base/core/util/a/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/efs/sdk/base/core/util/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/efs/sdk/base/core/util/a/d;"
        }
    .end annotation

    iget-object v0, p0, Lcom/efs/sdk/base/core/util/a/d;->a:Lcom/efs/sdk/base/core/util/a/b;

    iput-object p1, v0, Lcom/efs/sdk/base/core/util/a/b;->b:Ljava/util/Map;

    return-object p0
.end method
