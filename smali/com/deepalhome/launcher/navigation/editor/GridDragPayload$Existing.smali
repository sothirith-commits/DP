.class public final Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Existing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing$WhenMappings;
    }
.end annotation


# instance fields
.field private final item:Lcom/deepalhome/launcher/navigation/model/GridItem;

.field private final source:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

.field private final type:Lcom/deepalhome/launcher/navigation/model/GridItemType;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;)V
    .locals 1

    const-string v0, "item"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "source"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;->source:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->NAV_BAR:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;->item:Lcom/deepalhome/launcher/navigation/model/GridItem;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;->source:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;->copy(Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;)Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public native allowOccupiedReplacement()Z
.end method

.method public native applyDrop(Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method public final native component1()Lcom/deepalhome/launcher/navigation/model/GridItem;
.end method

.method public final native component2()Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;
.end method

.method public final native copy(Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;)Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getItem()Lcom/deepalhome/launcher/navigation/model/GridItem;
.end method

.method public final native getSource()Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;
.end method

.method public native getType()Lcom/deepalhome/launcher/navigation/model/GridItemType;
.end method

.method public native hashCode()I
.end method

.method public native ignoredItemId()Ljava/lang/String;
.end method

.method public native itemAt(Lcom/deepalhome/launcher/navigation/model/GridSchema;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/model/GridItem;
.end method

.method public native toString()Ljava/lang/String;
.end method
