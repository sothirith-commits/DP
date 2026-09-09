.class public final Lcom/deepalhome/launcher/event/EventAction$ShowMenu;
.super Lcom/deepalhome/launcher/event/EventAction;
.source "SourceFile"


# instance fields
.field public final menuType:Lcom/deepalhome/launcher/event/MenuType;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/event/MenuType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/event/EventAction;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;

    iget-object p0, p0, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    iget-object p1, p1, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShowMenu(menuType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
