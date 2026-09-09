.class public final Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;
    .locals 1

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;-><init>(I)V

    return-object p0
.end method

.method public final N()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;
    .locals 1

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;-><init>(I)V

    return-object p0
.end method

.method public final P()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;
    .locals 1

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;-><init>(I)V

    return-object p0
.end method

.method public final R()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;
    .locals 1

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;-><init>(I)V

    return-object p0
.end method

.method public final fromLabel(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->parseGear(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGearName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "Unknown gear"

    goto :goto_0

    :cond_0
    const-string p0, "D"

    goto :goto_0

    :cond_1
    const-string p0, "R"

    goto :goto_0

    :cond_2
    const-string p0, "N"

    goto :goto_0

    :cond_3
    const-string p0, "P"

    :goto_0
    return-object p0
.end method