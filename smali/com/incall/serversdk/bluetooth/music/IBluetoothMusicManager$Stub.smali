.class public abstract Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.bluetooth.music.IBluetoothMusicManager"

.field static final TRANSACTION_getA2dpConnectState:I = 0x1

.field static final TRANSACTION_getAvrcpConnectState:I = 0x3

.field static final TRANSACTION_isA2dpConnected:I = 0x2

.field static final TRANSACTION_isA2dpPlaying:I = 0x5

.field static final TRANSACTION_isAvrcpConnected:I = 0x4

.field static final TRANSACTION_next:I = 0xb

.field static final TRANSACTION_pause:I = 0x9

.field static final TRANSACTION_play:I = 0x8

.field static final TRANSACTION_prev:I = 0xc

.field static final TRANSACTION_registerMusicListener:I = 0x6

.field static final TRANSACTION_setBtMusicMute:I = 0xd

.field static final TRANSACTION_stop:I = 0xa

.field static final TRANSACTION_unregisterMusicListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.bluetooth.music.IBluetoothMusicManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.bluetooth.music.IBluetoothMusicManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;

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

    const-string v1, "com.incall.serversdk.bluetooth.music.IBluetoothMusicManager"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->setBtMusicMute(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->prev()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->next()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->stop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->pause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->play()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->unregisterMusicListener(Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->registerMusicListener(Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->isA2dpPlaying()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->isAvrcpConnected()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->getAvrcpConnectState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->isA2dpConnected()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicManager;->getA2dpConnectState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
