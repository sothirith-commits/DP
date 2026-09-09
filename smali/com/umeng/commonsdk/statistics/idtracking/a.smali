.class public abstract Lcom/umeng/commonsdk/statistics/idtracking/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Ljava/util/List;

.field public e:Lcom/umeng/commonsdk/statistics/proto/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 3

    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/b;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->e:Lcom/umeng/commonsdk/statistics/proto/b;

    iget-object p1, p1, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->d:Ljava/util/List;

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/a;

    iget-object v2, v0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 8

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->e:Lcom/umeng/commonsdk/statistics/proto/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    iget v4, v0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    :goto_1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->f()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "unknown"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v0, :cond_6

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    :cond_6
    iput-object v1, v0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/b;->b()V

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/b;->c()V

    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    iget-object v6, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->c:Ljava/lang/String;

    iput-object v6, v4, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    iput-object v1, v4, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    iput-object v2, v4, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    iget-wide v1, v0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    iput-wide v1, v4, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/proto/a;->d()V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->d:Ljava/util/List;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->d:Ljava/util/List;

    :cond_7
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_8

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->e:Lcom/umeng/commonsdk/statistics/proto/b;

    move v3, v5

    :cond_9
    return v3
.end method

.method public final c()Z
    .locals 1

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/idtracking/a;->e:Lcom/umeng/commonsdk/statistics/proto/b;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract f()Ljava/lang/String;
.end method
