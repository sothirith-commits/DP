.class public final Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/editor/GridEditorSession$Companion;


# instance fields
.field private final baselineConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

.field private final validator:Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;

.field private workingConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->Companion:Lcom/deepalhome/launcher/navigation/editor/GridEditorSession$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->baselineConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->validator:Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->workingConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;-><init>(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;)V

    return-void
.end method

.method public static synthetic addTemplate$default(Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/model/GridPlacement;ZILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    new-instance p2, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    invoke-direct {p2, v0, v0, v0}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->addTemplate(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/model/GridPlacement;Z)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addTemplate(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/model/GridPlacement;Z)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
    .locals 9

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payload"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->validator:Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->workingConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-virtual {p3, v0, p1, p2}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator;->firstAvailablePlacement(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object p3

    if-nez p3, :cond_0

    new-instance p1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->workingConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    sget-object p2, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->OUT_OF_BOUNDS:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p0, p2}, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;-><init>(ZLcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;)V

    return-object p1

    :cond_0
    move-object v2, p3

    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->workingConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iget-object v5, p3, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    invoke-virtual {v3, p1, p2}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createId(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;)Ljava/lang/String;

    move-result-object v8

    iget v6, v2, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->createItem(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridSchema;ILcom/deepalhome/launcher/navigation/model/GridItemPayload;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v5, 0x3b

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/navigation/model/GridItem;->copy$default(Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridPlacement;ZZI)Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object p1

    new-instance p2, Lcom/deepalhome/launcher/navigation/editor/GridEditAction$AddItem;

    invoke-direct {p2, p1, p4}, Lcom/deepalhome/launcher/navigation/editor/GridEditAction$AddItem;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItem;Z)V

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;->apply(Lcom/deepalhome/launcher/navigation/editor/GridEditAction;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    move-result-object p0

    return-object p0
.end method

.method public final native apply(Lcom/deepalhome/launcher/navigation/editor/GridEditAction;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method public final native commit()Lcom/deepalhome/launcher/navigation/editor/GridCommitResult;
.end method

.method public final native discard()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
.end method

.method public final native getWorkingConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
.end method

.method public final native moveItem(Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method public final native removeItem(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method public final native toggleApp(Lcom/deepalhome/launcher/app/App;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method public final native toggleItemType(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method
