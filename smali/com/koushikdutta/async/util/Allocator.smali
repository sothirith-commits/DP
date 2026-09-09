.class public final Lcom/koushikdutta/async/util/Allocator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentAlloc:I

.field public final maxAlloc:I

.field public final minAlloc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->currentAlloc:I

    const/16 v0, 0x1000

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->minAlloc:I

    sget v0, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->maxAlloc:I

    return-void
.end method
