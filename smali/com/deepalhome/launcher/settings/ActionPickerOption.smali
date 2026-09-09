.class public final Lcom/deepalhome/launcher/settings/ActionPickerOption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final action:Lcom/deepalhome/launcher/task/model/TaskAction;

.field public final bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

.field public final iconRes:I

.field public final key:Ljava/lang/String;

.field public final menuType:Lcom/deepalhome/launcher/event/MenuType;

.field public final submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

.field public final tintIcon:Z

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/event/MenuType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;ZI)V
    .locals 2

    and-int/lit8 v0, p9, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p4, v1

    :cond_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    move-object p5, v1

    :cond_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    move-object p6, v1

    :cond_2
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_3

    move-object p7, v1

    :cond_3
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_4

    const/4 p8, 0x1

    :cond_4
    const-string p9, "key"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p9, "title"

    invoke-static {p9, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->key:Ljava/lang/String;

    iput p2, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->iconRes:I

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    iput-boolean p8, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->tintIcon:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    iget-object v1, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->iconRes:I

    iget v3, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->iconRes:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->tintIcon:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->tintIcon:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->iconRes:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->title:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->tintIcon:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    :cond_4
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActionPickerOption(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->iconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyControlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", menuType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", submenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tintIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;->tintIcon:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
