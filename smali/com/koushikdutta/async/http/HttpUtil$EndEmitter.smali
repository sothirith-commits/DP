.class public final Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    return-void
.end method

.method public static create(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/http/BodyDecoderException;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    .locals 3

    new-instance v0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;-><init>()V

    new-instance v1, Lcom/umeng/commonsdk/internal/c$2;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0, p1}, Lcom/umeng/commonsdk/internal/c$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)V

    return-object v0
.end method
