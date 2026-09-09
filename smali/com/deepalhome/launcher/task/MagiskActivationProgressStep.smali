.class public final enum Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

.field public static final enum CheckRoot:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

.field public static final enum CheckSu:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

.field public static final enum Completed:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

.field public static final enum Failed:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

.field public static final enum FetchScript:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

.field public static final enum PrepareWirelessDebug:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

.field public static final enum RunScript:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v1, "CheckRoot"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->CheckRoot:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    new-instance v1, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v2, "PrepareWirelessDebug"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->PrepareWirelessDebug:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    new-instance v2, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v3, "CheckSu"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->CheckSu:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    new-instance v3, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v4, "FetchScript"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->FetchScript:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    new-instance v4, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v5, "RunScript"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->RunScript:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    new-instance v5, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v6, "Completed"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->Completed:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    new-instance v6, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v7, "Failed"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->Failed:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    filled-new-array/range {v0 .. v6}, [Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->$VALUES:[Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->$VALUES:[Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    return-object v0
.end method
