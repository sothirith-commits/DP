.class public final Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $dragContent:Landroid/view/View;

.field final synthetic $payload:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;

.field final synthetic $wrapper:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;Landroid/view/View;Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$wrapper:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$payload:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$dragContent:Landroid/view/View;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->this$0:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$wrapper:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/content/ClipData;

    new-instance v1, Landroid/content/ClipDescription;

    const-string v2, "text/plain"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "bottom_nav_item"

    invoke-direct {v1, v3, v2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v2, Landroid/content/ClipData$Item;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$payload:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;

    instance-of v4, v3, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;->getItem()Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v3

    iget-object v3, v3, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v4, v3, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;->getType()Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getKey()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1, v2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$dragContent:Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$payload:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;

    const/16 v3, 0x200

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$payload:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;

    instance-of v0, v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->this$0:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$wrapper:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$3;->$dragContent:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->access$prepareDragSource(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;Landroid/view/View;)V

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
