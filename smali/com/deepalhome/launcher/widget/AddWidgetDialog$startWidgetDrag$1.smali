.class public final Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPoint()Landroid/graphics/Point;
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
