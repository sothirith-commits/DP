.class public abstract Lcom/incall/serversdk/bluetooth/IBluetoothManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/bluetooth/IBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/IBluetoothManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.bluetooth.IBluetoothManager"

.field static final TRANSACTION_bluetoothOFF:I = 0x5

.field static final TRANSACTION_bluetoothON:I = 0x4

.field static final TRANSACTION_cancelDiscovery:I = 0x17

.field static final TRANSACTION_cancelPair:I = 0x19

.field static final TRANSACTION_checkBluetoothAddress:I = 0xa

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_connectDevice:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x3

.field static final TRANSACTION_getBluetoothConnectState:I = 0x1

.field static final TRANSACTION_getBluetoothDeviceInfo:I = 0xb

.field static final TRANSACTION_getBluetoothMac:I = 0xe

.field static final TRANSACTION_getBluetoothName:I = 0xd

.field static final TRANSACTION_getBluetoothSoftVersion:I = 0x1a

.field static final TRANSACTION_getBondedDevices:I = 0x18

.field static final TRANSACTION_getBtPowerStatus:I = 0x13

.field static final TRANSACTION_getConnectingBluetoothDeviceInfo:I = 0xc

.field static final TRANSACTION_getLastTimeConnectMac:I = 0xf

.field static final TRANSACTION_getScanMode:I = 0x10

.field static final TRANSACTION_isDiscoverable:I = 0x15

.field static final TRANSACTION_isDiscovering:I = 0x14

.field static final TRANSACTION_refusePair:I = 0x8

.field static final TRANSACTION_registerBluetoothConnectChangedListener:I = 0x25

.field static final TRANSACTION_registerBluetoothNameChanagerListener:I = 0x27

.field static final TRANSACTION_registerDeviceFoundListener:I = 0x1b

.field static final TRANSACTION_registerDiscovryStateListener:I = 0x23

.field static final TRANSACTION_registerPairingRequestListener:I = 0x1d

.field static final TRANSACTION_registerPairingResultListener:I = 0x1f

.field static final TRANSACTION_registerPowerChangedListener:I = 0x21

.field static final TRANSACTION_removePairDevice:I = 0x9

.field static final TRANSACTION_setBluetoothName:I = 0x12

.field static final TRANSACTION_setDiscoverableTimeout:I = 0x6

.field static final TRANSACTION_setScanMode:I = 0x11

.field static final TRANSACTION_startDiscovry:I = 0x16

.field static final TRANSACTION_unregisterBluetoothConnectChangedListener:I = 0x26

.field static final TRANSACTION_unregisterBluetoothNameChanagerListener:I = 0x28

.field static final TRANSACTION_unregisterDeviceFoundListener:I = 0x1c

.field static final TRANSACTION_unregisterDiscovryStateListener:I = 0x24

.field static final TRANSACTION_unregisterPairingRequestListener:I = 0x1e

.field static final TRANSACTION_unregisterPairingResultListener:I = 0x20

.field static final TRANSACTION_unregisterPowerChangedListener:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.bluetooth.IBluetoothManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IBluetoothManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.bluetooth.IBluetoothManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/bluetooth/IBluetoothManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/bluetooth/IBluetoothManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/bluetooth/IBluetoothManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/bluetooth/IBluetoothManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/bluetooth/IBluetoothManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/bluetooth/IBluetoothManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/IBluetoothManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/bluetooth/IBluetoothManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/IBluetoothManager;

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

    const-string v1, "com.incall.serversdk.bluetooth.IBluetoothManager"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->unregisterBluetoothNameChanagerListener(Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->registerBluetoothNameChanagerListener(Lcom/incall/serversdk/bluetooth/IBluetoothNameChanagerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->unregisterBluetoothConnectChangedListener(Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->registerBluetoothConnectChangedListener(Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IDiscovryStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IDiscovryStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->unregisterDiscovryStateListener(Lcom/incall/serversdk/bluetooth/IDiscovryStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IDiscovryStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IDiscovryStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->registerDiscovryStateListener(Lcom/incall/serversdk/bluetooth/IDiscovryStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IPowerChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IPowerChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->unregisterPowerChangedListener(Lcom/incall/serversdk/bluetooth/IPowerChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IPowerChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IPowerChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->registerPowerChangedListener(Lcom/incall/serversdk/bluetooth/IPowerChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IPairingResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IPairingResultListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->unregisterPairingResultListener(Lcom/incall/serversdk/bluetooth/IPairingResultListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IPairingResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IPairingResultListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->registerPairingResultListener(Lcom/incall/serversdk/bluetooth/IPairingResultListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IPairingRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IPairingRequestListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->unregisterPairingRequestListener(Lcom/incall/serversdk/bluetooth/IPairingRequestListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IPairingRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IPairingRequestListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->registerPairingRequestListener(Lcom/incall/serversdk/bluetooth/IPairingRequestListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->unregisterDeviceFoundListener(Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->registerDeviceFoundListener(Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getBluetoothSoftVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->cancelPair(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getBondedDevices()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->cancelDiscovery()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->startDiscovry()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->isDiscoverable()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->isDiscovering()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getBtPowerStatus()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->setBluetoothName(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->setScanMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getScanMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getLastTimeConnectMac()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getBluetoothMac()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getBluetoothName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getConnectingBluetoothDeviceInfo()Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v2}, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getBluetoothDeviceInfo()Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v2}, Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->removePairDevice(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->refusePair(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->connectDevice(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->setDiscoverableTimeout()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->bluetoothOFF()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->bluetoothON()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->disconnect(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->connect(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothManager;->getBluetoothConnectState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
