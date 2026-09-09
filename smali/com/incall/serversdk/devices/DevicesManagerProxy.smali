.class public Lcom/incall/serversdk/devices/DevicesManagerProxy;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;,
        Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/devices/IDevicesManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_MOUNTED_STATUS_CHANGE:I = 0x1

.field private static final MESSAGE_USB_DEVICES_CONNECT_CHAGEN:I = 0x2

.field private static final MESSAGE_USB_DEVICES_DISCONNECT_CHAGEN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DevicesManagerProxy"

.field private static proxy:Lcom/incall/serversdk/devices/DevicesManagerProxy;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMountListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/devices/OnMountedStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/devices/OnUsbStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mountedToServiceListener:Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;

.field private usbToServiceListener:Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/incall/serversdk/devices/ServiceNotConnectedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    new-instance p1, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;-><init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mHandler:Landroid/os/Handler;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mInterface : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "DevicesManagerProxy"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;-><init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/DevicesManagerProxy$1;)V

    iput-object p1, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->usbToServiceListener:Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;

    new-instance p1, Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;

    invoke-direct {p1, p0, v0}, Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;-><init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/DevicesManagerProxy$1;)V

    iput-object p1, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mountedToServiceListener:Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;

    return-void
.end method

.method public static synthetic access$000(Lcom/incall/serversdk/devices/DevicesManagerProxy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mMountListeners:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/incall/serversdk/devices/DevicesManagerProxy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mUsbListeners:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/UsbDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->handlerUsbStatusConnect(Lcom/incall/serversdk/devices/UsbDevice;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/UsbDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->handlerUsbStatusDisconntect(Lcom/incall/serversdk/devices/UsbDevice;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/VolumeInfo;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->handlerMountedStatusChange(Lcom/incall/serversdk/devices/VolumeInfo;II)V

    return-void
.end method

.method public static synthetic access$700(Lcom/incall/serversdk/devices/DevicesManagerProxy;Lcom/incall/serversdk/devices/VolumeRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->handlerVolumeRecordChanged(Lcom/incall/serversdk/devices/VolumeRecord;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/incall/serversdk/devices/DevicesManagerProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/incall/serversdk/devices/ServiceNotConnectedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DevicesManagerProxy: proxy = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/incall/serversdk/devices/DevicesManagerProxy;->proxy:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "DevicesManagerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->proxy:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/devices/DevicesManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->proxy:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    :cond_0
    sget-object p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->proxy:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    return-object p0
.end method

.method private handlerMountedStatusChange(Lcom/incall/serversdk/devices/VolumeInfo;II)V
    .locals 2

    iget-object v0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handlerUsbStatusConnect(Lcom/incall/serversdk/devices/UsbDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handlerUsbStatusDisconntect(Lcom/incall/serversdk/devices/UsbDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handlerVolumeRecordChanged(Lcom/incall/serversdk/devices/VolumeRecord;)V
    .locals 1

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mMountListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/incall/serversdk/devices/OnMountedStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/incall/serversdk/devices/OnMountedStatusChangeListener;->onVolumeRecordChanged(Lcom/incall/serversdk/devices/VolumeRecord;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMountStoragePath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/incall/serversdk/devices/ServiceNotConnectedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/devices/IDevicesManager;

    invoke-interface {p0}, Lcom/incall/serversdk/devices/IDevicesManager;->getMountStoragePath()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/incall/serversdk/devices/ServiceNotConnectedException;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/devices/ServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getMountStorageVolumes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/incall/serversdk/devices/ServiceNotConnectedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/devices/IDevicesManager;

    invoke-interface {p0}, Lcom/incall/serversdk/devices/IDevicesManager;->getMountStorageVolumes()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/incall/serversdk/devices/ServiceNotConnectedException;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/devices/ServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.devices"

    return-object p0
.end method

.method public getUsbDevices()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/incall/serversdk/devices/UsbDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/incall/serversdk/devices/ServiceNotConnectedException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    new-instance p0, Lcom/incall/serversdk/devices/ServiceNotConnectedException;

    const-string v0, "Bind device service error"

    invoke-direct {p0, v0}, Lcom/incall/serversdk/devices/ServiceNotConnectedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/devices/IDevicesManager;

    invoke-interface {p0, v1}, Lcom/incall/serversdk/devices/IDevicesManager;->getUsbDevices(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/incall/serversdk/devices/UsbDevice;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    return-object v0

    :goto_1
    const-string v0, "DevicesManagerProxy"

    const-string v1, "exception in IDevicesManager.getUsbDevices"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/incall/serversdk/devices/ServiceNotConnectedException;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/devices/ServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getUsbDevicesByClass(I)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/incall/serversdk/devices/UsbDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/incall/serversdk/devices/ServiceNotConnectedException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/devices/IDevicesManager;

    invoke-interface {p0, v1, p1}, Lcom/incall/serversdk/devices/IDevicesManager;->getUsbDevicesByClass(Landroid/os/Bundle;I)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/incall/serversdk/devices/UsbDevice;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    :goto_1
    const-string p1, "DevicesManagerProxy"

    const-string v0, "exception in IDevicesManager.getUsbDevicesByClass"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/incall/serversdk/devices/ServiceNotConnectedException;

    invoke-direct {p1, p0}, Lcom/incall/serversdk/devices/ServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/incall/serversdk/devices/ServiceNotConnectedException;

    const-string p1, "Bind device service error"

    invoke-direct {p0, p1}, Lcom/incall/serversdk/devices/ServiceNotConnectedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public haveMassStorageMount()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/incall/serversdk/devices/ServiceNotConnectedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/devices/IDevicesManager;

    invoke-interface {p0}, Lcom/incall/serversdk/devices/IDevicesManager;->haveMassStorageMount()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DevicesManagerProxy"

    const-string v1, "StorageManager.haveMassStorageMount error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/incall/serversdk/devices/ServiceNotConnectedException;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/devices/ServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public haveUsbDevices()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/incall/serversdk/devices/ServiceNotConnectedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/devices/IDevicesManager;

    invoke-interface {p0}, Lcom/incall/serversdk/devices/IDevicesManager;->haveUsbDevices()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DevicesManagerProxy"

    const-string v1, "get Usb devices error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/incall/serversdk/devices/ServiceNotConnectedException;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/devices/ServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public reRegisterCallBacks()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v0, Lcom/incall/serversdk/devices/IDevicesManager;

    iget-object v1, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->usbToServiceListener:Lcom/incall/serversdk/devices/DevicesManagerProxy$UsbStatusChangeListenerToService;

    invoke-interface {v0, v1}, Lcom/incall/serversdk/devices/IDevicesManager;->registerUsbStatusChangeListener(Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent;)Z

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v0, Lcom/incall/serversdk/devices/IDevicesManager;

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mountedToServiceListener:Lcom/incall/serversdk/devices/DevicesManagerProxy$MountedStatusChangeListenerToService;

    invoke-interface {v0, p0}, Lcom/incall/serversdk/devices/IDevicesManager;->registerMountedStatusChangeListener(Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DevicesManagerProxy"

    const-string v1, "StorageManager.haveMassStorageMount error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerMountedStatusChangeListener(Lcom/incall/serversdk/devices/OnMountedStatusChangeListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mMountListeners:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mMountListeners:Ljava/util/List;

    :cond_2
    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mMountListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerUsbStatusChangeListener(Lcom/incall/serversdk/devices/OnUsbStatusChangeListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mUsbListeners:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mUsbListeners:Ljava/util/List;

    :cond_2
    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mUsbListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unRegisterMountedStatusChangeListener(Lcom/incall/serversdk/devices/OnMountedStatusChangeListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mMountListeners:Ljava/util/List;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unRegisterUsbStatusChangeListener(Lcom/incall/serversdk/devices/OnUsbStatusChangeListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy;->mUsbListeners:Ljava/util/List;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
