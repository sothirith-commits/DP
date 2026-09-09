.class public final Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;
.super Lcom/deepalhome/launcher/task/model/TaskCondition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonPressType"
.end annotation


# instance fields
.field private final isLongPress:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "button_press_long"

    goto :goto_0

    :cond_0
    const-string v0, "button_press_short"

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "Long press"

    goto :goto_1

    :cond_1
    const-string v1, "Short press"

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/deepalhome/launcher/task/model/TaskCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;ZILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->copy(Z)Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress:Z

    return p0
.end method

.method public final copy(Z)Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;-><init>(Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskCondition;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final isLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ButtonPressType(isLongPress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
