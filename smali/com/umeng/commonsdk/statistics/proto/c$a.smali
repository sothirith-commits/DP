.class public final Lcom/umeng/commonsdk/statistics/proto/c$a;
.super Lcom/umeng/analytics/pro/cz;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/pro/cz;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V
    .locals 3

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/c;->g:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->a()V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const/16 v0, 0xc

    if-eqz p0, :cond_0

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/c;->g:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    new-instance p0, Lcom/umeng/analytics/pro/cm;

    iget-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    invoke-direct {p0, v2, v0, v1}, Lcom/umeng/analytics/pro/cm;-><init>(BBI)V

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/cm;)V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/analytics/pro/cp;)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/c;->h:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    new-instance p0, Lcom/umeng/analytics/pro/cl;

    iget-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/cl;-><init>(BI)V

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/cl;)V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/analytics/pro/cp;)V

    goto :goto_1

    :cond_1
    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    if-eqz p0, :cond_2

    if-eqz p0, :cond_2

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/c;->i:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->d()V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->b()V

    return-void

    :cond_3
    new-instance p0, Lcom/umeng/analytics/pro/cq;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'snapshots\' was not present! Struct: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V
    .locals 4

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->j()Lcom/umeng/analytics/pro/cu;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->l()Lcom/umeng/analytics/pro/ck;

    move-result-object p0

    iget-byte v0, p0, Lcom/umeng/analytics/pro/ck;->b:B

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->k()V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/umeng/analytics/pro/cq;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'snapshots\' was not present! Struct: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short p0, p0, Lcom/umeng/analytics/pro/ck;->c:S

    if-eq p0, v1, :cond_7

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto :goto_0

    :cond_3
    const/16 p0, 0xb

    if-ne v0, p0, :cond_4

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto :goto_0

    :cond_5
    const/16 p0, 0xf

    if-ne v0, p0, :cond_6

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->p()Lcom/umeng/analytics/pro/cl;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    iget p0, p0, Lcom/umeng/analytics/pro/cl;->b:I

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    :goto_1
    if-ge v2, p0, :cond_0

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/analytics/pro/cp;)V

    iget-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto :goto_0

    :cond_7
    const/16 p0, 0xd

    if-ne v0, p0, :cond_8

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->n()Lcom/umeng/analytics/pro/cm;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    iget p0, p0, Lcom/umeng/analytics/pro/cm;->c:I

    mul-int/lit8 v1, p0, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    :goto_2
    if-ge v2, p0, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/analytics/pro/cp;)V

    iget-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0
.end method
