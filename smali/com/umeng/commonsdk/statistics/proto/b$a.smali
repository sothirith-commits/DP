.class public final Lcom/umeng/commonsdk/statistics/proto/b$a;
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

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V
    .locals 2

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/b;

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/b;->g:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->a()V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/b;->g:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/b;->h:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/cp;->a(J)V

    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/b;->i:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget p0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->d()V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->b()V

    return-void

    :cond_1
    new-instance p0, Lcom/umeng/analytics/pro/cq;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'identity\' was not present! Struct: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V
    .locals 3

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->j()Lcom/umeng/analytics/pro/cu;

    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->l()Lcom/umeng/analytics/pro/ck;

    move-result-object v0

    iget-byte v1, v0, Lcom/umeng/analytics/pro/ck;->b:B

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->k()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/umeng/analytics/pro/cq;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'identity\' was not present! Struct: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p0

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
    new-instance p1, Lcom/umeng/analytics/pro/cq;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v2, 0x1

    iget-short v0, v0, Lcom/umeng/analytics/pro/ck;->c:S

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->c()V

    goto/16 :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0xa

    if-ne v1, v0, :cond_7

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->b()V

    goto/16 :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0xb

    if-ne v1, v0, :cond_9

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0
.end method
