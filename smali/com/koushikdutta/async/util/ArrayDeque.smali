.class public final Lcom/koushikdutta/async/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field public transient elements:[Ljava/lang/Object;

.field public transient head:I

.field public transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v0

    ushr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_0

    ushr-int/lit8 v1, v1, 0x1

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    :goto_0
    iget v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    iget p1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->doubleCapacity()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "e == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->doubleCapacity()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "e == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clear()V
    .locals 5

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    iput v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget-object v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :cond_0
    iget-object v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/ArrayDeque;

    iget-object p0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v1, v0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final copyElements([Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result p0

    invoke-static {v1, v0, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget p0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    invoke-static {v0, v2, p1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final delete(I)Z
    .locals 8

    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    sub-int v5, p1, v3

    and-int/2addr v5, v1

    sub-int v6, v4, p1

    and-int/2addr v6, v1

    sub-int v7, v4, v3

    and-int/2addr v7, v1

    if-ge v5, v7, :cond_3

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    if-gt v3, p1, :cond_0

    add-int/lit8 p1, v3, 0x1

    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v7, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, v0, v1

    aput-object p1, v0, v7

    add-int/lit8 p1, v3, 0x1

    sub-int v4, v1, v3

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 p1, 0x0

    aput-object p1, v0, v3

    add-int/2addr v3, v2

    and-int p1, v3, v1

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    return v7

    :cond_1
    if-ge p1, v4, :cond_2

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    sub-int v5, v1, p1

    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, v0, v7

    aput-object p1, v0, v1

    invoke-static {v0, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    and-int p1, v4, v1

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    :goto_1
    return v2

    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final doubleCapacity()V
    .locals 6

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v1

    sub-int v3, v2, v0

    shl-int/lit8 v4, v2, 0x1

    if-ltz v4, :cond_0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v1, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iput v5, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iput v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Sorry, deque too big"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final element()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget p0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    aget-object p0, v0, p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget p0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;-><init>(Lcom/koushikdutta/async/util/ArrayDeque;)V

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget p0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    :goto_0
    return-object v2
.end method

.method public final remove()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    :goto_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/util/ArrayDeque;->delete(I)Z

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, v0

    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->copyElements([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->copyElements([Ljava/lang/Object;)V

    array-length p0, p1

    if-le p0, v0, :cond_1

    const/4 p0, 0x0

    aput-object p0, p1, v0

    :cond_1
    return-object p1
.end method
