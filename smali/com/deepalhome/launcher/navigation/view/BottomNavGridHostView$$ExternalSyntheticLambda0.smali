.class public final synthetic Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$$ExternalSyntheticLambda0;->f$0:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$$ExternalSyntheticLambda0;->f$0:Landroid/widget/FrameLayout;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;

    invoke-static {p0, p2}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->$r8$lambda$22ViP8gJrHEsUT2v7WA4TewE2RI(Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->$r8$lambda$0oUc6PCbgMlfbM5sjowsXzx16CU(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
