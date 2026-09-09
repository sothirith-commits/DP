.class public final Lcom/umeng/analytics/pro/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/au;


# instance fields
.field public b:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/az;->c:Z

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/az;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/umeng/analytics/pro/az;->c:Z

    if-nez v1, :cond_1

    new-instance v1, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-direct {v1}, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/pro/az;->b:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

    iput-object p1, v1, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    new-instance p1, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;

    invoke-direct {p1, v1}, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;-><init>(Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;)V

    iput-object p1, v1, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;->e:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "org.repackage.com.zui.deviceidservice"

    const-string v3, "org.repackage.com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    iget-object v1, v1, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;->e:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/az;->d:Z

    iput-boolean v3, p0, Lcom/umeng/analytics/pro/az;->c:Z

    :cond_1
    iget-boolean p1, p0, Lcom/umeng/analytics/pro/az;->d:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/umeng/analytics/pro/az;->b:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;->b:Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface;

    if-eqz p1, :cond_4

    check-cast p1, Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;

    invoke-virtual {p1}, Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;->c()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/umeng/analytics/pro/az;->b:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

    iget-object p1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    if-eqz p1, :cond_3

    :try_start_1
    iget-object p0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;->b:Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface;

    if-eqz p0, :cond_2

    check-cast p0, Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;

    invoke-virtual {p0}, Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    :cond_4
    return-object v0
.end method
