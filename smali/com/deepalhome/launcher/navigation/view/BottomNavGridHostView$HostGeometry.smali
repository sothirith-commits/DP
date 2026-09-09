.class public final Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final railRects:Ljava/util/List;

.field public final slotRects:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V
    .locals 1

    const-string v0, "slotRects"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "railRects"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->slotRects:Ljava/util/List;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->railRects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->slotRects:Ljava/util/List;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->slotRects:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->railRects:Ljava/util/List;

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->railRects:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->slotRects:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->railRects:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final rectFor(Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p1, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->railIndex:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->railRects:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    iget-object v0, p1, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->slotStart:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p1, p1, Lcom/deepalhome/launcher/navigation/layout/GridRenderNode;->slotSpan:I

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->slotSpanRect(II)Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    return-object v1
.end method

.method public final slotSpanRect(II)Landroid/graphics/Rect;
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->slotRects:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, p2, v1, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HostGeometry(slotRects="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->slotRects:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", railRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$HostGeometry;->railRects:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
