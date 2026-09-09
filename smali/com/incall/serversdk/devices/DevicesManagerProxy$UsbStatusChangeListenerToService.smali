.class Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;
.super Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/devices/DevicesManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbStatusChangeListenerToService"
.end annotation


# instance fields
.field final this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;


# direct methods
.method private constructor <init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-direct {p0}, Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/DevicesManagerProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;-><init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;)V

    return-void
.end method


# virtual methods
.method public onDevicesConnect(Lcom/incall/serversdk/devices/UsbDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDevicesConnect handlerUsbStatusConnect device :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "DevicesManagerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {p0, p1}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$400(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/UsbDevice;)V

    return-void
.end method

.method public onDevicesDisconnect(Lcom/incall/serversdk/devices/UsbDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {p0, p1}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$500(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/UsbDevice;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onDevicesDisconntect handlerUsbStatusDisconntect device :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "DevicesManagerProxy"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
