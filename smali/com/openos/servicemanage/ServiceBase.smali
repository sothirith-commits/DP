.class public abstract Lcom/openos/servicemanage/ServiceBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBinderService:Lcom/openos/settings/vehiclesettings/IVehicleSettingInterface;

.field public mBinderServiceName:Ljava/lang/String;

.field public mConnectionServiceMonitor:Lcom/openos/ConnectionServiceMonitor;

.field public mIsConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openos/servicemanage/ServiceBase;->mConnectionServiceMonitor:Lcom/openos/ConnectionServiceMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openos/servicemanage/ServiceBase;->mIsConnected:Z

    return-void
.end method


# virtual methods
.method public abstract connectService()V
.end method

.method public abstract getBinderService()Z
.end method

.method public isServiceConnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/openos/servicemanage/ServiceBase;->mIsConnected:Z

    return p0
.end method
