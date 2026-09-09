.class public final Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;
.super Lcom/deepalhome/launcher/ble/menu/MenuItem;
.source "SourceFile"


# instance fields
.field public final action:Lcom/deepalhome/launcher/task/model/TaskAction;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final id:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V
    .locals 1

    const-string v0, "id"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "title"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/ble/menu/MenuItem;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    iget-object v1, p1, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    iget-object p1, p1, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->title:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
