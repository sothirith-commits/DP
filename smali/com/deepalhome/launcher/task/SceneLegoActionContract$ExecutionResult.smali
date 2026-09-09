.class public final enum Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

.field public static final enum SCENE_MISSING:Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

.field public static final enum SUCCESS:Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;->SUCCESS:Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

    new-instance v1, Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

    const-string v2, "SCENE_MISSING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;->SCENE_MISSING:Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

    filled-new-array {v0, v1}, [Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;->$VALUES:[Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static native valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;
.end method

.method public static native values()[Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;
.end method
