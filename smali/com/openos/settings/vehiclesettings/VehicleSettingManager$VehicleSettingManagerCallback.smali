.class public final Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;
.super Lcom/openos/settings/vehiclesettings/IVehicleSettingCallbackInterface$Stub;
.source "SourceFile"


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/IVehicleSettingCallbackInterface$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method
