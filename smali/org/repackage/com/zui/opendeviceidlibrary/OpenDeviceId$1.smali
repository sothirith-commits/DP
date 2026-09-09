.class public final Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;


# direct methods
.method public constructor <init>(Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;->a:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;->a:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

    sget v0, Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface$Stub;->$r8$clinit:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "org.repackage.com.zui.deviceidservice.IDeviceidInterface"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;->a:Landroid/os/IBinder;

    move-object p2, v0

    :goto_0
    iput-object p2, p1, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;->b:Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface;

    iget-object p1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;->a:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;->a:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId$1;->a:Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/OpenDeviceId;->b:Lorg/repackage/com/zui/deviceidservice/IDeviceidInterface;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
