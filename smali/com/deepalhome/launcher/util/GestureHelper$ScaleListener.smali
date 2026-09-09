.class public final Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/view/PreviewView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const-string v0, "detector"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/GestureHelper;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "detector"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/GestureHelper;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void

    :pswitch_0
    const-string v0, "detector"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper$ScaleListener;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/GestureHelper;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/GestureHelper;->mListener:Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
