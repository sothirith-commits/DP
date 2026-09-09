.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $conditionLogicAndBtn:Landroid/widget/Button;

.field final synthetic $conditionLogicContainer:Landroid/widget/LinearLayout;

.field final synthetic $conditionLogicOrBtn:Landroid/widget/Button;

.field final synthetic $conditionsHeader:Landroid/view/View;

.field final synthetic $conditionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V
    .locals 0

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionsHeader:Landroid/view/View;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionLogicContainer:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionLogicAndBtn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionLogicOrBtn:Landroid/widget/Button;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition;

    const-string v0, "condition"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p1, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditionsAdapter:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;

    if-eqz v0, :cond_0

    iput p1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->pendingInsertPosition:I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionsHeader:Landroid/view/View;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionLogicContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionLogicAndBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;->$conditionLogicOrBtn:Landroid/widget/Button;

    invoke-static/range {v1 .. v6}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->setupViews$updateConditionLogicUI(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
