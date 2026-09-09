.class public final synthetic Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    iput p6, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$1;->$r8$classId:I

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/deepalhome/tuotuotie/BlePairingState;

    check-cast p2, Lcom/deepalhome/mitemp/MiTempPairingState;

    check-cast p3, Lkotlin/coroutines/Continuation;

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/settings/BlePairingPresentationResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "deepalState"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "miTempState"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lcom/deepalhome/tuotuotie/BlePairingState$Success;

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/deepalhome/launcher/settings/BlePairingPresentation;

    sget-object p2, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->SUCCESS:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    check-cast p1, Lcom/deepalhome/tuotuotie/BlePairingState$Success;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BlePairingState$Success;->device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/deepalhome/launcher/settings/BlePairingPresentation;-><init>(Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_0
    instance-of p0, p2, Lcom/deepalhome/mitemp/MiTempPairingState$Success;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/deepalhome/launcher/settings/BlePairingPresentation;

    sget-object p1, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->SUCCESS:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    sget-object v1, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    check-cast p2, Lcom/deepalhome/mitemp/MiTempPairingState$Success;

    iget-object p2, p2, Lcom/deepalhome/mitemp/MiTempPairingState$Success;->device:Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object p2, p2, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/deepalhome/launcher/settings/BlePairingPresentation;-><init>(Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1
    instance-of p0, p1, Lcom/deepalhome/tuotuotie/BlePairingState$Authenticating;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/deepalhome/launcher/settings/BlePairingPresentation;

    sget-object p2, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->AUTHENTICATING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    check-cast p1, Lcom/deepalhome/tuotuotie/BlePairingState$Authenticating;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BlePairingState$Authenticating;->device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/deepalhome/launcher/settings/BlePairingPresentation;-><init>(Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_2
    instance-of p0, p2, Lcom/deepalhome/mitemp/MiTempPairingState$Preparing;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/deepalhome/launcher/settings/BlePairingPresentation;

    sget-object p1, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->PREPARING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    sget-object v1, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    check-cast p2, Lcom/deepalhome/mitemp/MiTempPairingState$Preparing;

    iget-object p2, p2, Lcom/deepalhome/mitemp/MiTempPairingState$Preparing;->device:Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object p2, p2, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/deepalhome/launcher/settings/BlePairingPresentation;-><init>(Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_3
    instance-of p0, p1, Lcom/deepalhome/tuotuotie/BlePairingState$Connecting;

    if-eqz p0, :cond_4

    new-instance p0, Lcom/deepalhome/launcher/settings/BlePairingPresentation;

    sget-object p2, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->CONNECTING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    check-cast p1, Lcom/deepalhome/tuotuotie/BlePairingState$Connecting;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BlePairingState$Connecting;->device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/deepalhome/launcher/settings/BlePairingPresentation;-><init>(Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    instance-of p0, p2, Lcom/deepalhome/mitemp/MiTempPairingState$Connecting;

    if-eqz p0, :cond_5

    new-instance p0, Lcom/deepalhome/launcher/settings/BlePairingPresentation;

    sget-object p1, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->CONNECTING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    sget-object v1, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    check-cast p2, Lcom/deepalhome/mitemp/MiTempPairingState$Connecting;

    iget-object p2, p2, Lcom/deepalhome/mitemp/MiTempPairingState$Connecting;->device:Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object p2, p2, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/deepalhome/launcher/settings/BlePairingPresentation;-><init>(Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    instance-of p0, p1, Lcom/deepalhome/tuotuotie/BlePairingState$Failed;

    if-eqz p0, :cond_8

    instance-of p0, p2, Lcom/deepalhome/mitemp/MiTempPairingState$Failed;

    if-eqz p0, :cond_8

    new-instance p0, Lcom/deepalhome/launcher/settings/BlePairingPresentation;

    sget-object p3, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->FAILED:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    check-cast p1, Lcom/deepalhome/tuotuotie/BlePairingState$Failed;

    check-cast p2, Lcom/deepalhome/mitemp/MiTempPairingState$Failed;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BlePairingState$Failed;->reason:Ljava/lang/String;

    iget-object p2, p2, Lcom/deepalhome/mitemp/MiTempPairingState$Failed;->reason:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    const-string v1, "Not found"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p2, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "No pairable device found"

    goto :goto_0

    :cond_7
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v6, 0x3e

    const-string v2, "\n"

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x2

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/deepalhome/launcher/settings/BlePairingPresentation;-><init>(Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_8
    new-instance p0, Lcom/deepalhome/launcher/settings/BlePairingPresentation;

    sget-object p1, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->SCANNING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    const/4 p2, 0x6

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/deepalhome/launcher/settings/BlePairingPresentation;-><init>(Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lkotlin/coroutines/Continuation;

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/settings/BleSettingsView;

    sget p3, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/settings/BleSettingsView;->mergeDeviceItems(Ljava/util/List;Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
