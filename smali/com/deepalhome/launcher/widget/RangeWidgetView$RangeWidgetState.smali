.class public final Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final electricMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

.field public final fuelMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

.field public final isPureElectric:Z

.field public final summaryLabelRes:I

.field public final summaryValueKm:I


# direct methods
.method public constructor <init>(ZIILcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->isPureElectric:Z

    iput p2, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryLabelRes:I

    iput p3, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryValueKm:I

    iput-object p4, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->electricMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    iput-object p5, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->fuelMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;

    iget-boolean v1, p1, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->isPureElectric:Z

    iget-boolean v3, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->isPureElectric:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryLabelRes:I

    iget v3, p1, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryLabelRes:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryValueKm:I

    iget v3, p1, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryValueKm:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->electricMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    iget-object v3, p1, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->electricMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->fuelMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    iget-object p1, p1, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->fuelMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->isPureElectric:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryLabelRes:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryValueKm:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->electricMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->fuelMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RangeWidgetState(isPureElectric="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->isPureElectric:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", summaryLabelRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryLabelRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", summaryValueKm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryValueKm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", electricMetric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->electricMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fuelMetric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->fuelMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
