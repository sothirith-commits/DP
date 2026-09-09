.class public final Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final actionMode:I

.field public final iconRes:I

.field public final labelRes:I

.field public final propertyValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->actionMode:I

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->propertyValue:Ljava/lang/String;

    iput p3, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->iconRes:I

    iput p4, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->labelRes:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    iget v1, p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->actionMode:I

    iget v3, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->actionMode:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->propertyValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->propertyValue:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->iconRes:I

    iget v3, p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->iconRes:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->labelRes:I

    iget p1, p1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->labelRes:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->actionMode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->propertyValue:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->iconRes:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->labelRes:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModeItem(actionMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->actionMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", propertyValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->propertyValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->iconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", labelRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->labelRes:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
