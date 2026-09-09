.class public abstract Lm8/IPCSkillDispatcher$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lm8/IPCSkillDispatcher;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tinnove.navi.skill.IPCSkillDispatcher"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const-string v1, "com.tinnove.navi.skill.IPCSkillDispatcher"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    :cond_1
    invoke-interface {p0}, Lm8/IPCSkillDispatcher;->bindSurface()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "com.tinnove.navi.skill.observer.IPCShowPoiObserver"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of p2, p1, Ln8/IPCShowPoiObserver;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    check-cast p1, Ln8/IPCShowPoiObserver;

    :cond_5
    :goto_1
    invoke-interface {p0}, Lm8/IPCSkillDispatcher;->showPoi()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const-string p2, "com.tinnove.navi.skill.observer.IPCSearchResponseObserver"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_8

    instance-of p2, p1, Ln8/IPCSearchResponseObserver;

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    check-cast p1, Ln8/IPCSearchResponseObserver;

    :cond_8
    :goto_2
    invoke-interface {p0}, Lm8/IPCSkillDispatcher;->search()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const-string p2, "com.tinnove.navi.skill.observer.IPCCalculationRouteObserver"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_b

    instance-of p2, p1, Ln8/IPCCalculationRouteObserver;

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    check-cast p1, Ln8/IPCCalculationRouteObserver;

    :cond_b
    :goto_3
    invoke-interface {p0}, Lm8/IPCSkillDispatcher;->calculateRoute()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const-string p2, "com.tinnove.navi.skill.observer.IPCNavigationObserver"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_e

    instance-of p2, p1, Ln8/IPCNavigationObserver;

    if-nez p2, :cond_d

    goto :goto_4

    :cond_d
    check-cast p1, Ln8/IPCNavigationObserver;

    :cond_e
    :goto_4
    invoke-interface {p0}, Lm8/IPCSkillDispatcher;->startNavigation()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    const-string p2, "com.tinnove.navi.skill.observer.IPCResultObserver"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_11

    instance-of p2, p1, Ln8/IPCResultObserver;

    if-nez p2, :cond_10

    goto :goto_5

    :cond_10
    check-cast p1, Ln8/IPCResultObserver;

    :cond_11
    :goto_5
    invoke-interface {p0}, Lm8/IPCSkillDispatcher;->sendResultRequest()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_12

    goto :goto_8

    :cond_12
    const-string p3, "com.tinnove.navi.skill.observer.IPCResponseObserver"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_14

    instance-of p4, p3, Ln8/IPCResponseObserver;

    if-nez p4, :cond_13

    goto :goto_7

    :cond_13
    check-cast p3, Ln8/IPCResponseObserver;

    :goto_6
    move-object v0, p3

    goto :goto_8

    :cond_14
    :goto_7
    new-instance p3, Ln8/IPCResponseObserver$Stub$Proxy;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p2, p3, Ln8/IPCResponseObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    goto :goto_6

    :goto_8
    invoke-interface {p0, p1, v0}, Lm8/IPCSkillDispatcher;->sendRequest(Ljava/lang/String;Ln8/IPCResponseObserver;)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lm8/IPCSkillDispatcher;->queryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-interface {p0}, Lm8/IPCSkillDispatcher;->executeCommand()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
