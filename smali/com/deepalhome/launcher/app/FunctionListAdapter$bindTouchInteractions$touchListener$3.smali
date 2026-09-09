.class public final Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $feedbackEnabled:Z

.field final synthetic $holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

.field final synthetic $type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field final synthetic this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/navigation/model/GridItemType;Z)V
    .locals 0

    iput-object p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iput-object p3, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$feedbackEnabled:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-static {p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$getPanelMode$p(Lcom/deepalhome/launcher/app/FunctionListAdapter;)Lcom/deepalhome/launcher/app/FunctionPanelMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {p1, v0, p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->startDrag(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z

    move-result v0

    goto :goto_2

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FAN_SPEED:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_6

    iget-boolean p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$feedbackEnabled:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playPressAnimation(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const v3, 0x7f0b0589

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    instance-of v3, p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    if-eqz v3, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->performSecondaryAction()Z

    move-result p1

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1, v1, p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->getOnEnterEditModeAndStartDragRequest()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$3;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-interface {p1, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v2

    :cond_8
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
