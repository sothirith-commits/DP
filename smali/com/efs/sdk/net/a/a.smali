.class public final Lcom/efs/sdk/net/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/efs/sdk/net/a/a;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/efs/sdk/net/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/efs/sdk/net/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/efs/sdk/net/a/a;->b()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/net/a/a;
    .locals 1

    sget-object v0, Lcom/efs/sdk/net/a/a;->c:Lcom/efs/sdk/net/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/efs/sdk/net/a/a;

    invoke-direct {v0}, Lcom/efs/sdk/net/a/a;-><init>()V

    sput-object v0, Lcom/efs/sdk/net/a/a;->c:Lcom/efs/sdk/net/a/a;

    :cond_0
    sget-object v0, Lcom/efs/sdk/net/a/a;->c:Lcom/efs/sdk/net/a/a;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/efs/sdk/net/a/a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/net/a/a;->a:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lcom/efs/sdk/net/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/efs/sdk/net/a/b;
    .locals 3

    iget-object v0, p0, Lcom/efs/sdk/net/a/a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/efs/sdk/net/a/a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/net/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/net/a/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/efs/sdk/net/a/b;

    invoke-direct {v0}, Lcom/efs/sdk/net/a/b;-><init>()V

    iput-object p1, v0, Lcom/efs/sdk/net/a/b;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/efs/sdk/net/a/b;->b:J

    iget-object p0, p0, Lcom/efs/sdk/net/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/efs/sdk/net/a/a;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/efs/sdk/net/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/efs/sdk/net/a/c;
    .locals 3

    iget-object v0, p0, Lcom/efs/sdk/net/a/a;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/net/a/a;->b:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/net/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/efs/sdk/net/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/efs/sdk/net/a/c;

    return-object p0

    :cond_1
    new-instance v0, Lcom/efs/sdk/net/a/c;

    invoke-direct {v0}, Lcom/efs/sdk/net/a/c;-><init>()V

    iput-object p1, v0, Lcom/efs/sdk/net/a/c;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/efs/sdk/net/a/c;->D:J

    iget-object p0, p0, Lcom/efs/sdk/net/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/efs/sdk/net/a/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/efs/sdk/net/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
