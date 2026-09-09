.class public final Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $authRequest:[B

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;[B)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1$1;->$authRequest:[B

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    const-string v0, "currentGatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1$1;->$authRequest:[B

    sget v1, Lcom/deepalhome/tuotuotie/BleConnection;->$r8$clinit:I

    invoke-virtual {v0, p1, p0}, Lcom/deepalhome/tuotuotie/BleConnection;->writeCharacteristic(Landroid/bluetooth/BluetoothGatt;[B)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
