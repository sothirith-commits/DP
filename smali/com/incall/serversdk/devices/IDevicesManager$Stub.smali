.class public abstract Lcom/incall/serversdk/devices/IDevicesManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/devices/IDevicesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/devices/IDevicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/devices/IDevicesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.devices.IDevicesManager"

.field static final TRANSACTION_getMountStoragePath:I = 0xa

.field static final TRANSACTION_getMountStorageVolumes:I = 0x9

.field static final TRANSACTION_getUsbDevices:I = 0x3

.field static final TRANSACTION_getUsbDevicesByClass:I = 0x4

.field static final TRANSACTION_haveMassStorageMount:I = 0x8

.field static final TRANSACTION_haveUsbDevices:I = 0x7

.field static final TRANSACTION_registerMountedStatusChangeListener:I = 0x5

.field static final TRANSACTION_registerUsbStatusChangeListener:I = 0x1

.field static final TRANSACTION_unRegisterMountedStatusChangeListener:I = 0x6

.field static final TRANSACTION_unRegisterUsbStatusChangeListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.devices.IDevicesManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/devices/IDevicesManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.devices.IDevicesManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/devices/IDevicesManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/devices/IDevicesManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/devices/IDevicesManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/devices/IDevicesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/devices/IDevicesManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/devices/IDevicesManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/devices/IDevicesManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/devices/IDevicesManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/devices/IDevicesManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/devices/IDevicesManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/devices/IDevicesManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/devices/IDevicesManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.incall.serversdk.devices.IDevicesManager"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/devices/IDevicesManager;->getMountStoragePath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/devices/IDevicesManager;->getMountStorageVolumes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/devices/IDevicesManager;->haveMassStorageMount()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/devices/IDevicesManager;->haveUsbDevices()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/devices/IDevicesManager;->unRegisterMountedStatusChangeListener(Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/devices/IDevicesManager;->registerMountedStatusChangeListener(Lcom/incall/serversdk/devices/IOnMountedStatusChangeEvent;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/devices/IDevicesManager;->getUsbDevicesByClass(Landroid/os/Bundle;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, p1}, Lcom/incall/serversdk/devices/IDevicesManager;->getUsbDevices(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/devices/IDevicesManager;->unRegisterUsbStatusChangeListener(Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/devices/IDevicesManager;->registerUsbStatusChangeListener(Lcom/incall/serversdk/devices/IOnUsbStatusChangeEvent;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
