.class public abstract Lcom/incall/serversdk/tbox/ITSManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/tbox/ITSManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/tbox/ITSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/tbox/ITSManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.tbox.ITSManager"

.field static final TRANSACTION_autoSearchConnect:I = 0x1d

.field static final TRANSACTION_checkConnectedWifiList:I = 0x20

.field static final TRANSACTION_checkIMEIcode:I = 0x12

.field static final TRANSACTION_checkNetWorkChannelState:I = 0x10

.field static final TRANSACTION_checkWifiLinker:I = 0x19

.field static final TRANSACTION_checkWifiMacAdress:I = 0x22

.field static final TRANSACTION_checkWifiPassword:I = 0x18

.field static final TRANSACTION_checkWifiSSID:I = 0x15

.field static final TRANSACTION_checkWifiState:I = 0x13

.field static final TRANSACTION_checkWifiStationSwitch:I = 0x1b

.field static final TRANSACTION_connectWifi:I = 0x1e

.field static final TRANSACTION_controlTboxWithCmd:I = 0x4e

.field static final TRANSACTION_delectConnectedWifiList:I = 0x21

.field static final TRANSACTION_disconnectWifi:I = 0x1f

.field static final TRANSACTION_getHardWareVersion:I = 0x29

.field static final TRANSACTION_getTboxCertID:I = 0x43

.field static final TRANSACTION_getTboxConnectStatus:I = 0xf

.field static final TRANSACTION_getTboxFirmPartNumb:I = 0x28

.field static final TRANSACTION_getTboxFirmVersion:I = 0x25

.field static final TRANSACTION_getTboxICCID:I = 0x42

.field static final TRANSACTION_getTboxSoftPartNumb:I = 0x27

.field static final TRANSACTION_getTboxSoftVersion:I = 0x26

.field static final TRANSACTION_getTboxTUID:I = 0x41

.field static final TRANSACTION_getWansSingalCops:I = 0x3e

.field static final TRANSACTION_getWansSingalCsq:I = 0x3f

.field static final TRANSACTION_loadInFileRequest:I = 0x3c

.field static final TRANSACTION_loadOutFileRequest:I = 0x3d

.field static final TRANSACTION_noticeChangePreferredNetworkType:I = 0x47

.field static final TRANSACTION_noticeConfApn:I = 0x45

.field static final TRANSACTION_noticeSetFlightMode:I = 0x46

.field static final TRANSACTION_notityTboxLocation:I = 0x23

.field static final TRANSACTION_openCheckTbox:I = 0x1a

.field static final TRANSACTION_queryTboxPropertyInfo:I = 0x4c

.field static final TRANSACTION_refreshWifiList:I = 0x1c

.field static final TRANSACTION_registCallListener:I = 0x3

.field static final TRANSACTION_registNotifyListener:I = 0x1

.field static final TRANSACTION_registTboxConnectListener:I = 0x5

.field static final TRANSACTION_registTboxDiagnosticInfoListener:I = 0xd

.field static final TRANSACTION_registTboxFileListener:I = 0x9

.field static final TRANSACTION_registTboxInterNetDataChannelListener:I = 0x7

.field static final TRANSACTION_registWanSingalListener:I = 0xb

.field static final TRANSACTION_registerRmtJobListener:I = 0x48

.field static final TRANSACTION_registerTboxEventListener:I = 0x4f

.field static final TRANSACTION_registerTboxPropertyChangeListener:I = 0x50

.field static final TRANSACTION_requestTboxNetStatusInfo:I = 0x4b

.field static final TRANSACTION_requestTboxUpdata:I = 0x2a

.field static final TRANSACTION_requestTspRmtJobForTest:I = 0x4a

.field static final TRANSACTION_resetApnToDefaultConf:I = 0x44

.field static final TRANSACTION_sendATCommand:I = 0x24

.field static final TRANSACTION_sendAudioStatus:I = 0x38

.field static final TRANSACTION_sendBcallStatus:I = 0x36

.field static final TRANSACTION_sendCallToTbox:I = 0x2b

.field static final TRANSACTION_sendEcallBcallPlayCallAudio:I = 0x35

.field static final TRANSACTION_sendEcallStatus:I = 0x37

.field static final TRANSACTION_sendSetWifiPasswordStatus:I = 0x32

.field static final TRANSACTION_sendSetWifiSSIDStatus:I = 0x30

.field static final TRANSACTION_sendTboxRequstCarStatus:I = 0x39

.field static final TRANSACTION_sendTboxRequstLogStatus:I = 0x3b

.field static final TRANSACTION_sendTboxRequstUpLoadStatus:I = 0x3a

.field static final TRANSACTION_sendWifiChanelStatus:I = 0x2d

.field static final TRANSACTION_sendWifiConnectNum:I = 0x33

.field static final TRANSACTION_sendWifiParamStatus:I = 0x34

.field static final TRANSACTION_sendWifiPassword:I = 0x31

.field static final TRANSACTION_sendWifiPowerStatus:I = 0x2e

.field static final TRANSACTION_sendWifiSSID:I = 0x2f

.field static final TRANSACTION_setNetWorkChannel:I = 0x11

.field static final TRANSACTION_setTboxEnvironment:I = 0x2c

.field static final TRANSACTION_setTboxPropertyInfo:I = 0x4d

.field static final TRANSACTION_setWifiPassword:I = 0x17

.field static final TRANSACTION_setWifiSSID:I = 0x16

.field static final TRANSACTION_setWifiSwitch:I = 0x14

.field static final TRANSACTION_startDiagnostic:I = 0x40

.field static final TRANSACTION_unRegisTboxInterNetDataChannelListener:I = 0x8

.field static final TRANSACTION_unRegistCallListener:I = 0x4

.field static final TRANSACTION_unRegistNotifyListener:I = 0x2

.field static final TRANSACTION_unRegistTboxConnectListener:I = 0x6

.field static final TRANSACTION_unRegistTboxFileListener:I = 0xa

.field static final TRANSACTION_unRegistWanSingalListener:I = 0xc

.field static final TRANSACTION_unregistTboxDiagnosticInfoListener:I = 0xe

.field static final TRANSACTION_unregisterRmtJobListener:I = 0x49


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.tbox.ITSManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITSManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.tbox.ITSManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/tbox/ITSManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/tbox/ITSManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/tbox/ITSManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/tbox/ITSManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/tbox/ITSManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/tbox/ITSManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/tbox/ITSManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/tbox/ITSManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/tbox/ITSManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/tbox/ITSManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/tbox/ITSManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/tbox/ITSManager;

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.incall.serversdk.tbox.ITSManager"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/ITboxPropertyChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxPropertyChangeListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->registerTboxPropertyChangeListener(ILcom/incall/serversdk/tbox/ITboxPropertyChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IBoxEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IBoxEventListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->registerTboxEventListener(ILcom/incall/serversdk/tbox/IBoxEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/incall/serversdk/tbox/ITSManager;->controlTboxWithCmd(Ljava/lang/String;Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setTboxPropertyInfo(ILjava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->queryTboxPropertyInfo(ILcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->requestTboxNetStatusInfo(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->requestTspRmtJobForTest(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IRmtJobListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IRmtJobListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unregisterRmtJobListener(Lcom/incall/serversdk/tbox/IRmtJobListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IRmtJobListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IRmtJobListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->registerRmtJobListener(ILcom/incall/serversdk/tbox/IRmtJobListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->noticeChangePreferredNetworkType(ILcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->noticeSetFlightMode(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->noticeConfApn(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->resetApnToDefaultConf(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxCertID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxICCID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxTUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/incall/serversdk/tbox/ITSManager;->startDiagnostic(Ljava/lang/String;Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getWansSingalCsq()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getWansSingalCops()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/incall/serversdk/tbox/ITSManager;->loadOutFileRequest(ILjava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lcom/incall/serversdk/tbox/ITSManager;->loadInFileRequest(ILjava/lang/String;Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendTboxRequstLogStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendTboxRequstUpLoadStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendTboxRequstCarStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendAudioStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendEcallStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendBcallStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendEcallBcallPlayCallAudio(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiParamStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiConnectNum(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendSetWifiPasswordStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiPassword(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendSetWifiSSIDStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiSSID(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiPowerStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->sendWifiChanelStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setTboxEnvironment(ILcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->sendCallToTbox(ILcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->requestTboxUpdata(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getHardWareVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxFirmPartNumb()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxSoftPartNumb()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxSoftVersion(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxFirmVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->sendATCommand(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->notityTboxLocation(ILcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiMacAdress(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->delectConnectedWifiList(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkConnectedWifiList(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->disconnectWifi(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object v7

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/incall/serversdk/tbox/ITSManager;->connectWifi(Ljava/lang/String;IILjava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->autoSearchConnect(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->refreshWifiList(ILcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiStationSwitch(ILcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->openCheckTbox(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiLinker(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiPassword(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setWifiPassword(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setWifiSSID(Ljava/lang/String;Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiSSID(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setWifiSwitch(ILcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkWifiState(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkIMEIcode(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/tbox/ITSManager;->setNetWorkChannel(ILcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/IResultInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/IResultInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->checkNetWorkChannelState(Lcom/incall/serversdk/tbox/IResultInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/tbox/ITSManager;->getTboxConnectStatus()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unregistTboxDiagnosticInfoListener(Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxDiagnosticInfoListener(Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxSingalListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxSingalListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistWanSingalListener(Lcom/incall/serversdk/tbox/ITboxSingalListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxSingalListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxSingalListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registWanSingalListener(Lcom/incall/serversdk/tbox/ITboxSingalListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxFileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxFileListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistTboxFileListener(Lcom/incall/serversdk/tbox/ITboxFileListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxFileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxFileListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxFileListener(Lcom/incall/serversdk/tbox/ITboxFileListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegisTboxInterNetDataChannelListener(Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxInterNetDataChannelListener(Lcom/incall/serversdk/tbox/ITboxInterNetDataChannel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxConnectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxConnectListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistTboxConnectListener(Lcom/incall/serversdk/tbox/ITboxConnectListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxConnectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxConnectListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registTboxConnectListener(Lcom/incall/serversdk/tbox/ITboxConnectListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ICallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ICallListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistCallListener(Lcom/incall/serversdk/tbox/ICallListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ICallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ICallListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registCallListener(Lcom/incall/serversdk/tbox/ICallListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxNotifyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxNotifyListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->unRegistNotifyListener(Lcom/incall/serversdk/tbox/ITboxNotifyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/tbox/ITboxNotifyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/tbox/ITboxNotifyListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/tbox/ITSManager;->registNotifyListener(Lcom/incall/serversdk/tbox/ITboxNotifyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
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
