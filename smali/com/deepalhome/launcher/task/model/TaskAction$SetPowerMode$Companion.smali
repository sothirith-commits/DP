.class public final Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;
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

    invoke-direct {p0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getModeName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "Unknown mode"

    goto :goto_0

    :cond_0
    const-string p0, "Mountain mode"

    goto :goto_0

    :cond_1
    const-string p0, "Highway mode"

    goto :goto_0

    :cond_2
    const-string p0, "City mode"

    :goto_0
    return-object p0
.end method

.method public final getPureElectricMissingSceneDialog()Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public final getPureElectricSceneRequest()Lcom/deepalhome/launcher/task/SceneLegoActionRequest;
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;->getPureElectricMissingSceneDialog()Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/task/SceneLegoActionRequest;-><init>(Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;)V

    return-object v0
.end method