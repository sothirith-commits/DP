.class public abstract Lcom/incall/serversdk/bluetooth/phone/IPhoneManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/phone/IPhoneManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.bluetooth.phone.IPhoneManager"

.field static final TRANSACTION_acceptCall:I = 0x2

.field static final TRANSACTION_connect:I = 0x22

.field static final TRANSACTION_dialCall:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x23

.field static final TRANSACTION_getCallLogs:I = 0x9

.field static final TRANSACTION_getCallLogsSyncState:I = 0x19

.field static final TRANSACTION_getContactByName:I = 0x10

.field static final TRANSACTION_getContactByNumber:I = 0xf

.field static final TRANSACTION_getContactSyncSwitch:I = 0x7

.field static final TRANSACTION_getContacts:I = 0xa

.field static final TRANSACTION_getContactsOffset:I = 0x35

.field static final TRANSACTION_getCurrentAgEvents:I = 0x16

.field static final TRANSACTION_getHfpConnectStatus:I = 0x11

.field static final TRANSACTION_getLocalPhoneNum:I = 0x17

.field static final TRANSACTION_getPhoneBooksSize:I = 0x36

.field static final TRANSACTION_getPhoneCallState:I = 0x34

.field static final TRANSACTION_getPhoneContactSyncState:I = 0x18

.field static final TRANSACTION_getPhoneID:I = 0x15

.field static final TRANSACTION_getPhoneLevel:I = 0x13

.field static final TRANSACTION_getPhoneLevelPercentage:I = 0x14

.field static final TRANSACTION_getPhoneSignal:I = 0x12

.field static final TRANSACTION_getPriority:I = 0x5

.field static final TRANSACTION_hangUpCall:I = 0x3

.field static final TRANSACTION_isAudioInHost:I = 0x1c

.field static final TRANSACTION_isCallLogSyncSuccess:I = 0x1e

.field static final TRANSACTION_isCalling:I = 0x1a

.field static final TRANSACTION_isContactSyncSuccess:I = 0x1f

.field static final TRANSACTION_isHfpConnected:I = 0x1b

.field static final TRANSACTION_isPhoneBookDownloading:I = 0x21

.field static final TRANSACTION_isPhoneCallLogDownloading:I = 0x20

.field static final TRANSACTION_reFreshCallLogs:I = 0xb

.field static final TRANSACTION_reFreshContacts:I = 0xc

.field static final TRANSACTION_registerAudioChannelChangeListener:I = 0x32

.field static final TRANSACTION_registerCallContactChangedListener:I = 0x30

.field static final TRANSACTION_registerCallLogChangedListener:I = 0x2e

.field static final TRANSACTION_registerCallLogStateChangedListener:I = 0x2c

.field static final TRANSACTION_registerCallStateListener:I = 0x24

.field static final TRANSACTION_registerHfpConnectedListener:I = 0x26

.field static final TRANSACTION_registerPhoneContactSyncStateListener:I = 0xd

.field static final TRANSACTION_registerPhoneLevelChangedListener:I = 0x2a

.field static final TRANSACTION_registerPhoneSignalChangedListener:I = 0x28

.field static final TRANSACTION_sendDTMF:I = 0x4

.field static final TRANSACTION_setAudioRoute:I = 0x1d

.field static final TRANSACTION_setContactSyncSwitch:I = 0x8

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_unregisterAudioChannelChangeListener:I = 0x33

.field static final TRANSACTION_unregisterCallContactChangedListener:I = 0x31

.field static final TRANSACTION_unregisterCallLogChangedListener:I = 0x2f

.field static final TRANSACTION_unregisterCallLogStateChangedListener:I = 0x2d

.field static final TRANSACTION_unregisterCallStateListener:I = 0x25

.field static final TRANSACTION_unregisterHfpConnectedListener:I = 0x27

.field static final TRANSACTION_unregisterPhoneContactSyncStateListener:I = 0xe

.field static final TRANSACTION_unregisterPhoneLevelChangedListener:I = 0x2b

.field static final TRANSACTION_unregisterPhoneSignalChangedListener:I = 0x29


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.bluetooth.phone.IPhoneManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.bluetooth.phone.IPhoneManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;

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

    const-string v1, "com.incall.serversdk.bluetooth.phone.IPhoneManager"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getPhoneBooksSize()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getContactsOffset(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getPhoneCallState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->unregisterAudioChannelChangeListener(Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->registerAudioChannelChangeListener(Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->unregisterCallContactChangedListener(Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->registerCallContactChangedListener(Lcom/incall/serversdk/bluetooth/phone/ICallContactChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->unregisterCallLogChangedListener(Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->registerCallLogChangedListener(Lcom/incall/serversdk/bluetooth/phone/ICallLogChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->unregisterCallLogStateChangedListener(Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->registerCallLogStateChangedListener(Lcom/incall/serversdk/bluetooth/phone/ICallLogStateChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->unregisterPhoneLevelChangedListener(Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->registerPhoneLevelChangedListener(Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->unregisterPhoneSignalChangedListener(Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->registerPhoneSignalChangedListener(Lcom/incall/serversdk/bluetooth/phone/IPhoneSignalChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->unregisterHfpConnectedListener(Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->registerHfpConnectedListener(Lcom/incall/serversdk/bluetooth/phone/IHfpConnectedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/ICallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/ICallStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->unregisterCallStateListener(Lcom/incall/serversdk/bluetooth/phone/ICallStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/ICallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/ICallStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->registerCallStateListener(Lcom/incall/serversdk/bluetooth/phone/ICallStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->disconnect(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->connect(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->isPhoneBookDownloading()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->isPhoneCallLogDownloading()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->isContactSyncSuccess()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->isCallLogSyncSuccess()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v2

    :cond_0
    invoke-interface {p0, v0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->setAudioRoute(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->isAudioInHost()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->isHfpConnected()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->isCalling()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getCallLogsSyncState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getPhoneContactSyncState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getCurrentAgEvents()Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v2}, Lcom/incall/serversdk/bluetooth/phone/PhonAGEventInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getPhoneID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getPhoneLevelPercentage()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getPhoneLevel()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getPhoneSignal()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getHfpConnectStatus()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getContactByName(Ljava/lang/String;)Lcom/incall/serversdk/bluetooth/phone/ContactInfo;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v2}, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getContactByNumber(Ljava/lang/String;)Lcom/incall/serversdk/bluetooth/phone/ContactInfo;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v2}, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v2

    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneContactSyncStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IPhoneContactSyncStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->unregisterPhoneContactSyncStateListener(Lcom/incall/serversdk/bluetooth/phone/IPhoneContactSyncStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneContactSyncStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/phone/IPhoneContactSyncStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->registerPhoneContactSyncStateListener(Lcom/incall/serversdk/bluetooth/phone/IPhoneContactSyncStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->reFreshContacts()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->reFreshCallLogs()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getContacts()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getCallLogs(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v2

    :cond_4
    invoke-interface {p0, v0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->setContactSyncSwitch(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getContactSyncSwitch()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->setPriority(Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->getPriority(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->sendDTMF(B)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->hangUpCall()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->acceptCall()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/IPhoneManager;->dialCall(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
