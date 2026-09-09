.class public final Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public cursor:I

.field public fence:I

.field public lastRet:I

.field public final synthetic this$0:Lcom/koushikdutta/async/util/ArrayDeque;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/util/ArrayDeque;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    iget v0, p1, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    iget p1, p1, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->fence:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->lastRet:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    iget p0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->fence:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->fence:I

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    iget-object v3, v2, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v4, v3, v0

    iget v2, v2, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    if-ne v2, v1, :cond_0

    if-eqz v4, :cond_0

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->lastRet:I

    add-int/lit8 v0, v0, 0x1

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    return-object v4

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->lastRet:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->delete(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v2, v1, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    iget v0, v1, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->fence:I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->lastRet:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
