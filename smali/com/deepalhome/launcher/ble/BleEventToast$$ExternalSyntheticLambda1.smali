.class public final synthetic Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/hjq/window/EasyWindow;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/hjq/window/EasyWindow;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iput-object p2, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$0:Lcom/hjq/window/EasyWindow;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hjq/window/EasyWindow;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$0:Lcom/hjq/window/EasyWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->currentWindow:Lcom/hjq/window/EasyWindow;

    iget-object v1, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$0:Lcom/hjq/window/EasyWindow;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {v1}, Lcom/hjq/window/EasyWindow;->cancel()V

    sput-object v2, Lcom/deepalhome/launcher/ble/BleEventToast;->currentWindow:Lcom/hjq/window/EasyWindow;

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->currentView:Landroid/view/View;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    if-ne v0, p0, :cond_1

    sput-object v2, Lcom/deepalhome/launcher/ble/BleEventToast;->currentView:Landroid/view/View;

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$0:Lcom/hjq/window/EasyWindow;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;-><init>(Lcom/hjq/window/EasyWindow;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->currentWindow:Lcom/hjq/window/EasyWindow;

    iget-object v1, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$0:Lcom/hjq/window/EasyWindow;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->currentView:Landroid/view/View;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    if-ne v0, p0, :cond_2

    invoke-virtual {v1}, Lcom/hjq/window/EasyWindow;->cancel()V

    invoke-virtual {v1}, Lcom/hjq/window/EasyWindow;->show()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
