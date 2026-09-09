.class public abstract Lcom/efs/sdk/base/core/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/efs/sdk/base/core/e/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/efs/sdk/base/core/d/b;)V
.end method

.method public final b(Lcom/efs/sdk/base/core/d/b;)V
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/base/core/e/a/a;->a:Lcom/efs/sdk/base/core/e/a/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->a(Lcom/efs/sdk/base/core/d/b;)V

    :cond_0
    return-void
.end method
