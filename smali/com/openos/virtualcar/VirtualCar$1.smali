.class public final Lcom/openos/virtualcar/VirtualCar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/openos/virtualcar/VirtualCar;


# direct methods
.method public synthetic constructor <init>(Lcom/openos/virtualcar/VirtualCar;I)V
    .locals 0

    iput p2, p0, Lcom/openos/virtualcar/VirtualCar$1;->$r8$classId:I

    iput-object p1, p0, Lcom/openos/virtualcar/VirtualCar$1;->this$0:Lcom/openos/virtualcar/VirtualCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/openos/virtualcar/VirtualCar$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "service ready status:"

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCar$1;->this$0:Lcom/openos/virtualcar/VirtualCar;

    iget v1, p0, Lcom/openos/virtualcar/VirtualCar;->mConnectionRetryCount:I

    iget-object v2, p0, Lcom/openos/virtualcar/VirtualCar;->mListenerRun:Lcom/openos/virtualcar/VirtualCar$1;

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/openos/virtualcar/VirtualCar;->mConnectionRetryCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "try get service status count:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/openos/virtualcar/VirtualCar;->mConnectionRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VCar_1.0.3.w"

    invoke-static {v3, v1}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/openos/virtualcar/VirtualCar;->mConnectionRetryCount:I

    const/4 v4, 0x5

    if-lt v1, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/openos/virtualcar/VirtualCar;->getVirtualCarService()Lcom/openos/virtualcar/IVirtualCar;

    move-result-object v1

    iput-object v1, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    :cond_1
    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    iget-object v4, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceReady:Lcom/openos/virtualcar/VirtualCar$1;

    const-wide/16 v5, 0x3e8

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCar;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    :try_start_0
    check-cast v1, Lcom/openos/virtualcar/IVirtualCar$Stub$Proxy;

    invoke-virtual {v1}, Lcom/openos/virtualcar/IVirtualCar$Stub$Proxy;->getVirtualCarConnectionType()I

    move-result v1

    iput v1, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceState:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceState:I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/openos/virtualcar/VirtualCar;->mConnectionRetryCount:I

    iget-object v0, p0, Lcom/openos/virtualcar/VirtualCar;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/openos/virtualcar/VirtualCar;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCar;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCar$1;->this$0:Lcom/openos/virtualcar/VirtualCar;

    iget v0, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceState:I

    const-string v1, "VCar_1.0.3.w"

    if-eqz v0, :cond_4

    const-string v0, "serviceReadyFailed"

    invoke-static {v1, v0}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceListener:Lcom/openos/virtualcar/VirtualServiceReadyListener;

    invoke-interface {p0}, Lcom/openos/virtualcar/VirtualServiceReadyListener;->serviceReadyFailed()V

    goto :goto_2

    :cond_4
    const-string v0, "serviceReadySuccess"

    invoke-static {v1, v0}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceListener:Lcom/openos/virtualcar/VirtualServiceReadyListener;

    invoke-interface {p0}, Lcom/openos/virtualcar/VirtualServiceReadyListener;->serviceReadySuccess()V

    const-string p0, "serviceReadySuccess done"

    invoke-static {v1, p0}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
