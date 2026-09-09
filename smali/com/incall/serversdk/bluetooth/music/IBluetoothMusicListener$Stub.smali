.class public abstract Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.bluetooth.music.IBluetoothMusicListener"

.field static final TRANSACTION_onBluetoothA2DPConnectStatusChanged:I = 0x5

.field static final TRANSACTION_onBluetoothA2dpStateChanage:I = 0x6

.field static final TRANSACTION_onBluetoothAvrcpPositionChanged:I = 0x2

.field static final TRANSACTION_onBluetoothAvrcpStateChanage:I = 0x7

.field static final TRANSACTION_onBluetoothMediaInfoChanged:I = 0x4

.field static final TRANSACTION_onBluetoothMusicStart:I = 0x1

.field static final TRANSACTION_onBluetoothMusicStop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.bluetooth.music.IBluetoothMusicListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.bluetooth.music.IBluetoothMusicListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

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

    const-string v2, "com.incall.serversdk.bluetooth.music.IBluetoothMusicListener"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothAvrcpStateChanage(II)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothA2dpStateChanage(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothA2DPConnectStatusChanged(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothMediaInfoChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothMusicStop()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothAvrcpPositionChanged(J)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothMusicStart()V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
