.class public final Lcom/efs/sdk/base/core/util/a/c;
.super Lcom/efs/sdk/base/core/util/concurrent/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/efs/sdk/base/core/util/concurrent/d<",
        "Lcom/efs/sdk/base/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/core/util/a/b;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/core/util/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/efs/sdk/base/core/util/concurrent/d;-><init>(Lcom/efs/sdk/base/core/util/concurrent/c;)V

    iput-object p1, p0, Lcom/efs/sdk/base/core/util/a/c;->a:Lcom/efs/sdk/base/core/util/a/b;

    return-void
.end method


# virtual methods
.method public final b()Lcom/efs/sdk/base/http/HttpResponse;
    .locals 2

    iget-object v0, p0, Lcom/efs/sdk/base/core/util/a/c;->a:Lcom/efs/sdk/base/core/util/a/b;

    const-string v1, "post"

    iput-object v1, v0, Lcom/efs/sdk/base/core/util/a/b;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/util/concurrent/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/efs/sdk/base/http/HttpResponse;

    return-object p0
.end method
