.class public abstract Lcom/incall/serversdk/power/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/power/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/power/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/power/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.power.IPowerManager"

.field static final TRANSACTION_getAccState:I = 0x8

.field static final TRANSACTION_getCurSreenSignal:I = 0x6

.field static final TRANSACTION_isLongPressPower:I = 0x9

.field static final TRANSACTION_reboot:I = 0xb

.field static final TRANSACTION_registerPowerListener:I = 0x1

.field static final TRANSACTION_registerScreenSateListener:I = 0x3

.field static final TRANSACTION_setEssentialTaskState:I = 0xa

.field static final TRANSACTION_setScreenSignal:I = 0x5

.field static final TRANSACTION_setWorkingCompleted:I = 0x7

.field static final TRANSACTION_unregisterPowerListener:I = 0x2

.field static final TRANSACTION_unregisterScreenSateListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.power.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/power/IPowerManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.power.IPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/power/IPowerManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/power/IPowerManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/power/IPowerManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/power/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/power/IPowerManager;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/power/IPowerManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/power/IPowerManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/power/IPowerManager;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/power/IPowerManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/power/IPowerManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/power/IPowerManager$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/power/IPowerManager;

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

    const-string v2, "com.incall.serversdk.power.IPowerManager"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/power/IPowerManager;->reboot(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/power/IPowerManager;->setEssentialTaskState(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/power/IPowerManager;->isLongPressPower()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/power/IPowerManager;->getAccState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/power/IPowerManager;->setWorkingCompleted(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/incall/serversdk/power/IPowerManager;->getCurSreenSignal()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/power/IPowerManager;->setScreenSignal(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/power/IScreenStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/power/IScreenStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/power/IPowerManager;->unregisterScreenSateListener(Lcom/incall/serversdk/power/IScreenStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/power/IScreenStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/power/IScreenStateListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/power/IPowerManager;->registerScreenSateListener(Lcom/incall/serversdk/power/IScreenStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/power/IPowerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/power/IPowerListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/power/IPowerManager;->unregisterPowerListener(Lcom/incall/serversdk/power/IPowerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/power/IPowerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/power/IPowerListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/power/IPowerManager;->registerPowerListener(Lcom/incall/serversdk/power/IPowerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
