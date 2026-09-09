.class public final synthetic Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/hjq/window/EasyWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/hjq/window/EasyWindow;I)V
    .locals 0

    iput p2, p0, Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;->f$0:Lcom/hjq/window/EasyWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;->f$0:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;->f$0:Lcom/hjq/window/EasyWindow;

    iget-boolean v0, p0, Lcom/hjq/window/EasyWindow;->mShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->mDecorView:Lcom/hjq/window/WindowLayout;

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
