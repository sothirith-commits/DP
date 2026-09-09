.class public final Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $address:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$1;->$address:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v0, "newState"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$1;->$address:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->updateConnectionState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
