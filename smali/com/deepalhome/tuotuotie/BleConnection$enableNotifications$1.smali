.class public final Lcom/deepalhome/tuotuotie/BleConnection$enableNotifications$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$enableNotifications$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleConnection$enableNotifications$1;->$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    const-string v0, "currentGatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$enableNotifications$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$enableNotifications$1;->$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    const-string v1, "$descriptor"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v2, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "writeDescriptor"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectPermissionDenied(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/deepalhome/tuotuotie/BleConnection;->runNextGattOperation(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0, v2, p0}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V

    invoke-virtual {v0, p1}, Lcom/deepalhome/tuotuotie/BleConnection;->runNextGattOperation(Landroid/bluetooth/BluetoothGatt;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
