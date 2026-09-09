.class public abstract Lcom/openos/ConnectionServiceBase;
.super Lcom/openos/servicemanage/ServiceBase;
.source "SourceFile"


# instance fields
.field public mDeathRecipient:Lcom/openos/ConnectionServiceBase$1;


# virtual methods
.method public final connectService()V
    .locals 3

    invoke-virtual {p0}, Lcom/openos/servicemanage/ServiceBase;->getBinderService()Z

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;

    const-string v0, "serviceReConnected() start ==="

    const-string v1, "vehicle-setting: VehicleSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "checkCallBack()==="

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/openos/servicemanage/ServiceBase;->mBinderService:Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->mCallBack:Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface$Stub$Proxy;

    invoke-virtual {v0, v2}, Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface$Stub$Proxy;->unregisterCallback(Lcom/openos/settings/vehiclesettings/IVehicleSettingCallbackInterface;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->mCallBack:Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->mCallBack:Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/openos/servicemanage/ServiceBase;->mBinderService:Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface;

    if-nez v0, :cond_2

    const-string v0, "checkCallBack()===once agin!!! "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, "checkCallBack()===registerCallback()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    invoke-direct {v0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;-><init>()V

    iput-object v0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->mCallBack:Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    :try_start_1
    iget-object v2, p0, Lcom/openos/servicemanage/ServiceBase;->mBinderService:Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface;

    check-cast v2, Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface$Stub$Proxy;

    invoke-virtual {v2, v0}, Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface$Stub$Proxy;->registerCallback(Lcom/openos/settings/vehiclesettings/IVehicleSettingCallbackInterface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/openos/servicemanage/ServiceBase;->mBinderService:Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface;

    if-nez p0, :cond_4

    const-string p0, "connectAiService() mBinderService == null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :try_start_2
    check-cast p0, Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface$Stub$Proxy;

    invoke-virtual {p0}, Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface$Stub$Proxy;->connectAiService()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    const-string v0, "mBinderService.connectAiService()"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const-string p0, "serviceReConnected() end ==="

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isServiceConnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/openos/servicemanage/ServiceBase;->mIsConnected:Z

    return p0
.end method

.method public final serviceBinderDied()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openos/servicemanage/ServiceBase;->mBinderService:Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openos/servicemanage/ServiceBase;->mIsConnected:Z

    move-object v1, p0

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;

    iput-object v0, v1, Lcom/openos/servicemanage/ServiceBase;->mBinderService:Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface;

    iput-object v0, v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->mCallBack:Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback;

    const-string v0, "vehicle-setting: VehicleSettingManager"

    const-string v1, "binderservice died by serviceDied!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/openos/servicemanage/ServiceBase;->mConnectionServiceMonitor:Lcom/openos/ConnectionServiceMonitor;

    iget-object p0, p0, Lcom/openos/servicemanage/ServiceBase;->mBinderServiceName:Ljava/lang/String;

    iget-object v1, v0, Lcom/openos/ConnectionServiceMonitor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, v0, Lcom/openos/ConnectionServiceMonitor;->mServices:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/openos/servicemanage/ServiceBase;

    if-eqz p0, :cond_0

    iget-object v2, v0, Lcom/openos/ConnectionServiceMonitor;->mServiceNeedConnected:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/openos/ConnectionServiceMonitor;->mServiceNeedConnected:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
