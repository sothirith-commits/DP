.class public final Lcom/deepalhome/mitemp/GattOperationQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final operations:Lkotlin/collections/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/mitemp/GattOperationQueue;->operations:Lkotlin/collections/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final advance(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/mitemp/GattOperationQueue;->operations:Lkotlin/collections/ArrayDeque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/GattOperationQueue;->runCurrent(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public final enqueue(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/mitemp/GattOperationQueue;->operations:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget p2, v0, Lkotlin/collections/ArrayDeque;->size:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/GattOperationQueue;->runCurrent(Landroid/bluetooth/BluetoothGatt;)V

    :cond_0
    return-void
.end method

.method public final runCurrent(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/mitemp/GattOperationQueue;->operations:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v0, v0, Lkotlin/collections/ArrayDeque;->head:I

    aget-object v0, v1, v0

    :goto_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/GattOperationQueue;->advance(Landroid/bluetooth/BluetoothGatt;)V

    :cond_2
    return-void
.end method
