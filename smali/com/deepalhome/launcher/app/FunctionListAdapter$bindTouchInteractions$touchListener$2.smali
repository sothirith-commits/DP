.class public final Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $feedbackEnabled:Z

.field final synthetic $holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

.field final synthetic $type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field final synthetic this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/navigation/model/GridItemType;Z)V
    .locals 0

    iput-object p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$feedbackEnabled:Z

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iput-object p3, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/MotionEvent;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "event"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-static {p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$getPanelMode$p(Lcom/deepalhome/launcher/app/FunctionListAdapter;)Lcom/deepalhome/launcher/app/FunctionPanelMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$feedbackEnabled:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    iget-object p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object p2, p2, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playClickFeedback(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->getOnItemClickListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1, v0, v1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$isNormalModePrimaryActionEnabled(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$feedbackEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v0, v1, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playClickFeedback(Landroid/view/View;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1, v0, v1, p2}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$performNormalModePrimaryAction(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget-object p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$holder:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;->$type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1, p2, p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$applyBackgroundState(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
