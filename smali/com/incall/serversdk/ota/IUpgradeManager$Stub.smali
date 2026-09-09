.class public abstract Lcom/incall/serversdk/ota/IUpgradeManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/ota/IUpgradeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/ota/IUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/ota/IUpgradeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.ota.IUpgradeManager"

.field static final TRANSACTION_cancelUpdate:I = 0x2

.field static final TRANSACTION_getBatteryPower:I = 0x8

.field static final TRANSACTION_getBatteryVoltage:I = 0x9

.field static final TRANSACTION_getModuleInfo:I = 0x3

.field static final TRANSACTION_getVehiclePowerStatus:I = 0x7

.field static final TRANSACTION_getVehicleSpeed:I = 0x6

.field static final TRANSACTION_getVersionByPartNumber:I = 0x4

.field static final TRANSACTION_installApp:I = 0xe

.field static final TRANSACTION_isTboxUpgradability:I = 0xa

.field static final TRANSACTION_isUpgrading:I = 0xb

.field static final TRANSACTION_reboot:I = 0x5

.field static final TRANSACTION_rebootMcu:I = 0xc

.field static final TRANSACTION_registTboxConnectCallbackListener:I = 0x12

.field static final TRANSACTION_registUpgradeListener:I = 0x10

.field static final TRANSACTION_request4GUSBBoot:I = 0xd

.field static final TRANSACTION_unregistTboxConnectCallbackListener:I = 0x13

.field static final TRANSACTION_unregistUpgradeListener:I = 0x11

.field static final TRANSACTION_unstallApp:I = 0xf

.field static final TRANSACTION_upgradeFirmware:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.ota.IUpgradeManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/ota/IUpgradeManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.ota.IUpgradeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/ota/IUpgradeManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/ota/IUpgradeManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/ota/IUpgradeManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/ota/IUpgradeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/ota/IUpgradeManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/ota/IUpgradeManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/ota/IUpgradeManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/ota/IUpgradeManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/ota/IUpgradeManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/ota/IUpgradeManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/ota/IUpgradeManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/ota/IUpgradeManager;

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

    const/4 v1, 0x1

    const-string v2, "com.incall.serversdk.ota.IUpgradeManager"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/ota/ITboxConnectCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeManager;->unregistTboxConnectCallbackListener(Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/ota/ITboxConnectCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeManager;->registTboxConnectCallbackListener(Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeManager;->unregistUpgradeListener(Lcom/incall/serversdk/ota/IUpgradeCallbackListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/ota/IUpgradeCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/ota/IUpgradeCallbackListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeManager;->registUpgradeListener(Lcom/incall/serversdk/ota/IUpgradeCallbackListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/ota/IInstallCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/ota/IInstallCallbackListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/ota/IUpgradeManager;->unstallApp(Ljava/lang/String;Lcom/incall/serversdk/ota/IInstallCallbackListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/ota/IInstallCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/ota/IInstallCallbackListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/ota/IUpgradeManager;->installApp(Ljava/lang/String;Lcom/incall/serversdk/ota/IInstallCallbackListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/ota/ITboxUSBBootRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/ota/ITboxUSBBootRequestListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/ota/IUpgradeManager;->request4GUSBBoot(ILcom/incall/serversdk/ota/ITboxUSBBootRequestListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/ota/IUpgradeManager;->rebootMcu()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeManager;->isUpgrading(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/ota/IUpgradeManager;->isTboxUpgradability()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/ota/IUpgradeManager;->getBatteryVoltage()F

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/ota/IUpgradeManager;->getBatteryPower()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/ota/IUpgradeManager;->getVehiclePowerStatus()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/ota/IUpgradeManager;->getVehicleSpeed()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/ota/IUpgradeManager;->reboot()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeManager;->getVersionByPartNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/ota/IUpgradeManager;->getModuleInfo()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/IUpgradeManager;->cancelUpdate(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/incall/serversdk/ota/IUpgradeManager;->upgradeFirmware(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
