.class public final Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;
.super Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggerConditionConflict"
.end annotation


# instance fields
.field private final conditionName:Ljava/lang/String;

.field private final triggerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "triggerName"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "conditionName"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->triggerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->conditionName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->triggerName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->conditionName:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->triggerName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->conditionName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;
    .locals 0

    const-string p0, "triggerName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "conditionName"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->triggerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->triggerName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->conditionName:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->conditionName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConditionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->conditionName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTriggerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->triggerName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->triggerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->conditionName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TriggerConditionConflict(triggerName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->triggerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", conditionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->conditionName:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
