.class final Lcom/efs/sdk/net/a/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/net/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/net/a/a/e$a;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/efs/sdk/net/a/a/e$a;->b:Ljava/io/OutputStream;

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/efs/sdk/net/a/a/e$a;->a:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    iget-object v1, p0, Lcom/efs/sdk/net/a/a/e$a;->b:Ljava/io/OutputStream;

    const/16 v2, 0x400

    new-array v2, v2, [B

    invoke-static {v0, v1, v2}, Lcom/efs/sdk/net/a/a/i;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    iget-object p0, p0, Lcom/efs/sdk/net/a/a/e$a;->b:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    iget-object p0, p0, Lcom/efs/sdk/net/a/a/e$a;->b:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/net/a/a/e$a;->a()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
