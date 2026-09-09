.class public final Landroidx/collection/ArrayMap$1;
.super Landroidx/collection/MapCollections;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method public final colClear()V
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final colGetEntry(II)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArraySet;

    iget-object p0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final colGetMap()Ljava/util/Map;
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final colGetSize()I
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArraySet;

    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    iget p0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final colRemoveAt(I)V
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->removeAt(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
