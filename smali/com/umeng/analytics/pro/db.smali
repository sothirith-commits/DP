.class public final Lcom/umeng/analytics/pro/db;
.super Lcom/umeng/analytics/pro/dd;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/umeng/analytics/pro/dd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/db;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/umeng/analytics/pro/db;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Lcom/umeng/analytics/pro/dd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/db;->a:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/umeng/analytics/pro/db;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 0

    iget-object p0, p0, Lcom/umeng/analytics/pro/db;->a:Ljava/io/InputStream;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/umeng/analytics/pro/de;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bw;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lcom/umeng/analytics/pro/de;->f:I

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/umeng/analytics/pro/de;

    invoke-direct {p1, p0}, Lcom/umeng/analytics/pro/de;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/umeng/analytics/pro/de;

    const-string p1, "Cannot read from null inputStream"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/de;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(I[BI)V
    .locals 0

    iget-object p0, p0, Lcom/umeng/analytics/pro/db;->b:Ljava/io/OutputStream;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/umeng/analytics/pro/de;

    invoke-direct {p1, p0}, Lcom/umeng/analytics/pro/de;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/umeng/analytics/pro/de;

    const-string p1, "Cannot write to null outputStream"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/de;-><init>(Ljava/lang/String;)V

    throw p0
.end method
