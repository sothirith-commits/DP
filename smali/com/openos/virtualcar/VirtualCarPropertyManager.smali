.class public final Lcom/openos/virtualcar/VirtualCarPropertyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCallBacks:Landroid/util/SparseArray;

.field public final mConsumedMap:Ljava/util/HashMap;

.field public final mEventHandle:Lcom/openos/virtualcar/VirtualCarPropertyManager$1;

.field public final mPriorityMap:Ljava/util/HashMap;

.field public mService:Lcom/openos/virtualcar/IVirturalCarProperty;

.field public mVirtualCarListenerToService:Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mPriorityMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mConsumedMap:Ljava/util/HashMap;

    sget v0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub;->$r8$clinit:I

    const-string v0, "com.openos.virtualcar.IVirturalCarProperty"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/openos/virtualcar/IVirturalCarProperty;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/openos/virtualcar/IVirturalCarProperty;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_1
    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    new-instance p1, Lcom/openos/virtualcar/VirtualCarPropertyManager$1;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/openos/virtualcar/VirtualCarPropertyManager$1;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mEventHandle:Lcom/openos/virtualcar/VirtualCarPropertyManager$1;

    return-void
.end method


# virtual methods
.method public final getValue(II)Ljava/lang/Object;
    .locals 7

    const-string v0, "VirtualManager"

    const-string v1, " "

    const-string v2, "  area=0x"

    const-string v3, "C_VCarGetValue: ID=0x"

    const-string v4, "getValue return error:id=0x"

    :try_start_0
    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    check-cast p0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->getValue(II)Lcom/openos/virtualcar/entity/VirtualCarValue;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v5, p0, Lcom/openos/virtualcar/entity/VirtualCarValue;->mCode:I

    if-nez v5, :cond_1

    :try_start_1
    iget-object p0, p0, Lcom/openos/virtualcar/entity/VirtualCarValue;->mValue:Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Lcom/openos/virtualcar/exception/VirtualCarException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " area = 0x"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-static {v3}, Lcom/openos/virtualcar/utils/a;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "-2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/openos/virtualcar/exception/VirtualCarException;

    const/4 p2, 0x0

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance p1, Lcom/openos/virtualcar/exception/VirtualCarException;

    invoke-direct {p1, p0}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :goto_2
    invoke-static {v3}, Lcom/openos/virtualcar/utils/a;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/openos/virtualcar/exception/VirtualCarException;

    const/16 p1, -0xd2

    const-string p2, "virtual service disconnect"

    invoke-direct {p0, p1, p2}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final isSupport()Z
    .locals 6

    const-string v0, "VirtualManager"

    const-string v1, " "

    const-string v2, "  area=0x"

    const-string v3, "isSupport:id=0x"

    const v4, 0x35600105

    const/4 v5, 0x4

    :try_start_0
    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    check-cast p0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    invoke-virtual {p0, v4, v5}, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->isSupport(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {v3}, Lcom/openos/virtualcar/utils/a;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/openos/virtualcar/exception/VirtualCarException;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/openos/virtualcar/exception/VirtualCarException;

    invoke-direct {v0, p0}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    invoke-static {v3}, Lcom/openos/virtualcar/utils/a;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/openos/virtualcar/exception/VirtualCarException;

    const/16 v0, -0xcd

    const-string v1, "virtual service disconnect"

    invoke-direct {p0, v0, v1}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final register([ILcom/openos/virtualcar/VirtualCarPropertyCallBack;)V
    .locals 5

    const-string v0, "VirtualManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C_VCarRegister:-->  callback:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openos/virtualcar/utils/WTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mVirtualCarListenerToService:Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;

    invoke-direct {v1, p0, p0}, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;-><init>(Lcom/openos/virtualcar/VirtualCarPropertyManager;Lcom/openos/virtualcar/VirtualCarPropertyManager;)V

    iput-object v1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mVirtualCarListenerToService:Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    iget-object v3, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mVirtualCarListenerToService:Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;

    check-cast p2, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    invoke-virtual {p2, p1, p0}, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->register([ILcom/openos/virtualcar/IVirtualCarPropertyEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_3
    new-instance p1, Lcom/openos/virtualcar/exception/VirtualCarException;

    invoke-direct {p1, p0}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setValue(IILjava/lang/Number;)V
    .locals 6

    const-string v0, "  area=0x"

    const-string v1, " "

    const-string v2, "VirtualManager"

    const-string v3, "C_VCarSetValue: ID=0x"

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " area = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/openos/virtualcar/utils/WTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    new-instance v4, Lcom/openos/virtualcar/entity/VirtualCarValue;

    invoke-direct {v4, p1, p2, p3}, Lcom/openos/virtualcar/entity/VirtualCarValue;-><init>(IILjava/lang/Number;)V

    check-cast p0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    invoke-virtual {p0, v4}, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->setValue(Lcom/openos/virtualcar/entity/VirtualCarValue;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_3

    :goto_0
    invoke-static {v3}, Lcom/openos/virtualcar/utils/a;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/openos/virtualcar/exception/VirtualCarException;

    invoke-direct {p1, p0}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :goto_1
    invoke-static {v3}, Lcom/openos/virtualcar/utils/a;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "-2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Lcom/openos/virtualcar/exception/VirtualCarException;

    const/4 p2, 0x0

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_2
    new-instance p1, Lcom/openos/virtualcar/exception/VirtualCarException;

    invoke-direct {p1, p0}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :goto_3
    invoke-static {v3}, Lcom/openos/virtualcar/utils/a;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",area="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/openos/virtualcar/exception/VirtualCarException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(Ljava/lang/String;Landroid/os/RemoteException;)V

    throw p1
.end method

.method public final unRegister([ILcom/openos/virtualcar/VirtualCarPropertyCallBack;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "C_VCarUnRegister:<-- callBack:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualManager"

    invoke-static {v1, v0}, Lcom/openos/virtualcar/utils/WTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    iget-object v5, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_0

    invoke-interface {v5, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mVirtualCarListenerToService:Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;

    check-cast p2, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    invoke-virtual {p2, p1, p0}, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->unRegister([ILcom/openos/virtualcar/IVirtualCarPropertyEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/openos/virtualcar/exception/VirtualCarException;

    invoke-direct {p1, p0}, Lcom/openos/virtualcar/exception/VirtualCarException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final declared-synchronized virtualCarServiceReConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "virtualCarServiceReConnected():  "

    monitor-enter p0

    :try_start_0
    const-string v1, "VirtualManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/openos/virtualcar/utils/WTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub;->$r8$clinit:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    const-string v0, "com.openos.virtualcar.IVirturalCarProperty"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/openos/virtualcar/IVirturalCarProperty;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast v0, Lcom/openos/virtualcar/IVirturalCarProperty;

    :goto_0
    move-object p1, v0

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    goto :goto_0

    :goto_2
    iput-object p1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    iget-object p1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mCallBacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    aput v1, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mVirtualCarListenerToService:Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;

    check-cast v0, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    invoke-virtual {v0, p1, v1}, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->register([ILcom/openos/virtualcar/IVirtualCarPropertyEventListener;)V

    iget-object p1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mService:Lcom/openos/virtualcar/IVirturalCarProperty;

    iget-object v0, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mPriorityMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mConsumedMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager;->mVirtualCarListenerToService:Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;

    check-cast p1, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;

    invoke-virtual {p1, v0, v1, v2}, Lcom/openos/virtualcar/IVirturalCarProperty$Stub$Proxy;->reportConcern(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/openos/virtualcar/IVirtualCarPropertyEventListener;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method
