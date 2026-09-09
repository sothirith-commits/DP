.class public final enum Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

.field public static final enum ILLEGAL_TARGET:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

.field public static final enum OCCUPIED:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

.field public static final enum OUT_OF_BOUNDS:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

.field public static final enum VALID:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    const-string v1, "VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->VALID:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    new-instance v1, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    const-string v2, "OCCUPIED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->OCCUPIED:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    new-instance v2, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    const-string v3, "OUT_OF_BOUNDS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->OUT_OF_BOUNDS:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    new-instance v3, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    const-string v4, "ILLEGAL_TARGET"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->ILLEGAL_TARGET:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->$VALUES:[Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->$VALUES:[Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    return-object v0
.end method
