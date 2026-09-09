.class public final Lcom/openos/ConnectionServiceMonitor$2;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/openos/ConnectionServiceMonitor$2;->$r8$classId:I

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/openos/ConnectionServiceMonitor$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void

    :pswitch_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
