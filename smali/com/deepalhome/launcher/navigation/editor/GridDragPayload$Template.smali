.class public final Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;
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
    name = "Template"
.end annotation


# instance fields
.field private final payload:Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

.field private final source:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;

.field private final type:Lcom/deepalhome/launcher/navigation/model/GridItemType;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;)V
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payload"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "source"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;->payload:Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;->source:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    new-instance p2, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    const/4 p5, 0x0

    invoke-direct {p2, p5, p5, p5}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;->APP_CENTER:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;ILjava/lang/Object;)Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;->payload:Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;->source:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;->copy(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;)Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public native allowOccupiedReplacement()Z
.end method

.method public native applyDrop(Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method public final native component1()Lcom/deepalhome/launcher/navigation/model/GridItemType;
.end method

.method public final native component2()Lcom/deepalhome/launcher/navigation/model/GridItemPayload;
.end method

.method public final native component3()Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;
.end method

.method public final copy(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;)Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;
    .locals 0

    const-string p0, "type"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "payload"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "source"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;)V

    return-object p0
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getPayload()Lcom/deepalhome/launcher/navigation/model/GridItemPayload;
.end method

.method public final native getSource()Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;
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
