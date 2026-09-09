.class public final Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;
.super Lcom/deepalhome/launcher/task/model/TaskTrigger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GearChanged"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

.field public static final GEAR_D:I = 0x3

.field public static final GEAR_N:I = 0x1

.field public static final GEAR_P:I = 0x0

.field public static final GEAR_R:I = 0x2


# instance fields
.field private final gear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const-string v0, "gear_changed_"

    invoke-static {v0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gear change"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/deepalhome/launcher/task/model/TaskTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->gear:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;IILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->gear:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->copy(I)Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->gear:I

    return p0
.end method

.method public final copy(I)Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->gear:I

    iget p1, p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->gear:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Gear change - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->gear:I

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->getGearName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getGear()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->gear:I

    return p0
.end method

.method public getPickerDisplayName()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->gear:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
