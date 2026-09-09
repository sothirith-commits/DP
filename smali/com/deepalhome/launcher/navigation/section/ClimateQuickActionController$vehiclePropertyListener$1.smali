.class public final Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$vehiclePropertyListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const-string v0, "vehicleProperty"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    iget-object v1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->canonicalTopic:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$matchesTopic(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$applyVehicleProperty(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$render(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
