.class public abstract Lcom/incall/serversdk/interactive/IDouInteractiveManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/interactive/IDouInteractiveManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/interactive/IDouInteractiveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/IDouInteractiveManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.interactive.IDouInteractiveManager"

.field static final TRANSACTION_registerAISmartCallback:I = 0x21

.field static final TRANSACTION_registerFileFinishCallback:I = 0x13

.field static final TRANSACTION_registerFileReceiveCallback:I = 0x2f

.field static final TRANSACTION_registerLogFileReceiveCallback:I = 0x11

.field static final TRANSACTION_registerMediaCallback:I = 0x28

.field static final TRANSACTION_registerNavigateCallback:I = 0x1d

.field static final TRANSACTION_registerPhoneCallback:I = 0x2d

.field static final TRANSACTION_registerThemeInfoCallback:I = 0xf

.field static final TRANSACTION_replyFileReceiveResult:I = 0xa

.field static final TRANSACTION_send360trigEvent:I = 0x4

.field static final TRANSACTION_sendAISmartResult:I = 0x20

.field static final TRANSACTION_sendAISmartStatus:I = 0x1f

.field static final TRANSACTION_sendCallHead:I = 0x2c

.field static final TRANSACTION_sendCallInfo:I = 0x2a

.field static final TRANSACTION_sendCallTime:I = 0x2b

.field static final TRANSACTION_sendContraNavigateEvent:I = 0x2

.field static final TRANSACTION_sendCustomKeyEvent:I = 0x5

.field static final TRANSACTION_sendGetLogEvent:I = 0x3

.field static final TRANSACTION_sendLVDSACKResponse:I = 0x8

.field static final TRANSACTION_sendLocationInfo:I = 0xd

.field static final TRANSACTION_sendLogACKResponse:I = 0x6

.field static final TRANSACTION_sendMediaAlbum:I = 0x27

.field static final TRANSACTION_sendMediaPlayTime:I = 0x26

.field static final TRANSACTION_sendMediaSource:I = 0x25

.field static final TRANSACTION_sendNavigateBackStatus:I = 0x31

.field static final TRANSACTION_sendNavigateCameraInfo:I = 0x1c

.field static final TRANSACTION_sendNavigateCrossRoad:I = 0x17

.field static final TRANSACTION_sendNavigateLaneInfo:I = 0x19

.field static final TRANSACTION_sendNavigatePercent:I = 0x32

.field static final TRANSACTION_sendNavigateRemainInfo:I = 0x1b

.field static final TRANSACTION_sendNavigateRoadInfo:I = 0x1a

.field static final TRANSACTION_sendNavigateStatus:I = 0x16

.field static final TRANSACTION_sendNavigateTurnInfo:I = 0x18

.field static final TRANSACTION_sendNextFileNotify:I = 0x9

.field static final TRANSACTION_sendScreenACKResponse:I = 0x7

.field static final TRANSACTION_sendSlidingEvent:I = 0x15

.field static final TRANSACTION_sendSwitchLVDSFinishEvent:I = 0x1

.field static final TRANSACTION_sendThemeFile:I = 0xc

.field static final TRANSACTION_sendThemeOperation:I = 0xb

.field static final TRANSACTION_sendVoiceResult:I = 0x24

.field static final TRANSACTION_sendVoiceStatus:I = 0x23

.field static final TRANSACTION_sendWeatherAndTimeInfo:I = 0xe

.field static final TRANSACTION_unRegisterAISmartCallback:I = 0x22

.field static final TRANSACTION_unRegisterFileFinishCallback:I = 0x14

.field static final TRANSACTION_unRegisterFileReceiveCallback:I = 0x30

.field static final TRANSACTION_unRegisterLogFileReceiveCallback:I = 0x12

.field static final TRANSACTION_unRegisterMediaCallback:I = 0x29

.field static final TRANSACTION_unRegisterNavigateCallback:I = 0x1e

.field static final TRANSACTION_unRegisterPhoneCallback:I = 0x2e

.field static final TRANSACTION_unRegisterThemeInfoCallback:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.interactive.IDouInteractiveManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/IDouInteractiveManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.interactive.IDouInteractiveManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/interactive/IDouInteractiveManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/interactive/IDouInteractiveManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/interactive/IDouInteractiveManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/interactive/IDouInteractiveManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/interactive/IDouInteractiveManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/interactive/IDouInteractiveManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/interactive/IDouInteractiveManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/interactive/IDouInteractiveManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/interactive/IDouInteractiveManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/interactive/IDouInteractiveManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/interactive/IDouInteractiveManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/interactive/IDouInteractiveManager;

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

    const-string v2, "com.incall.serversdk.interactive.IDouInteractiveManager"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNavigatePercent(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNavigateBackStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/IFileFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/IFileFinishCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->unRegisterFileReceiveCallback(Lcom/incall/serversdk/interactive/callback/IFileFinishCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/IFileFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/IFileFinishCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->registerFileReceiveCallback(Lcom/incall/serversdk/interactive/callback/IFileFinishCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/IPhoneCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->unRegisterPhoneCallback(Lcom/incall/serversdk/interactive/callback/IPhoneCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/IPhoneCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->registerPhoneCallback(Lcom/incall/serversdk/interactive/callback/IPhoneCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendCallHead(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendCallTime(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendCallInfo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/IMediaCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/IMediaCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->unRegisterMediaCallback(Lcom/incall/serversdk/interactive/callback/IMediaCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/IMediaCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/IMediaCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->registerMediaCallback(Lcom/incall/serversdk/interactive/callback/IMediaCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendMediaAlbum(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendMediaPlayTime(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendMediaSource(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendVoiceResult(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendVoiceStatus(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/IAISmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/IAISmartCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->unRegisterAISmartCallback(Lcom/incall/serversdk/interactive/callback/IAISmartCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/IAISmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/IAISmartCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->registerAISmartCallback(Lcom/incall/serversdk/interactive/callback/IAISmartCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendAISmartResult(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendAISmartStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/INavigateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/INavigateCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->unRegisterNavigateCallback(Lcom/incall/serversdk/interactive/callback/INavigateCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/callback/INavigateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/callback/INavigateCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->registerNavigateCallback(Lcom/incall/serversdk/interactive/callback/INavigateCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNavigateCameraInfo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNavigateRemainInfo(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNavigateRoadInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNavigateLaneInfo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNavigateTurnInfo(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNavigateCrossRoad(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNavigateStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendSlidingEvent(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->unRegisterFileFinishCallback(Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->registerFileFinishCallback(Lcom/incall/serversdk/interactive/file/IDouFileFinishCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->unRegisterLogFileReceiveCallback(Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->registerLogFileReceiveCallback(Lcom/incall/serversdk/interactive/file/IDouFileReceiveCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/theme/IDouThemeInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/theme/IDouThemeInfoCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->unRegisterThemeInfoCallback(Lcom/incall/serversdk/interactive/theme/IDouThemeInfoCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/interactive/theme/IDouThemeInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/interactive/theme/IDouThemeInfoCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->registerThemeInfoCallback(Lcom/incall/serversdk/interactive/theme/IDouThemeInfoCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendWeatherAndTimeInfo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendLocationInfo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, v0, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendThemeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendThemeOperation(ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->replyFileReceiveResult(Ljava/lang/String;II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendNextFileNotify(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendLVDSACKResponse(II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendScreenACKResponse(II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendLogACKResponse(II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendCustomKeyEvent(II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->send360trigEvent(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendGetLogEvent()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendContraNavigateEvent(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendSwitchLVDSFinishEvent(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
