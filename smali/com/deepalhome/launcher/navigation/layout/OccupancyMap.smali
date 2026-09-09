.class public final Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final railOwners:[Ljava/lang/String;

.field private final schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

.field private final slotOwners:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridSchema;)V
    .locals 1

    const-string v0, "schema"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    iget v0, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;->slotOwners:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->getRailCount()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;->railOwners:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic check$default(Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;->check(Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    move-result-object p0

    return-object p0
.end method

.method private final native isAvailable(Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;Ljava/lang/String;)Z
.end method

.method public static synthetic isAvailable$default(Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/layout/OccupancyMap;->isAvailable(Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final native occupy(Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;Ljava/lang/String;)V
.end method


# virtual methods
.method public final native check(Lcom/deepalhome/launcher/navigation/model/GridItem;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
.end method

.method public final native footprintFor(Lcom/deepalhome/launcher/navigation/model/GridItem;)Lcom/deepalhome/launcher/navigation/layout/ItemFootprint;
.end method

.method public final native mark(Lcom/deepalhome/launcher/navigation/model/GridItem;)Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;
.end method

.method public final native occupiedRails()Ljava/util/Set;
.end method

.method public final native occupiedSlots()Ljava/util/Set;
.end method
