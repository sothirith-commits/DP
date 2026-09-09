.class public final synthetic Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->handleTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->handleTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
