.class public final Lcom/efs/sdk/base/core/e/c;
.super Lcom/efs/sdk/base/core/e/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/core/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/efs/sdk/base/core/e/a/a;
    .locals 3

    new-instance p0, Lcom/efs/sdk/base/core/e/a/f;

    invoke-direct {p0}, Lcom/efs/sdk/base/core/e/a/f;-><init>()V

    new-instance v0, Lcom/efs/sdk/base/core/e/a/c;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/e/a/c;-><init>()V

    new-instance v1, Lcom/efs/sdk/base/core/e/a/d;

    invoke-direct {v1}, Lcom/efs/sdk/base/core/e/a/d;-><init>()V

    new-instance v1, Lcom/efs/sdk/base/core/e/a/b;

    invoke-direct {v1}, Lcom/efs/sdk/base/core/e/a/b;-><init>()V

    new-instance v2, Lcom/efs/sdk/base/core/e/a/e;

    invoke-direct {v2}, Lcom/efs/sdk/base/core/e/a/e;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/e/a/a;->a:Lcom/efs/sdk/base/core/e/a/a;

    iput-object v1, v0, Lcom/efs/sdk/base/core/e/a/a;->a:Lcom/efs/sdk/base/core/e/a/a;

    iput-object v2, v1, Lcom/efs/sdk/base/core/e/a/a;->a:Lcom/efs/sdk/base/core/e/a/a;

    return-object p0
.end method
