.class Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;
.super Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/devices/DevicesManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MountedStatusChangeListenerToService"
.end annotation


# instance fields
.field final this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;


# direct methods
.method private constructor <init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-direct {p0}, Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/DevicesManagerProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;-><init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;)V

    return-void
.end method


# virtual methods
.method public onVolumeRecordChanged(Lcom/incall/serversdk/devices/VolumeRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {p0, p1}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$700(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/VolumeRecord;)V

    return-void
.end method

.method public onVolumeStateChanged(Lcom/incall/serversdk/devices/VolumeInfo;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onVolumeStateChanged oldState : "

    const-string v1, " newState : "

    const-string v2, " vol :"

    invoke-static {p2, p3, v0, v1, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "DevicesManagerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {p0, p1, p2, p3}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$600(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/VolumeInfo;II)V

    return-void
.end method
