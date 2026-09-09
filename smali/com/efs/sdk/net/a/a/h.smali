.class public final Lcom/efs/sdk/net/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/efs/sdk/net/a/a/f;

.field public b:Ljava/io/ByteArrayOutputStream;

.field public c:Lcom/efs/sdk/net/a/a/a;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/net/a/a/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/net/a/a/h;->a:Lcom/efs/sdk/net/a/a/f;

    iput-object p2, p0, Lcom/efs/sdk/net/a/a/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/net/a/a/h;->b:Ljava/io/ByteArrayOutputStream;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/efs/sdk/net/a/a/h;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No body found; has createBodySink been called?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
