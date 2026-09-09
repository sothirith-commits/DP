.class public final Lcom/deepalhome/launcher/util/BleDebugLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/BleDebugLogger;

.field public static final delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/deepalhome/launcher/util/BleDebugLogger;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/BleDebugLogger;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/BleDebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/BleDebugLogger;

    new-instance v0, Lcom/deepalhome/launcher/util/FileDebugLogger;

    new-instance v1, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    const-string v4, "BtGatt"

    const-string v5, "ScanManager"

    const-string v2, "BluetoothGatt"

    const-string v3, "BluetoothLeScanner"

    const-string v6, "BluetoothManagerService"

    const-string v7, "AdapterService"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;I)V

    const-string v2, "ble_debug.log"

    const-string v3, "ble_debug_logger_prefs"

    const-string v4, "BleDebugLogger"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/deepalhome/launcher/util/FileDebugLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;)V

    sput-object v0, Lcom/deepalhome/launcher/util/BleDebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
