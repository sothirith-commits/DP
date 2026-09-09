.class public final Lcom/koushikdutta/async/parser/ByteBufferListParser$1;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "SourceFile"


# instance fields
.field public final synthetic val$emitter:Lcom/koushikdutta/async/DataEmitter;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/FilteredDataEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelCleanup()V
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    return-void
.end method
