.class public final Lcom/deepalhome/launcher/settings/RootActionOptionSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final action:Lkotlin/jvm/functions/Function0;

.field public final bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

.field public final iconRes:I

.field public final isVisible:Lkotlin/jvm/functions/Function0;

.field public final key:Ljava/lang/String;

.field public final submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

.field public final supportedSurfacesMask:I

.field public final tintIcon:Z

.field public final title:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V
    .locals 2

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    sget-object p5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec$1;->INSTANCE:Lcom/deepalhome/launcher/settings/RootActionOptionSpec$1;

    :cond_0
    and-int/lit8 v0, p9, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p6, v1

    :cond_1
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2

    move-object p7, v1

    :cond_2
    and-int/lit16 v0, p9, 0x80

    if-eqz v0, :cond_3

    move-object p8, v1

    :cond_3
    and-int/lit16 p9, p9, 0x100

    if-eqz p9, :cond_4

    const/4 p9, 0x1

    goto :goto_0

    :cond_4
    const/4 p9, 0x0

    :goto_0
    const-string v0, "key"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "title"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isVisible"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->key:Ljava/lang/String;

    iput p2, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->iconRes:I

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->title:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->supportedSurfacesMask:I

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->isVisible:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->action:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    iput-boolean p9, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->tintIcon:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    iget-object v1, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->iconRes:I

    iget v3, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->iconRes:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->title:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->title:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->supportedSurfacesMask:I

    iget v3, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->supportedSurfacesMask:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->isVisible:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->isVisible:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->action:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->action:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->tintIcon:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->tintIcon:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->iconRes:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->title:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->supportedSurfacesMask:I

    invoke-static {v0, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->isVisible:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->action:Lkotlin/jvm/functions/Function0;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->tintIcon:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    :cond_3
    add-int/2addr v2, p0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RootActionOptionSpec(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->iconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->title:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedSurfacesMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->supportedSurfacesMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->isVisible:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->action:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyControlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", submenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tintIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->tintIcon:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
