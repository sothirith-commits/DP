.class public final Lcom/deepalhome/tuotuotie/BleConnection$handleAuthResponse$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$handleAuthResponse$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x4

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    const-string v1, "currentGatt"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$handleAuthResponse$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget-object v1, Lcom/deepalhome/tuotuotie/BleProtocol;->INSTANCE:Lcom/deepalhome/tuotuotie/BleProtocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p0, p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->writeCharacteristic(Landroid/bluetooth/BluetoothGatt;[B)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :array_0
    .array-data 1
        0x4t
        0x3t
        0x1t
        0x0t
    .end array-data
.end method
