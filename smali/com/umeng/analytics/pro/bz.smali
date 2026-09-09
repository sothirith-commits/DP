.class public final Lcom/umeng/analytics/pro/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/ByteArrayOutputStream;

.field public final c:Lcom/umeng/analytics/pro/cp;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/umeng/analytics/pro/cj$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cj$a;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/pro/bz;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v2, Lcom/umeng/analytics/pro/db;

    invoke-direct {v2, v1}, Lcom/umeng/analytics/pro/db;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/cj$a;->a(Lcom/umeng/analytics/pro/dd;)Lcom/umeng/analytics/pro/cp;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/bz;->c:Lcom/umeng/analytics/pro/cp;

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/analytics/pro/bq;)[B
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/pro/bz;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p0, p0, Lcom/umeng/analytics/pro/bz;->c:Lcom/umeng/analytics/pro/cp;

    invoke-interface {p1, p0}, Lcom/umeng/analytics/pro/bq;->write(Lcom/umeng/analytics/pro/cp;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
