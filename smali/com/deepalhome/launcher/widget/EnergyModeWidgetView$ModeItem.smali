.class public final Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final action:Lcom/deepalhome/launcher/task/model/TaskAction;

.field public final iconRes:I

.field public final labelRes:I

.field public final mode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/task/model/TaskAction;Ljava/lang/Integer;II)V
    .locals 1

    const-string v0, "action"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->mode:Ljava/lang/Integer;

    iput p3, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->iconRes:I

    iput p4, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->labelRes:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    iget-object v1, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->mode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->mode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->iconRes:I

    iget v3, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->iconRes:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->labelRes:I

    iget p1, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->labelRes:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->mode:Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->iconRes:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->labelRes:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModeItem(action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->mode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->iconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", labelRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->labelRes:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
