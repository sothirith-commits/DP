.class public final Lcom/tinnove/comlib/virtual/HvacVirtualManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDS:[I

.field public static final object:Ljava/lang/Object;


# instance fields
.field public final mCurrentState:Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

.field public final mMapListeners:Landroid/util/ArrayMap;

.field public final mTempMaxValues:Ljava/util/HashMap;

.field public final mTempMinValues:Ljava/util/HashMap;

.field public final mUIHandler:Landroid/os/Handler;

.field public mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->object:Ljava/lang/Object;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x35400101
        0x35600105
        0x35400107
        0x35400109
        0x3540010a
        0x3540010f
        0x35400111
        0x33400103
        0x35400108
        0x35400102
        0x35400104
        0x31400201
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

    invoke-direct {v0}, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;-><init>()V

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mCurrentState:Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mMapListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mTempMaxValues:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mTempMinValues:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/tinnove/comlib/virtual/HvacVirtualManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final initTempMaxValue(I)V
    .locals 4

    iget-object v0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-virtual {v0}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getVirtualPropertyConfig()Lcom/openos/virtualcar/entity/VirtualPropertyConfig;

    move-result-object v0

    iget-object p0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mTempMaxValues:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/openos/virtualcar/entity/VirtualPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;->mMaxValue:Ljava/lang/Object;

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;->mMaxValue:Ljava/lang/Object;

    :goto_1
    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initTempMaxValue "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final initTempMinValue(I)V
    .locals 4

    iget-object v0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-virtual {v0}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->getVirtualPropertyConfig()Lcom/openos/virtualcar/entity/VirtualPropertyConfig;

    move-result-object v0

    iget-object p0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mTempMinValues:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/openos/virtualcar/entity/VirtualPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;->mMinValue:Ljava/lang/Object;

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/openos/virtualcar/entity/VirtualPropertyConfig$AreaConfig;->mMinValue:Ljava/lang/Object;

    :goto_1
    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initTempMinValue "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final initVritualCarManager()V
    .locals 3

    new-instance v0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-static {}, Lcom/tinnove/comlib/BaseApp;->getApp()Landroid/app/Application;

    invoke-direct {v0}, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    iget-object v1, v0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mCarInitListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mCarInitListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mCarInitListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mIsCarInitSuccess:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->onCarInitSuccess()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCarInitSuccess()V
    .locals 3

    const-string v0, "HvacManager"

    const-string v1, "onCarInitSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mVirtualCarManager:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    sget-object v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->IDS:[I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-eqz p0, :cond_0

    new-instance v1, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->register([ILcom/openos/virtualcar/VirtualCarPropertyCallBack;)V
    :try_end_0
    .catch Lcom/openos/virtualcar/exception/VirtualCarException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "register failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VirtualCarManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
