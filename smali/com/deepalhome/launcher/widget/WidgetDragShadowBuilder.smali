.class public final Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# instance fields
.field public final scale:F

.field public final touchPointProvider:Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;


# direct methods
.method public constructor <init>(Landroid/view/View;FLcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;)V
    .locals 1

    const-string v0, "view"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iput p2, p0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;->scale:F

    iput-object p3, p0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;->touchPointProvider:Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;

    return-void
.end method


# virtual methods
.method public final onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Point;->set(II)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;->touchPointProvider:Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;

    invoke-interface {p0}, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;->getPoint()Landroid/graphics/Point;

    move-result-object p0

    if-eqz p2, :cond_1

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Point;->set(II)V

    :cond_1
    return-void
.end method
