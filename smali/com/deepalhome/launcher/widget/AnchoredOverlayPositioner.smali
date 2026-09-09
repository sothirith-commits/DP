.class public final Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;

    invoke-direct {v0}, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;->INSTANCE:Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static position(Landroid/view/ViewGroup;Landroid/view/View;IIILjava/lang/Integer;)Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Position;
    .locals 4

    invoke-static {p0}, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;->visibleScreenBounds(Landroid/view/View;)Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;

    move-result-object p0

    invoke-static {p1}, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;->visibleScreenBounds(Landroid/view/View;)Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;

    move-result-object p1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    goto :goto_0

    :cond_0
    iget p5, p1, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;->left:I

    :goto_0
    iget v0, p0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;->right:I

    iget v1, p0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;->left:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    move v0, v2

    :cond_1
    sub-int/2addr v0, p2

    if-gez v0, :cond_2

    move v0, v2

    :cond_2
    iget p2, p0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;->bottom:I

    iget p0, p0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;->top:I

    sub-int v3, p2, p0

    if-gez v3, :cond_3

    move v3, v2

    :cond_3
    sub-int/2addr v3, p3

    if-gez v3, :cond_4

    move v3, v2

    :cond_4
    sub-int/2addr p5, v1

    invoke-static {p5, v2, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p5

    iget v0, p1, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;->bottom:I

    iget p1, p1, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;->top:I

    sub-int v1, v0, p1

    if-gez v1, :cond_5

    move v1, v2

    :cond_5
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    sub-int/2addr p2, p0

    if-gez p2, :cond_6

    move p2, v2

    :cond_6
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    if-ge v1, p2, :cond_7

    add-int/2addr v0, p4

    goto :goto_1

    :cond_7
    sub-int/2addr p1, p3

    sub-int v0, p1, p4

    :goto_1
    sub-int/2addr v0, p0

    invoke-static {v0, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    new-instance p1, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Position;

    invoke-direct {p1, p5, p0}, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Position;-><init>(II)V

    return-object p1
.end method

.method public static visibleScreenBounds(Landroid/view/View;)Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;-><init>(IIII)V

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    aget v0, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v1, v2, v4, v5, p0}, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Bounds;-><init>(IIII)V

    return-object v1
.end method
