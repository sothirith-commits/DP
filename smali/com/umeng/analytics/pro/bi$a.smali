.class public final Lcom/umeng/analytics/pro/bi$a;
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

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V
    .locals 0

    check-cast p2, Lcom/umeng/analytics/pro/bi;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->G()V

    sget-object p0, Lcom/umeng/analytics/pro/bi;->n:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->a()V

    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/umeng/analytics/pro/bi;->n:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->b:Ljava/lang/String;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/umeng/analytics/pro/bi;->o:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->c:Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/umeng/analytics/pro/bi;->p:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lcom/umeng/analytics/pro/bi;->q:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget p0, p2, Lcom/umeng/analytics/pro/bi;->d:I

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(I)V

    sget-object p0, Lcom/umeng/analytics/pro/bi;->r:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget p0, p2, Lcom/umeng/analytics/pro/bi;->e:I

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(I)V

    sget-object p0, Lcom/umeng/analytics/pro/bi;->s:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget p0, p2, Lcom/umeng/analytics/pro/bi;->f:I

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(I)V

    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->g:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/umeng/analytics/pro/bi;->t:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Ljava/nio/ByteBuffer;)V

    :cond_3
    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->h:Ljava/lang/String;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/umeng/analytics/pro/bi;->u:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->h:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->i:Ljava/lang/String;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/umeng/analytics/pro/bi;->v:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget-object p0, p2, Lcom/umeng/analytics/pro/bi;->i:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->F()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/umeng/analytics/pro/bi;->w:Lcom/umeng/analytics/pro/ck;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ck;)V

    iget p0, p2, Lcom/umeng/analytics/pro/bi;->j:I

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/cp;->a(I)V

    :cond_6
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->d()V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->b()V

    return-void
.end method

.method public final b(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V
    .locals 4

    check-cast p2, Lcom/umeng/analytics/pro/bi;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->j()Lcom/umeng/analytics/pro/cu;

    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->l()Lcom/umeng/analytics/pro/ck;

    move-result-object v0

    iget-byte v1, v0, Lcom/umeng/analytics/pro/ck;->b:B

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->k()V

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->G()V

    return-void

    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/cq;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/umeng/analytics/pro/cq;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Required field \'ts_secs\' was not found in serialized data! Struct: "

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

    const-string v0, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-short v0, v0, Lcom/umeng/analytics/pro/ck;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto :goto_0

    :pswitch_0
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/bi;->j:I

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->j()V

    goto/16 :goto_0

    :cond_4
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :pswitch_1
    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bi;->i:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :pswitch_2
    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bi;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :pswitch_3
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bi;->g:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :pswitch_4
    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/bi;->f:I

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->f()V

    goto/16 :goto_0

    :cond_8
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :pswitch_5
    if-ne v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/bi;->e:I

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->e()V

    goto/16 :goto_0

    :cond_9
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :pswitch_6
    if-ne v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/bi;->d:I

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bi;->d()V

    goto/16 :goto_0

    :cond_a
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :pswitch_7
    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bi;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :pswitch_8
    if-ne v1, v3, :cond_c

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bi;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    :pswitch_9
    if-ne v1, v3, :cond_d

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bi;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;B)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
