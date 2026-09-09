.class public abstract Lcom/incall/serversdk/radio/IRadioListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/radio/IRadioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/radio/IRadioListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/radio/IRadioListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.radio.IRadioListener"

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_onBandChanged:I = 0x2

.field static final TRANSACTION_onFrequencyChanged:I = 0x3

.field static final TRANSACTION_onRadioStateChanged:I = 0x5

.field static final TRANSACTION_onScaningFrequency:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.radio.IRadioListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/radio/IRadioListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.radio.IRadioListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/radio/IRadioListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/radio/IRadioListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/radio/IRadioListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/radio/IRadioListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/radio/IRadioListener;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/radio/IRadioListener$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/radio/IRadioListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/radio/IRadioListener;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/radio/IRadioListener$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/radio/IRadioListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/radio/IRadioListener$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/radio/IRadioListener;

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const v3, 0x5f4e5446

    const-string v4, "com.incall.serversdk.radio.IRadioListener"

    const/4 v9, 0x1

    if-eq v1, v3, :cond_7

    const/4 v3, 0x0

    if-eq v1, v9, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p0, v1, v2}, Lcom/incall/serversdk/radio/IRadioListener;->onRadioStateChanged(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v3, v9

    :cond_2
    invoke-interface {p0, v1, v3}, Lcom/incall/serversdk/radio/IRadioListener;->onScaningFrequency(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/incall/serversdk/radio/IRadioListener;->onFrequencyChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_4
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p0, v1, v2}, Lcom/incall/serversdk/radio/IRadioListener;->onBandChanged(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_5
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v9

    goto :goto_0

    :cond_6
    move v6, v3

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-wide v2, v4

    move v4, v6

    move v5, v7

    move-wide v6, v10

    invoke-interface/range {v0 .. v8}, Lcom/incall/serversdk/radio/IRadioListener;->basicTypes(IJZFDLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_7
    move-object v0, p3

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9
.end method
