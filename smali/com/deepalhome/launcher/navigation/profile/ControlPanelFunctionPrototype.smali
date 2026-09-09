.class public final Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

.field public final supportedBranches:Ljava/util/Set;

.field public final supportedPowertrains:Ljava/util/Set;

.field public final type:Lcom/deepalhome/launcher/navigation/model/GridItemType;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayName"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "supportedBranches"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->displayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedBranches:Ljava/util/Set;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedPowertrains:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->displayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedBranches:Ljava/util/Set;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedBranches:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedPowertrains:Ljava/util/Set;

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedPowertrains:Ljava/util/Set;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->displayName:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedBranches:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedPowertrains:Ljava/util/Set;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlPanelFunctionPrototype(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", palette="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->palette:Lcom/deepalhome/launcher/navigation/profile/ControlPanelPaletteMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedBranches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedBranches:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedPowertrains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototype;->supportedPowertrains:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
