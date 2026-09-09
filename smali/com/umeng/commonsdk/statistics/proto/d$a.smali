.class public final Lcom/umeng/commonsdk/statistics/proto/d$a;
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

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V
    .locals 3

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/d;->g:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->a()V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/d;->g:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    new-instance p0, Lcom/umeng/analytics/pro/cm;

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xc

    invoke-direct {p0, v1, v2, v0}, Lcom/umeng/analytics/pro/cm;-><init>(BBI)V

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/cm;)V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->write(Lcom/umeng/analytics/pro/cp;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/d;->h:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget p0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(I)V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/d;->i:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->d()V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->b()V

    return-void
.end method

.method public final b(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V
    .locals 5

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->j()Lcom/umeng/analytics/pro/cu;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->l()Lcom/umeng/analytics/pro/ck;

    move-result-object v0

    iget-byte v1, v0, Lcom/umeng/analytics/pro/ck;->b:B

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->k()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    return-void

    :cond_1
    new-instance p1, Lcom/umeng/analytics/pro/cq;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v2, 0x1

    iget-short v0, v0, Lcom/umeng/analytics/pro/ck;->c:S

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    if-ne v1, v0, :cond_6

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->b()V

    goto :goto_0

    :cond_6
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto :goto_0

    :cond_7
    const/16 v0, 0xd

    if-ne v1, v0, :cond_8

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->n()Lcom/umeng/analytics/pro/cm;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v0, v0, Lcom/umeng/analytics/pro/cm;->c:I

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v3}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>()V

    invoke-virtual {v3, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->read(Lcom/umeng/analytics/pro/cp;)V

    iget-object v4, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0
.end method
