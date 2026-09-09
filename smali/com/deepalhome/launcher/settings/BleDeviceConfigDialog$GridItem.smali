.class public final Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final iconRes:I

.field public final name:Ljava/lang/String;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final tintIcon:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->iconRes:I

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->name:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->tintIcon:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;

    iget v1, p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->iconRes:I

    iget v3, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->iconRes:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->tintIcon:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->tintIcon:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->onClick:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->iconRes:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->name:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v2, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->tintIcon:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GridItem(iconRes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->iconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tintIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->tintIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
