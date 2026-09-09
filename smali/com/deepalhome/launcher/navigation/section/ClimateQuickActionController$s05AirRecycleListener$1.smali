.class public final Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getType$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->AIR_RECYCLE:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s05AirRecycleListener state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ClimateQuickAction"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[S05-UI] s05AirRecycleListener state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p1}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    const-string v1, "virtual_callback"

    invoke-static {p1, v0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$shouldIgnoreS05AirRecycleState(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getInnerRecycleEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z

    move-result p1

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$setInnerRecycleEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$clearPendingS05AirRecycleTargetIfMatched(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$render(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$clearPendingS05AirRecycleTargetIfMatched(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
