.class public final Lcom/deepalhome/launcher/config/UserConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/config/UserConfig$Companion;-><init>()V

    return-void
.end method

.method public static defaultFloatingBallGestureActions()Ljava/util/HashMap;
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "single_tap"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "double_tap"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "long_press"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
