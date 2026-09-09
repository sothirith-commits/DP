.class public final Lcom/umeng/analytics/pro/cs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/cp;B)V
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;BI)V

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/cp;BI)V
    .locals 3

    if-lez p2, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->p()Lcom/umeng/analytics/pro/cl;

    move-result-object p1

    :goto_0
    iget v1, p1, Lcom/umeng/analytics/pro/cl;->b:I

    if-ge v0, v1, :cond_1

    iget-byte v1, p1, Lcom/umeng/analytics/pro/cl;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->r()Lcom/umeng/analytics/pro/ct;

    move-result-object p1

    :goto_1
    iget v1, p1, Lcom/umeng/analytics/pro/ct;->b:I

    if-ge v0, v1, :cond_1

    iget-byte v1, p1, Lcom/umeng/analytics/pro/ct;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->n()Lcom/umeng/analytics/pro/cm;

    move-result-object p1

    :goto_2
    iget v1, p1, Lcom/umeng/analytics/pro/cm;->c:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, p2, -0x1

    iget-byte v2, p1, Lcom/umeng/analytics/pro/cm;->a:B

    invoke-static {p0, v2, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;BI)V

    iget-byte v2, p1, Lcom/umeng/analytics/pro/cm;->b:B

    invoke-static {p0, v2, v1}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->j()Lcom/umeng/analytics/pro/cu;

    :goto_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->l()Lcom/umeng/analytics/pro/ck;

    move-result-object p1

    iget-byte p1, p1, Lcom/umeng/analytics/pro/ck;->b:B

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->k()V

    goto :goto_4

    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/cs;->a(Lcom/umeng/analytics/pro/cp;BI)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->A()Ljava/nio/ByteBuffer;

    goto :goto_4

    :pswitch_6
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->x()J

    goto :goto_4

    :pswitch_7
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->w()I

    goto :goto_4

    :pswitch_8
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->v()S

    goto :goto_4

    :pswitch_9
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->y()D

    goto :goto_4

    :pswitch_a
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->u()B

    goto :goto_4

    :pswitch_b
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cp;->t()Z

    :cond_1
    :goto_4
    return-void

    :cond_2
    new-instance p0, Lcom/umeng/analytics/pro/bw;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
