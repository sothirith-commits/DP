.class public final Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;
.super Lcom/deepalhome/launcher/task/model/TaskAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControlAirCondition"
.end annotation


# instance fields
.field private final command:Lcom/deepalhome/launcher/hvac/HvacCommand;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V
    .locals 3

    const-string v0, "command"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/hvac/HvacCommand;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "control_air_condition"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->command:Lcom/deepalhome/launcher/hvac/HvacCommand;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;Lcom/deepalhome/launcher/hvac/HvacCommand;ILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->command:Lcom/deepalhome/launcher/hvac/HvacCommand;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->copy(Lcom/deepalhome/launcher/hvac/HvacCommand;)Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/deepalhome/launcher/hvac/HvacCommand;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->command:Lcom/deepalhome/launcher/hvac/HvacCommand;

    return-object p0
.end method

.method public final copy(Lcom/deepalhome/launcher/hvac/HvacCommand;)Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;
    .locals 0

    const-string p0, "command"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->command:Lcom/deepalhome/launcher/hvac/HvacCommand;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->command:Lcom/deepalhome/launcher/hvac/HvacCommand;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCommand()Lcom/deepalhome/launcher/hvac/HvacCommand;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->command:Lcom/deepalhome/launcher/hvac/HvacCommand;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->command:Lcom/deepalhome/launcher/hvac/HvacCommand;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlAirCondition(command="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->command:Lcom/deepalhome/launcher/hvac/HvacCommand;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
