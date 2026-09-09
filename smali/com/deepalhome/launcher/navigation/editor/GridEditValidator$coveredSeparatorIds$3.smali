.class public final Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $railIndices:Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Lkotlin/ranges/IntRange;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$3;->$railIndices:Lkotlin/ranges/IntRange;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/model/GridItem;->placement:Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    iget-object v0, p1, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->RAIL:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$3;->$railIndices:Lkotlin/ranges/IntRange;

    iget v0, p0, Lkotlin/ranges/IntProgression;->first:I

    iget p1, p1, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    if-gt v0, p1, :cond_0

    iget p0, p0, Lkotlin/ranges/IntProgression;->last:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
