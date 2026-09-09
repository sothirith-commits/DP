.class public abstract Lcom/koushikdutta/async/PushParser$Waiter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/koushikdutta/async/PushParser$Waiter;->length:I

    return-void
.end method


# virtual methods
.method public abstract onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
.end method
