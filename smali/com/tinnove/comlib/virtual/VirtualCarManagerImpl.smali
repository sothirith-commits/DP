.class public final Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCarInitListeners:Ljava/util/ArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCarInitSuccess:Z

.field public mPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

.field public mVirtualCar:Lcom/openos/virtualcar/VirtualCar;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mCarInitListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl$1;-><init>(Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;)V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/openos/ConnectionServiceMonitor$2;

    const-string v2, "VirtualCarBg"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/openos/ConnectionServiceMonitor$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/analytics/pro/ah;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/openos/virtualcar/VirtualCar;->createVirtualCar(Lcom/openos/virtualcar/VirtualServiceReadyListener;Landroid/os/Handler;)Lcom/openos/virtualcar/VirtualCar;

    move-result-object v0

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mVirtualCar:Lcom/openos/virtualcar/VirtualCar;

    return-void
.end method


# virtual methods
.method public final getValue(II)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->getValue(II)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/openos/virtualcar/exception/VirtualCarException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getValue error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VirtualCarManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getVirtualPropertyConfig()Lcom/openos/virtualcar/entity/VirtualPropertyConfig;
    .locals 3

    iget-object p0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    check-cast p0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    const v1, 0x35600105

    invoke-virtual {p0, v1}, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->getPropertyConfig(I)Lcom/openos/virtualcar/entity/VirtualPropertyConfig;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/openos/virtualcar/exception/VirtualCarException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/openos/virtualcar/exception/VirtualCarException;

    invoke-direct {v1, p0}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_1
    .catch Lcom/openos/virtualcar/exception/VirtualCarException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVirtualPropertyConfig error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VirtualCarManagerImpl"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
