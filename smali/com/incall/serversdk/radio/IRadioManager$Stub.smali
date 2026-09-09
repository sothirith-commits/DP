.class public abstract Lcom/incall/serversdk/radio/IRadioManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/radio/IRadioManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/radio/IRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/radio/IRadioManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.radio.IRadioManager"

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_cancle:I = 0x12

.field static final TRANSACTION_close:I = 0x4

.field static final TRANSACTION_getBand:I = 0x5

.field static final TRANSACTION_getFrequency:I = 0x6

.field static final TRANSACTION_getFrequencyList:I = 0x7

.field static final TRANSACTION_getPlayStatus:I = 0x13

.field static final TRANSACTION_isScanning:I = 0x8

.field static final TRANSACTION_nextTune:I = 0xa

.field static final TRANSACTION_openRadio:I = 0x9

.field static final TRANSACTION_prevTune:I = 0xb

.field static final TRANSACTION_registerRadioListener:I = 0x2

.field static final TRANSACTION_scanChannel:I = 0xd

.field static final TRANSACTION_searchChannels:I = 0xc

.field static final TRANSACTION_setFrequency:I = 0xf

.field static final TRANSACTION_start:I = 0x10

.field static final TRANSACTION_stop:I = 0x11

.field static final TRANSACTION_switchBand:I = 0xe

.field static final TRANSACTION_unregisterRadioListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.radio.IRadioManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/radio/IRadioManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.radio.IRadioManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/radio/IRadioManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/radio/IRadioManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/radio/IRadioManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/radio/IRadioManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/radio/IRadioManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/radio/IRadioManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/radio/IRadioManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/radio/IRadioManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/radio/IRadioManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/radio/IRadioManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/radio/IRadioManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/radio/IRadioManager;

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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v9, p3

    const v3, 0x5f4e5446

    const-string v4, "com.incall.serversdk.radio.IRadioManager"

    const/4 v10, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->getPlayStatus()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->cancle()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->stop()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->start()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_4
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/incall/serversdk/radio/IRadioManager;->setFrequency(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_5
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/incall/serversdk/radio/IRadioManager;->switchBand(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_6
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v3, v10

    :cond_0
    invoke-interface {p0, v3}, Lcom/incall/serversdk/radio/IRadioManager;->scanChannel(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_7
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->searchChannels()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->prevTune()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_9
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->nextTune()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_a
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->openRadio()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_b
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->isScanning()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_c
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->getFrequencyList()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v10

    :pswitch_d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->getFrequency()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->getBand()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/radio/IRadioManager;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_10
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/incall/serversdk/radio/IRadioListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/radio/IRadioListener;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/incall/serversdk/radio/IRadioManager;->unregisterRadioListener(Lcom/incall/serversdk/radio/IRadioListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_11
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/incall/serversdk/radio/IRadioListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/radio/IRadioListener;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/incall/serversdk/radio/IRadioManager;->registerRadioListener(Lcom/incall/serversdk/radio/IRadioListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_12
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v10

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-wide v2, v4

    move v4, v6

    move v5, v7

    move-wide v6, v11

    invoke-interface/range {v0 .. v8}, Lcom/incall/serversdk/radio/IRadioManager;->basicTypes(IJZFDLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_2
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    nop

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
