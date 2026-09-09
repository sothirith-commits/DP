.class public final Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;
.super Lcom/deepalhome/launcher/task/model/TaskAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetPowerMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;

.field public static final MODE_CITY:I = 0x0

.field public static final MODE_HIGHWAY:I = 0x1

.field public static final MODE_MOUNTAIN:I = 0x2

.field public static final PURE_ELECTRIC_ACTION_TYPE:Ljava/lang/String; = "pure_electric_mode"

.field public static final PURE_ELECTRIC_DISPLAY_NAME:Ljava/lang/String; = "Forced Pure EV"

.field public static final PURE_ELECTRIC_GUIDE_MESSAGE:Ljava/lang/String; = "Please first create a Lego in \"Scene Lego\" using the reference image"

.field public static final PURE_ELECTRIC_GUIDE_TITLE:Ljava/lang/String; = "Forced Pure EV Usage Notice"

.field public static final PURE_ELECTRIC_SCENE_NAME:Ljava/lang/String; = "Pure EV Mode"


# instance fields
.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->Companion:Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const-string v0, "Set energy mode"

    const/4 v1, 0x0

    const-string v2, "set_power_mode"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->mode:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;IILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->mode:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->copy(I)Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->mode:I

    return p0
.end method

.method public final copy(I)Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->mode:I

    iget p1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->mode:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMode()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->mode:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->mode:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetPowerMode(mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->mode:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method