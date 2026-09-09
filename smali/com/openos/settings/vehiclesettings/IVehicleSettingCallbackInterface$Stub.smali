.class public abstract Lcom/openos/settings/vehiclesettings/IVehicleSettingCallbackInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/openos/settings/vehiclesettings/IVehicleSettingCallbackInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.openos.settings.vehiclesettings.IVehicleSettingCallbackInterface"

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

    const/4 v1, 0x1

    const-string v2, "com.openos.settings.vehiclesettings.IVehicleSettingCallbackInterface"

    if-ne p1, v0, :cond_0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0xe

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0xe

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x18

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0xe

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x18

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x17

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x17

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x1a

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x18

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x1a

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x17

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x1d

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x1b

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x1b

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x1c

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;

    const/16 p2, 0x1c

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;

    const/16 p2, 0x1d

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    iget-object p0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$6;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
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
