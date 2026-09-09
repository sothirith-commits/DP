.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;
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

.field final synthetic $triggerIconIv:Landroid/widget/ImageView;

.field final synthetic $triggerNameTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$triggerIconIv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$triggerNameTv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionsHeader:Landroid/view/View;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionLogicContainer:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionLogicAndBtn:Landroid/widget/Button;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionLogicOrBtn:Landroid/widget/Button;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskTrigger;

    const-string v0, "trigger"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$triggerIconIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$triggerNameTv:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->setupViews$updateTriggerDisplay(Landroid/widget/ImageView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionsHeader:Landroid/view/View;

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionLogicContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionLogicAndBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;->$conditionLogicOrBtn:Landroid/widget/Button;

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->setupViews$updateConditionLogicUI(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
