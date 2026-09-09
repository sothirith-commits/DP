.class public final Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/koushikdutta/async/FilteredDataEmitter$1;
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    iput-object p0, v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    return-object v0
.end method
